package com.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.LibraryCommand;
import com.command.LibrarySelectAllCommand;

@WebServlet("*.l")
public class LibraryControler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewPage = null;
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".l"));

		switch(com.trim()) {
		case "library":
			LibraryCommand library = new LibrarySelectAllCommand();
			library.execute(request, response);
			viewPage="WEB-INF/view/library.jsp";
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
