<!--
작성자:
변경일:
프로그렘 설명
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id ="loginBox">
            <div id="signInTititle">
            <h2>Login</h2>
        </div>

        <form action="signInPro.jsp" method="POST">


            <div class="input-box">
                <input id="username" type="text" name="username" placeholder="아이디">
                <label for="username">아이디</label>
            </div>

            <div class="input-box">
                <input id="password" type="password" name="password" placeholder="비밀번호">
                <label for="password">비밀번호</label>
            </div>
            <input type="submit" value="로그인">
        </form>
        <div id="joinAndFg"><a href>회원가입</a>/<a href>비밀번호 찾기</a></div>
    </div>