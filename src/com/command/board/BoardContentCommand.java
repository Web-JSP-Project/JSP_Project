package com.command.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.BoardCommand;
import com.dao.FreeBoardDao;
import com.dto.BoardDto;

public class BoardContentCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 게시판 상세 구현
		request.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("boardId"));
		FreeBoardDao dao = new FreeBoardDao();
		BoardDto dto = dao.select(id);
		request.setAttribute("dto", dto);
	}

}
