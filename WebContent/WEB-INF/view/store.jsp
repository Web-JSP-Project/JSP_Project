<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!DOCTYPE html>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>상점 장르</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepage.css" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/store.css" media="screen">
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
    <meta property="og:title" content="상점 장르">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
    
    <%@ include file="../../layout/header.jsp" %>
    <section class="u-clearfix u-section-1" id="sec-5d12">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-col">
              <div class="u-container-style u-layout-cell u-size-60 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <div class="u-form u-form-1">
                    <form action="#" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-10 u-inner-form" source="custom" name="form" style="padding: 10px;">
                      <div class="u-form-group u-form-name u-label-none u-form-group-1">
                        <label for="name-15e8" class="u-label">Name</label>
                        <input type="text" placeholder="게임이름 검색" id="name-15e8" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white u-input-1">
                      </div>
                      <div class="u-align-right u-form-group u-form-submit u-label-none u-form-group-2">
                        <input type="submit" value="submit" class="u-form-control-hidden">
                        <a href="#" class="u-black u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-grey-60 u-radius-11 u-btn-1">검색<br>
                        </a>
                      </div>
                      <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                      <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                      <input type="hidden" value="" name="recaptchaResponse">
                    </form>
                  </div>
                  <a href="https://nicepage.com/joomla-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-60 u-radius-6 u-btn-2">상품등록</a>
                  <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-group-1">
                    <div class="u-container-layout u-container-layout-2">
                      <div class="u-form u-form-2">
                        <form action="#" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-10 u-inner-form" source="custom" name="form" style="padding: 10px;">
                          <div class="u-form-group u-form-select u-label-none u-form-group-3">
                            <label for="select-6f55" class="u-label">Select</label>
                            <div class="u-form-select-wrapper">
                              <select id="select-6f55" name="select" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white u-input-2">
                                <option value="--선택--">--선택--</option>
                                <option value="1만원 이하">1만원 이하</option>
                                <option value="1-2만원">1-2만원</option>
                                <option value="2-3만원">2-3만원</option>
                                <option value="3만원 이상">3만원 이상</option>
                              </select>
                              <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                            </div>
                          </div>
                          <div class="u-align-right u-form-group u-form-submit u-label-none u-form-group-4">
                            <input type="submit" value="submit" class="u-form-control-hidden">
                            <a href="#" class="u-black u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-grey-60 u-radius-11 u-btn-3">검색<br>
                            </a>
                          </div>
                          <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                          <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                          <input type="hidden" value="" name="recaptchaResponse">
                        </form>
                      </div>
                      <p class="u-align-center u-large-text u-text u-text-default u-text-variant u-text-1">가격순</p>




                      <c:forEach var="dto" items="${dtos}">
	                      <a href="storeContent.g?gameId=${dto.gameId}">
	                        <div class="u-align-center u-container-style u-grey-10 u-group u-group-2">
	                          <div class="u-container-layout u-container-layout-3">
	                            <img class="u-image u-image-round u-preserve-proportions u-radius-10 u-image-1" src="${pageContext.request.contextPath}/gameImg/${dto.img}" alt="" data-image-width="184" data-image-height="89">
	                            <h5 class="u-text u-text-default u-text-2">${dto.title}</h5>
	                            <h6 class="u-text u-text-default u-text-3">&#8361; ${dto.price}</h6>
	                          </div>
	                        </div>
                        </a>
                      </c:forEach>



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
      <a class="u-link" href="https://nicepage.com/website-design" target="_blank">
        <span>Website Design Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/html-website-builder" target="_blank">
        <span>HTML Website Builder</span>
      </a>. 
    </section>
  </body>
</html>