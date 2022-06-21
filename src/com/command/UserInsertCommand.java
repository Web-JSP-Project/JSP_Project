package com.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dto.UserDto;

public class UserInsertCommand implements UserCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwdCheck = request.getParameter("pwdCheck");
		String nickName = request.getParameter("nickName");
		String eMail = request.getParameter("eMail");
		String birthday = request.getParameter("birthday");

		UserDao dao = new UserDao();
		if(pwd != pwdCheck) {
			request.setAttribute("error", 1);
		}
		if(dao.idCheack(id)) {
			request.setAttribute("error", 2);
		}
		if(dao.nickNameCheack(nickName)) {
			request.setAttribute("error", 3);
		}
		UserDto dto = new UserDto(id,pwd,nickName,nickName,birthday);
		dao.insert(dto);
	}

}
