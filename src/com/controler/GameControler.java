package com.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.GameContentCommand;
import com.command.GameItemCommand;
import com.command.LibraryCommand;
import com.command.game.GameContentSelectCommand;
import com.command.game.GameItemSelectAllCommand;
import com.command.game.LibrarySelectAllCommand;

@WebServlet("*.g")
public class GameControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게임 관련 컨트롤러
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
		case "library":
			//로그인이 체크
			if(request.getSession().getAttribute("nickName") != null) {
				LibraryCommand library = new LibrarySelectAllCommand();				
				library.execute(request, response);
				viewPage="WEB-INF/view/library.jsp";
			}
			else {
				viewPage = "login.u";
			}
			break;
		case "libraryContent":
			viewPage="WEB-INF/view/libraryContent.jsp";
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


}
