<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div id="nickName">
        <label for="list">
            <div id="userNickName">
                <span><%=session.getAttribute("nickName") %></span>
            </div>
            <div id="indexIcon">
                <span class="css-bar"></span>
            </div>
        </label>
        <input type="checkbox" id="list">
        <ul>
            <li><a href="#">프로필</a></li>
            <li><a href="#">장바구니</a></li>
            <li><a href="logoutPro.jsp">로그아웃</a></li>
        </ul>
    </div>