package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dto.RecommendDto;

public class RecommendDao {
	private Connection getConnection()  throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource) envCtx.lookup("jdbc/projectdb");
		Connection con = ds.getConnection();
		return con;
	}

	public ArrayList<RecommendDto> select() {
		ArrayList<RecommendDto> dtos = new ArrayList<RecommendDto>();
		String sql = "SELECT * FROM recommend;";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			while(rs.next()) {
				RecommendDto dto = new RecommendDto();
				dto.setGameid(rs.getInt("gameid"));
				dto.setCpu(rs.getString("cpu"));
				dto.setGraphic(rs.getString("graphic"));
				dto.setRam(rs.getString("ram"));
				dto.setDisk(rs.getString("disk"));
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}

}
