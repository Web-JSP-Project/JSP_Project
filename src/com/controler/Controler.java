package com.controler;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.GameCommand;
import com.command.GameImgCommand;
import com.command.GameImgSelectCommand;
import com.command.GameItemCommand;
import com.command.GameItemSelectAllCommand;
import com.command.GameSelectAllCommand;
import com.command.GameSelectCommand;
import com.command.MinimumCommand;
import com.command.MinimumSelectCommand;
import com.command.RecommendCommand;
import com.command.RecommendSelectCommand;
import com.command.UserCommand;
import com.command.UserInsertCommand;
import com.command.UserSelectCommand;
import com.dto.GameItemDto;

@WebServlet("*.do")
public class Controler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewPage = null;
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".do"));

		switch(com.trim()) {
		case "index":
			viewPage="WEB-INF/view/index.jsp";
			break;
		case "userInsert":
			UserCommand userInsert = new UserInsertCommand();
			userInsert.execute(request, response);
			viewPage="Home.jsp";
			break;
		case "userSelect":
			UserCommand userSelect = new UserSelectCommand();
			userSelect.execute(request, response); 
			if(request.getSession().getAttribute("nickName") != null) {
				viewPage="Home.jsp";				
			}
			else {
				viewPage="signIn.jsp";
			}
		case "store":
			GameItemCommand gameItemSelectAll = new GameItemSelectAllCommand();
			gameItemSelectAll.execute(request, response);
			ArrayList<GameItemDto> dtos = (ArrayList<GameItemDto>) request.getAttribute("dtos");
			for(int i=0;i<dtos.size();i++) {
				System.out.println("img : "+dtos.get(i).getImg());
				System.out.println("title : "+dtos.get(i).getTitle());
				System.out.println("price : "+dtos.get(i).getPrice());
				System.out.println();
				
			}
			viewPage = "WEB-INF/view/store.jsp";
			break;
		case "minimumSelect":
			MinimumCommand minimumSelect = new MinimumSelectCommand();
			minimumSelect.execute(request, response);
			viewPage = "";
			break;
		case "recommendSelect":
			RecommendCommand recommendSelect = new RecommendSelectCommand();
			recommendSelect.execute(request, response);
			viewPage = "";
			break;
		case "gameImgSelect":
			GameImgCommand gameImgSelect = new GameImgSelectCommand();
			gameImgSelect.execute(request, response);
			viewPage = "";
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
