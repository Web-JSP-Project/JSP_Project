package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.GameDao;
import com.dto.GameDto;

public class GameSelectCommand implements GameCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GameDao dao = new GameDao();
		ArrayList<GameDto> dtos =  dao.select();
		request.setAttribute("dtos", dtos);
	}

}
