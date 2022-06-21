package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dto.GameItemDto;
import com.dto.LibraryDto;

public class LibraryDao {
	private Connection getConnection()  throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource) envCtx.lookup("jdbc/projectdb");
		Connection con = ds.getConnection();
		return con;
	}

	public ArrayList<LibraryDto> selectAll(String nickName) {
		ArrayList<LibraryDto> dtos = new ArrayList<LibraryDto>();
		String sql = "SELECT g.gameid, i.itemName, g.gameName, g.price "
				+ "FROM game g "
				+ "JOIN gameimg i ON g.gameid = i.gameid "
				+ "WHERE g.gameid IN( "
				+ "SELECT gameid "
				+ "FROM library "
				+ "WHERE userid = ( "
				+ "SELECT id FROM user "
				+ "WHERE nickName ='"+nickName+"'));";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			while(rs.next()) {
				LibraryDto dto = new LibraryDto();
				dto.setGameId(rs.getInt("gameId"));
				dto.setGameName(rs.getString("gameName"));
				dto.setImg(rs.getString("itemName"));
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}

}
