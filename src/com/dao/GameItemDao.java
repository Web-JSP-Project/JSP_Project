package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dto.GameItemDto;


public class GameItemDao {
	private Connection getConnection()  throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource) envCtx.lookup("jdbc/projectdb");
		Connection con = ds.getConnection();
		return con;
	}

	public ArrayList<GameItemDto> selectAll() {
		// 모든게임 검색
		ArrayList<GameItemDto> dtos = new ArrayList<GameItemDto>();
		String sql = "SELECT g.gameid, i.itemName, g.gameName, g.price "
				+ "FROM game g JOIN gameimg i ON g.gameid = i.gameid;";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			while(rs.next()) {
				GameItemDto dto = new GameItemDto();
				dto.setGameId(rs.getInt("gameId"));
				dto.setImg(rs.getString("itemName"));
				dto.setTitle(rs.getString("gameName"));
				String price = String.format("%,d", rs.getInt("price"));
				dto.setPrice(price);
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}

}
