package com.command.game;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.GameItemCommand;
import com.dao.GameItemDao;
import com.dto.GameItemDto;

public class GameItemSelectAllCommand implements GameItemCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 게임 목록 구현
		GameItemDao dao = new GameItemDao();
		ArrayList<GameItemDto> dtos = dao.selectAll();
		
		request.setAttribute("dtos", dtos);
		
	}

}
