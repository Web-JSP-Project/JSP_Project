package com.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.dao.UserDao;

public class UserSelectCommand implements UserCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("username");
		String pwd = request.getParameter("password");
		UserDao dao = new UserDao();
		String nickName = dao.select(id, pwd);
		
		if(!nickName.equals("")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("nickName", nickName);
			session.setAttribute("id", id);
		}
	}

}
