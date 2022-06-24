package com.command.game;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.LibraryCommand;
import com.dao.LibraryDao;
import com.dto.LibraryDto;

public class LibrarySelectAllCommand implements LibraryCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//라이브러리 목록 구현하기
		LibraryDao dao = new LibraryDao();
		//로그인 된 세션으로 검색
		ArrayList<LibraryDto> dtos = dao.selectAll((String)request.getSession().getAttribute("nickName"));
		request.setAttribute("libraryDtos", dtos);
		request.setAttribute("size",dtos.size());
	}

}
