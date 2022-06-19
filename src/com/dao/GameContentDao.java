package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dto.GameContentDto;


public class GameContentDao {
	private Connection getConnection()  throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource) envCtx.lookup("jdbc/projectdb");
		Connection con = ds.getConnection();
		return con;
	}

	public GameContentDto select(String gameId) {
		GameContentDto dto = new GameContentDto();
		String sql = "SELECT g.gameid, i.itemName, i.f1name, i.f2name, "
				+ "g.gameName, g.genre, g.youtubeLink, g.gameDate, g.ration, g.price, g.gameExplain, "
				+ "m.CPU AS mCpu, m.graphic AS mGraphic, m.ram AS mRam, m.DISK AS mDisk, "
				+ "r.CPU AS rCpu, r.graphic AS rGraphic, r.ram AS rRam, r.DISK AS rDisk "
				+ "FROM game g JOIN gameimg i ON g.gameid = i.gameid  "
				+ "JOIN minimum m ON i.gameid = m.gameid "
				+ "JOIN recommend r ON m.gameid = r.gameid "
				+ "WHERE g.gameid="+gameId+";";
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			while(rs.next()) {
				dto.setGameId(rs.getInt("gameId"));
				dto.setItemSrc(rs.getString("itemName"));
				dto.setF1Src(rs.getString("f1name"));
				dto.setF2Src(rs.getString("f2name"));
				dto.setName(rs.getString("gameName"));
				dto.setGenre(rs.getString("genre"));
				dto.setLink(rs.getString("youtubeLink"));
				dto.setDate(rs.getString("gameDate"));
				dto.setRation(rs.getString("ration"));
				String price = String.format("%,d", rs.getInt("price"));
				dto.setPrice(price);
				dto.setContent(rs.getString("gameExplain"));
				dto.setmCpu(rs.getString("mCpu"));
				dto.setmGpu(rs.getString("mGraphic"));
				dto.setmRam(rs.getString("mRam"));
				dto.setmDisk(rs.getString("mDisk"));
				dto.setsCpu(rs.getString("rCpu"));
				dto.setsGpu(rs.getString("rGraphic"));
				dto.setsRam(rs.getString("rRam"));
				dto.setsDisk(rs.getString("rDisk"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

}
