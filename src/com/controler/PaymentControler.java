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
import com.command.game.GameContentSelectCommand;
import com.command.game.GameItemSelectAllCommand;

@WebServlet("*.p")
public class PaymentControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//결제관련 컨트롤러
		request.setCharacterEncoding("utf-8");
		String viewPage = null;
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".p"));

		switch(com.trim()) {
		case "buySelect":
			//로그인 체크
			if(request.getSession().getAttribute("nickName")!=null) {
				request.getSession().setAttribute("buyId", request.getParameter("id"));
				viewPage = "WEB-INF/view/buySelect.jsp";
			}
			else {
				viewPage = "WEB-INF/view/login.jsp";
				
			}
			break;
		case "buyChoice":
			//결제 선택 정보 확인
			switch (request.getParameter("select")) {
			case "신용카드":
				viewPage = "WEB-INF/view/buyCard.jsp";
				break;
			case "Toss":
				viewPage = "WEB-INF/view/buyToss.jsp";
				break;
			case "문화상품권":
				viewPage = "WEB-INF/view/buyCultureland.jsp";
				break;
			}
			break;
		case "buy":
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
