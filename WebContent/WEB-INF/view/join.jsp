<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="회원가입">
    <meta name="description" content="">
    <title>회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOff.css" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/join.css" media="screen">
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
    <meta property="og:title" content="회원가입">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
  	<%@ include file="../../layout/headeroff.jsp" %>
    <section class="u-clearfix u-section-1" id="sec-3aa1">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-col">
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h1 class="u-align-center u-text u-text-default u-text-1">회원가입</h1>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-valign-top u-container-layout-2">
                  <div class="u-align-center u-form u-form-1">
                  
                    <form action="joinInsert.u" method="post">
                      <div class="u-form-email u-form-group">
                        <label for="email-62ef" class="u-label">아이디</label>
                        <input type="text" id="email-62ef" name="id" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white" required="">
                      </div>
                      <div class="u-form-group u-form-group-2">
                        <label for="text-fb9c" class="u-label">비밀번호</label>
                        <input type="password" id="text-fb9c" name="pwd" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white">
                      </div>
                      <div class="u-form-group u-form-group-3">
                        <label for="text-47ba" class="u-label">비밀번호 확인</label>
                        <input placeholder="" id="text-47ba" name="pwdCheck" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white" type="password">
                      </div>
                      <div class="u-form-group u-form-group-4">
                        <label for="text-ceab" class="u-label">닉네임</label>
                        <input type="text" placeholder="" id="text-ceab" name="nickName" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white">
                      </div>
                      <div class="u-form-group u-form-name">
                        <label for="name-62ef" class="u-label">이메일</label>
                        <input type="email" id="name-62ef" name="eMail" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white" required="">
                      </div>
                      <div class="u-form-date u-form-group u-form-group-6">
                        <label for="date-1bcc" class="u-label">생년월일</label>
                        <input type="date" placeholder="MM/DD/YYYY" id="birthday" name="birthday" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white" required="">
                      </div>
                      <button type="submit">회원가입하기</button>
                    </form>
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
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
  </body>
</html>