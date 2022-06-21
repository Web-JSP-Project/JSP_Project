<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>결제 문화상품권</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepage.css" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/buyCultureland.css" media="screen">
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
    <meta property="og:title" content="buyCultureland">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><%@ include file="../../layout/headeron.jsp" %>
    <section class="u-clearfix u-section-1" id="sec-e8fc">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-60 u-layout-cell-1">
                <div class="u-container-layout u-valign-middle u-container-layout-1">
                  <div class="u-container-style u-expanded-width u-grey-10 u-group u-group-1">
                    <div class="u-container-layout u-container-layout-2">
                      <div class="u-form u-form-1">
                        <form action="#" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;">
                          <div class="u-form-group u-form-select u-form-group-1">
                            <label for="select-7171" class="u-label">Select</label>
                            <div class="u-form-select-wrapper">
                              <select id="select-7171" name="select" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                <option value="신용카드">신용카드</option>
                                <option value="Toss">Toss</option>
                                <option value="문화상품권">문화상품권</option>
                              </select>
                              <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                            </div>
                          </div>
                          <div class="u-form-group u-form-name">
                            <label for="name-7ea1" class="u-label">결제</label>
                            <input type="text" id="name-7ea1" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                          </div>
                          <div class="u-form-group u-form-group-3">
                            <label for="text-988f" class="u-label">비밀번호</label>
                            <input type="text" placeholder="" id="text-988f" name="text-1" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                          </div>
                          <div class="u-align-right u-form-group u-form-submit">
                            <a href="#" class="u-black u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-grey-60 u-radius-10 u-btn-1">결제<br>
                            </a>
                            <input type="submit" value="submit" class="u-form-control-hidden">
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