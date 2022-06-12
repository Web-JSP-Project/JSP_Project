package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.MinimumDao;
import com.dto.MinimumDto;



public class MinimumSelectCommand implements MinimumCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MinimumDao dao = new MinimumDao();
		ArrayList<MinimumDto> dtos =  dao.select();
		request.setAttribute("dtos", dtos);
	}

}
