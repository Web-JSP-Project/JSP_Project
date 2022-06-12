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
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String nickName = request.getParameter("nickName");
		String email = request.getParameter("email");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String birth = year+"-"+month+"-"+day;
		
		UserDto dto = new UserDto(id, pwd, nickName, email, birth);
		UserDao dao = new UserDao();
		dao.insert(dto);
		
		
	}

}
