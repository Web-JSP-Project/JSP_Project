package com.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.GameContentCommand;
import com.command.GameContentSelectCommand;
import com.command.GameItemCommand;
import com.command.GameItemSelectAllCommand;

@WebServlet("*.g")
public class GameControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewPage = null;
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".g"));

		switch(com.trim()) {
		case "store":
			GameItemCommand gameItemSelectAll = new GameItemSelectAllCommand();
			gameItemSelectAll.execute(request, response);
			viewPage = "WEB-INF/view/store.jsp";
			break;
		case "storeContent":
			GameContentCommand gameContentSelect = new GameContentSelectCommand();
			gameContentSelect.execute(request, response);
			viewPage="WEB-INF/view/storeContent.jsp";
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


}
