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
    <title>QnA글쓰기</title>
	  <c:if test="${sessionScope.nickName != null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOn.css" media="screen">
	  </c:if>
	  <c:if test="${sessionScope.nickName == null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOff.css" media="screen">
	  </c:if>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Insert.css" media="screen">
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
    <meta property="og:title" content="QnAInsert">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><%@ include file="../../layout/headeron.jsp" %>
    <section class="u-clearfix u-section-1" id="sec-def7">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-col">
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-valign-middle u-container-layout-1">
                  <h4 class="u-text u-text-default u-text-1">QnA 작성</h4>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-valign-middle u-container-layout-2">
                  <div class="u-form u-form-1">
                    <form action="#" method="POST" class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 8px;">
                      <div class="u-form-group u-form-name u-label-top">
                        <label for="name-b495" class="u-label">글 제목</label>
                        <input type="text" placeholder="Enter your Name" id="name-b495" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white u-input-1" required="">
                      </div>
                      <div class="u-form-group u-form-message u-label-top">
                        <label for="message-b495" class="u-label">내용</label>
                        <textarea placeholder="Enter your message" rows="4" cols="50" id="message-b495" name="message" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white u-input-2" required=""></textarea>
                      </div>
                      <div class="u-align-center u-form-group u-form-submit u-label-top">
                        <input type="submit" value="submit" class="u-form-control-hidden">
                        <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-radius-10">저장<br>
                        </a>
                      </div>
                      <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                      <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                      <input type="hidden" value="" name="recaptchaResponse">
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
      <a class="u-link" href="https://nicepage.com/templates" target="_blank">
        <span>Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.one" target="_blank">
        <span>Website Builder</span>
      </a>. 
    </section>
  </body>
</html>