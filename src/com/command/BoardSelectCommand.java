package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.FreeBoardDao;
import com.dto.BoardDto;

public class BoardSelectCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FreeBoardDao dao = new FreeBoardDao();
		ArrayList<BoardDto> dtos = dao.selectAll();
		request.setAttribute("dtos", dtos);

	}

}
