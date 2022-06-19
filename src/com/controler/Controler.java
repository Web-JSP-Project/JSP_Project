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
import com.command.GameContentCommand;
import com.command.GameContentSelectCommand;
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
import com.dto.GameContentDto;
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
			viewPage = "WEB-INF/view/store.jsp";
			break;
		case "storeContent":
			GameContentCommand gameContentSelect = new GameContentSelectCommand();
			gameContentSelect.execute(request, response);
			GameContentDto dto =(GameContentDto) request.getAttribute("dto");
			System.out.println("gameId : "+dto.getGameId());
			System.out.println("itemSrc : "+dto.getItemSrc());
			System.out.println("f1Src : "+dto.getF1Src());
			System.out.println("f2Src : "+dto.getF2Src());
			System.out.println("name : "+dto.getName());
			System.out.println("genre : "+dto.getGenre());
			System.out.println("date : "+dto.getDate());
			System.out.println("ration : "+dto.getRation());
			System.out.println("price : "+dto.getPrice());
			System.out.println("content : "+dto.getContent());
			System.out.println("link : "+dto.getLink());
			System.out.println("mCpu : "+dto.getmCpu());
			System.out.println("mGpu : "+dto.getmGpu());
			System.out.println("mRam : "+dto.getmRam());
			System.out.println("mDisk : "+dto.getmDisk());
			System.out.println("sCpu : "+dto.getsCpu());
			System.out.println("sGpu : "+dto.getsGpu());
			System.out.println("sRam : "+dto.getsRam());
			System.out.println("sDisk : "+dto.getsDisk());
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
