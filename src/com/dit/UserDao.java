package com.dit;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

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
}
