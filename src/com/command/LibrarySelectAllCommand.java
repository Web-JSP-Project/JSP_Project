package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.LibraryDao;
import com.dto.LibraryDto;

public class LibrarySelectAllCommand implements LibraryCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LibraryDao dao = new LibraryDao();
		ArrayList<LibraryDto> dtos = dao.selectAll();
		request.setAttribute("libraryDtos", dtos);
		request.setAttribute("size",dtos.size());
	}

}
