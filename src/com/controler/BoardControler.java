package com.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.BoardCommand;
import com.command.BoardSelectCommand;
import com.dao.FreeBoardDao;

@WebServlet("*.b")
public class BoardControler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewPage = null;
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".b"));

		switch(com.trim()) {
		case "freeBoard":
			BoardCommand freeBoardSelect = new BoardSelectCommand();
			freeBoardSelect.execute(request, response);
			viewPage="WEB-INF/view/freeBoard.jsp";
			break;
		case "dataBoard":
			viewPage="WEB-INF/view/dataBoard.jsp";
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
