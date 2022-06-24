package com.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dto.BoardDto;
import com.dto.UserDto;

public class FreeBoardDao {
	private Connection getConnection()  throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource) envCtx.lookup("jdbc/projectdb");
		Connection con = ds.getConnection();
		return con;
	}
	public void insert(BoardDto dto) {
		//자유게시판 추가
		String sql = "INSERT INTO freeboard(title, content, userid) VALUES(?,?,?);";
		try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		){
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getUserId());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<BoardDto> selectAll() {
		//자유게시판 전부 검색
		ArrayList<BoardDto> dtos = new ArrayList<BoardDto>();
		String sql = "SELECT b.freeBoardid, b.title, b.content, b.hit, b.freeBoardDay, u.nickName"
					+" FROM freeboard b JOIN user u ON b.userid = u.id;";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			while(rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setBoardId(rs.getInt("freeBoardid"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setDay(rs.getTimestamp("freeBoardDay"));
				dto.setHit(rs.getInt("hit"));
				dto.setUserId(rs.getString("nickName"));
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	public BoardDto select(int boardId) {
		// 자유게시판 하나 검색
		BoardDto dto = new BoardDto();
		String sql = "SELECT b.freeBoardid, b.title, b.content, b.hit, b.freeBoardDay, u.nickName "
				+ "FROM freeboard b JOIN user u ON b.userid = u.id "
				+ "where freeBoardid='"+boardId+"';";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			if(rs.next()) {
				dto.setBoardId(rs.getInt("freeBoardid"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setDay(rs.getTimestamp("freeBoardDay"));
				dto.setHit(rs.getInt("hit"));
				dto.setUserId(rs.getString("nickName"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	public void delete(int boardId) {
		//자유게시판 삭제
		String sql = "delete FreeBoard where freeBoardid = ?;";
		try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		){
			pstmt.setInt(1, boardId);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void update(int boardId, String title, String content) {
		
	}

}
