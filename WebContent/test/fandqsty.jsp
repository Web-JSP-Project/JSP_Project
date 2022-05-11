<!--
작성자:
변경일:0511
프로그렘 설명 F&Q 스타일 
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>

   #qnaBox .layout{
        max-width: 600px;
        margin: 0 auto;
    }
    
    #qnaBox .qna{
        list-style: none;
        margin: 0;
        padding: 0;
        width: 600px;
        background-color: #EAEAEA;
    }
    #qnaBox .qna > li{
      padding: 10px 0;
      box-sizing: border-box;
    }
    #qnaBox .qna > li:nth-child(n+2){ /* 아이템 구분 점선 */
      border-top: 1px dashed #aaa;
    }
    #qnaBox .qna input {
      display: none;
    }
    
    #qnaBox .qna label { /* 제목 - 클릭 영역 */
      font-weight: bold;
      color: #000;
      margin: 20px 0 0;
      cursor: pointer;
    }
    #qnaBox  .qna label::before { /* 제목 앞 화살표 */
      display: block;
      content: "";
      width: 0;
      height: 0;
      border: 8px solid transparent;
      border-left: 8px solid rgb(125, 106, 221);
      margin: 2px 0 0 8px;
      float: left;
    }
    #qnaBox  .qna input:checked + label::before { /* 내용 펼침 상태 제목 앞 화살표 */
      border: 8px solid transparent;
      border-top: 8px solid rgb(125, 106, 221);
      border-bottom: 0;
      margin: 8px 4px 0;
    }
    
    #qnaBox  .qna div { /* 내용 영역 - 기본 감춤 상태 */
      display: none;
      color: #666;
      font-size: 0.9375em;
      overflow: hidden;
      padding: 10px 0 10px 30px;
      box-sizing: border-box;
      transition: max-height 0.4s;
    }
    #qnaBox .qna input:checked + label + div { /* 내용 영역 펼침 */
      display: block;
    }
    </style>