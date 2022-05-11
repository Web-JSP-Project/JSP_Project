<!--
변경일:0510
프로그렘 설명 : 회원가입
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div id="joinBox">
        <p id="Jtxt">회원 가입</p>
        <pre>

         <label for="joinid">아이디</label>
         <input type="text" id="joinid">  <button>중복 확인</button>

         <label for="joinpwd">비밀번호</label>
         <input type="password" id="joinpwd">
            특수문자 1개 이상 
            넣어야 합니다.

         <label for="joinpwdck">비밀번호확인</label>
         <input type="password" id="joinpwdck">

         <label for="joinEmail">이메일</label>
         <input type="text" id="joinEmail">      
        </pre>
        <button id ="joinBtn">회원 가입  </button>
    </div>