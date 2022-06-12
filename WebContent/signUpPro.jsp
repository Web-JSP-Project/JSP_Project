<%@page import="com.dao.UserDao"%>
<%@page import="com.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String nickName = request.getParameter("nickName");
	String email = request.getParameter("email");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String birth = year+"-"+month+"-"+day;
	System.out.println(birth);
	UserDto dto = new UserDto(id, pwd, nickName, email, birth);
	UserDao dao = new UserDao();
	dao.insert(dto);
%>