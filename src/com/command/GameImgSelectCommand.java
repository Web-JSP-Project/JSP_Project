package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.GameImgDao;
import com.dto.GameImgDto;


public class GameImgSelectCommand implements GameImgCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GameImgDao dao = new GameImgDao();
		ArrayList<GameImgDto> dtos =  dao.select();
		request.setAttribute("dtos", dtos);		
	}

}
