package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RecommendDao;
import com.dto.RecommendDto;

public class RecommendSelectCommand implements RecommendCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RecommendDao dao = new RecommendDao();
		ArrayList<RecommendDto> dtos = dao.select();
		request.setAttribute("dtos", dtos);
	}

}
