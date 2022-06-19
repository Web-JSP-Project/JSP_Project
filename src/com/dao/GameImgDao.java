package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dto.GameImgDto;


public class GameImgDao {
	private Connection getConnection()  throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource) envCtx.lookup("jdbc/projectdb");
		Connection con = ds.getConnection();
		return con;
	}

	public ArrayList<GameImgDto> select() {
		ArrayList<GameImgDto> dtos = new ArrayList<GameImgDto>();
		String sql = "SELECT * FROM game;";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			while(rs.next()) {
				GameImgDto dto = new GameImgDto();
				dto.setImgId(rs.getInt("gameId"));
				dto.setGameId(rs.getInt("gameName"));
				dto.setMainName(rs.getString("gameExplain"));
				dto.setBannerName(rs.getString("ration"));
				dto.setListName(rs.getString("genre"));
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}

}
