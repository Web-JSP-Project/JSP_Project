package com.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.BoardCommand;
import com.command.board.BoardContentCommand;
import com.command.board.BoardSelectCommand;
import com.dao.FreeBoardDao;

@WebServlet("*.b")
public class BoardControler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시판 관련 컨트롤러
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
		case "QnA":
			BoardCommand qnaSelect = new BoardSelectCommand();
			qnaSelect.execute(request, response);
			viewPage="WEB-INF/view/freeBoard.jsp";
			break;
		case "dataBoard":
			viewPage="WEB-INF/view/dataBoard.jsp";
			break;
		case "freeBoardContent":
			BoardCommand boardContent = new BoardContentCommand();
			boardContent.execute(request, response);
			viewPage="WEB-INF/view/boardContent.jsp";
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
