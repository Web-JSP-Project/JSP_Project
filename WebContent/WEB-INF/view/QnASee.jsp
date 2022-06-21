<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>QnA게시판상세보기</title>
	  <c:if test="${sessionScope.nickName != null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOn.css" media="screen">
	  </c:if>
	  <c:if test="${sessionScope.nickName == null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOff.css" media="screen">
	  </c:if>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/QnASee.css" media="screen">
    <script class="u-script" type="text/javascript" src="${pageContext.request.contextPath}/javaScript/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="${pageContext.request.contextPath}/javaScript/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.21, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "../../images/KakaoTalk_20220620_163816032.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="QnASee">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
  <c:if test="${sessionScope.nickName != null}">
  	<%@ include file="../../layout/headeron.jsp" %>
  </c:if>
  <c:if test="${sessionScope.nickName == null}">
  	<%@ include file="../../layout/headeroff.jsp" %>
  </c:if>
    <section class="u-clearfix u-section-1" id="sec-fa33">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-col">
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <div class="u-container-style u-grey-10 u-group u-group-1">
                    <div class="u-container-layout u-valign-bottom u-container-layout-2">
                      <div class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-border-no-top u-container-style u-expanded-width u-grey-10 u-group u-group-2">
                        <div class="u-container-layout u-container-layout-3">
                          <h4 class="u-text u-text-default u-text-1">글제목은 여기에에에에에ㅔㅇ</h4>
                          <h6 class="u-text u-text-default u-text-2">00/00/00</h6>
                          <h6 class="u-text u-text-default u-text-3">닉네임000</h6>
                        </div>
                      </div>
                      <h5 class="u-text u-text-4">&nbsp;Headlineaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</h5>
                      <div class="u-border-2 u-border-black u-border-no-bottom u-border-no-left u-border-no-right u-container-style u-expanded-width u-grey-10 u-group u-group-3">
                        <div class="u-container-layout u-container-layout-4">
                          <a href="https://nicepage.com/website-builder" class="u-btn u-btn-round u-button-style u-radius-10 u-btn-1">수정</a>
                          <a href="https://nicepage.com/website-builder" class="u-btn u-btn-round u-button-style u-radius-10 u-btn-2">삭제</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-5">
                  <div class="u-container-style u-grey-10 u-group u-group-4">
                    <div class="u-container-layout u-container-layout-6">
                      <h6 class="u-text u-text-5">닉네임---------</h6>
                      <h6 class="u-text u-text-6">00/00/00 에 작성</h6>
                      <p class="u-text u-text-7">9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999</p>
                    </div>
                  </div>
                  <div class="u-container-style u-grey-10 u-group u-group-5">
                    <div class="u-container-layout u-container-layout-7">
                      <h6 class="u-text u-text-8">닉네임---------</h6>
                      <h6 class="u-text u-text-9">00/00/00 에 작성</h6>
                      <p class="u-text u-text-10">9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-9525"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">팀:AI지구방위대</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/html-templates" target="_blank">
        <span>HTML Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.best" target="_blank">
        <span>Website Builder</span>
      </a>. 
    </section>
  </body>
</html>