<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div id="nickName">
		<ul>
			<li>
				<div id="userNickName">
					<span><%=session.getAttribute("nickName") %></span>
				</div>
				<div id="indexIcon">
					<span class="css-bar"></span>
				</div>
				<ul>
					<li><a href="#">test1</a></li>
					<li><a href="#">test1</a></li>
				</ul>
			</li>
		</ul>
    </div>