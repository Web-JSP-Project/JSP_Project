package com.command.game;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.GameContentCommand;
import com.dao.GameContentDao;
import com.dto.GameContentDto;

public class GameContentSelectCommand implements GameContentCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 게임 상세 내용 구현
		String gameId = request.getParameter("gameId");
		GameContentDao dao = new GameContentDao();
		GameContentDto dto = dao.select(gameId);

		request.setAttribute("dto", dto);
	}

}
