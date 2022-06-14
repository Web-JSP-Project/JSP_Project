<%@page import="com.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("username");
	String pwd = request.getParameter("password");
	
	UserDao dao = new UserDao();
	String nickName = dao.select(id, pwd);
	if(!nickName.equals("")){
		session.setAttribute("id", id);
		session.setAttribute("nickName", nickName);
		response.sendRedirect("Home.jsp");
	}
	else{
		response.sendRedirect("signIn.jsp");
	}
%>