package com.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dto.UserDto;

public class UserDao {
	private Connection getConnection()  throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource) envCtx.lookup("jdbc/projectdb");
		Connection con = ds.getConnection();
		return con;
	}
	public void insert(UserDto dto) {
		String sql = "INSERT INTO user (id,pwd,nickName,email,birth) VALUES(?,?,?,?,?);";
		try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		){
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getNickName());
			pstmt.setString(4, dto.getEmail());
			Date d = Date.valueOf(dto.getBirth());
			pstmt.setDate(5, d);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String selectNickName(String id, String pwd) {
		String sql = "SELECT * FROM user WHERE id = '"+id+"' AND pwd='"+pwd+"';";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			if(rs.next()) return rs.getString("nickName"); 
			else return "";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	public String selectImg(String id, String pwd) {
		String sql = "SELECT * FROM user WHERE id = '"+id+"' AND pwd='"+pwd+"';";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			if(rs.next()) return rs.getString("profileImg"); 
			else return "";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	public boolean idCheack(String id) {
		String sql = "SELECT * FROM user WHERE id = '"+id+"';";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			if(rs.next()) return true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean nickNameCheack(String nickName) {
		String sql = "SELECT * FROM user WHERE nickName = '"+nickName+"';";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			if(rs.next()) return true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
