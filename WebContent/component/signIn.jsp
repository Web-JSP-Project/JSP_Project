<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div id ="txtBox">
        <p id="logText">Login</p><br>
        <div id = "login">
            <label for ="tid">아이디</label><br>
            <input type="text" id="tid"><br><br>
                <!--  이거  id 겹칠거 같아서 tid로 함(text id) -->
                <label for ="pwd">비밀번호</label><br>
            <input type="password" id ="pwd"><br><br>
            <button id = "logBtn">로그인</button><br>
            </div>
    </div> 
    <div id =joinBox>
    아이디가 없다면<a href="">회원가입</a>
    </div>