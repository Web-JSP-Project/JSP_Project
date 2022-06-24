package com.command.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.UserCommand;
import com.dao.UserDao;

public class UserSelectCommand implements UserCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 구현
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		UserDao dao = new UserDao();
		String nickName = dao.selectNickName(id, pwd);
		String img = dao.selectImg(id, pwd);
		System.out.println(nickName);
		System.out.println(img);
		//로그인 정보 세션에 저장
		if(!nickName.equals("")) {
			HttpSession session = request.getSession();
			session.setAttribute("nickName", nickName);
			session.setAttribute("profileImg",img);
		}
	}

}
