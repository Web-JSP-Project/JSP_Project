package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dto.GameDto;

public class GameDao {
	private Connection getConnection()  throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource) envCtx.lookup("jdbc/projectdb");
		Connection con = ds.getConnection();
		return con;
	}

	public ArrayList<GameDto> select() {
		ArrayList<GameDto> dtos = new ArrayList<GameDto>();
		String sql = "SELECT * FROM game;";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			while(rs.next()) {
				GameDto dto = new GameDto();
				dto.setGameId(rs.getInt("gameId"));
				dto.setGameName(rs.getString("gameName"));
				dto.setGameExplain(rs.getString("gameExplain"));
				dto.setRation(rs.getString("ration"));
				dto.setGenre(rs.getString("genre"));
				dto.setPrice(rs.getInt("price"));
				dto.setGameDate(rs.getDate("gameDate"));
				dto.setYoutubeLink(rs.getString("youtubeLink"));
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}

}
