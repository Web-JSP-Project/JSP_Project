package com.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.UserCommand;
import com.command.user.UserInsertCommand;
import com.command.user.UserSelectCommand;

@WebServlet("*.u")
public class UserControler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사용자 관련 컨트롤러
		String viewPage = null;
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".u"));

		switch(com.trim()) {
		case "login":
			viewPage="WEB-INF/view/login.jsp";
			break;
		case "userSelect":
			UserCommand userSelect = new UserSelectCommand();
			userSelect.execute(request, response); 
			// 로그인 성공 체크
			if(request.getSession().getAttribute("nickName") != null) {
				viewPage="WEB-INF/view/index.jsp";				
			}
			else {
				viewPage="WEB-INF/view/login.jsp";
			}
			break;

		case "logout":
			request.getSession().invalidate();
			viewPage="WEB-INF/view/index.jsp";
			break;
		case "join":
			viewPage="WEB-INF/view/join.jsp";
			break;
		case "joinInsert":
			UserCommand userInsert = new UserInsertCommand();
			userInsert.execute(request, response);
			viewPage="WEB-INF/view/index.jsp";
			break;
		}
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
