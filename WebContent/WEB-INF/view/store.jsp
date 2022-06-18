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
    <title>상점 </title>
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
		"logo": "../../images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="상점">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><header class="u-clearfix u-header u-header" id="sec-09f0"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="index.do" class="u-image u-logo u-image-1">
          <img src="${pageContext.request.contextPath}/img/default-logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1">
            <li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="store.do" style="padding: 10px 22px;">상점 최신순</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item"><a class="u-button-style u-nav-link u-white">최신순</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white">인기순</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white">금액별</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white">주제별</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="../라이브러리.html" style="padding: 10px 22px;">라이브러리</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="index.do" style="padding: 10px 22px;">메인페이지</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link u-white">자유 게시판</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white">자료 게시판</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" style="padding: 10px 22px;">고객지원</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link u-white">FaQ</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white">QnA</a>
</li></ul>
</div>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-5"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="store.do">상점 최신순</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link">최신순</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">인기순</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">금액별</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">주제별</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="../라이브러리.html">라이브러리</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="../메인페이지.html">메인페이지</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link">자유 게시판</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">자료 게시판</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">고객지원</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link">FaQ</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">QnA</a>
</li></ul>
</div>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="https://nicepage.com/html-templates" class="u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-palette-1-base u-radius-6 u-btn-1">로그인</a>
        <a href="https://nicepage.com/html-templates" class="u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-palette-1-base u-radius-6 u-btn-2">회원가입</a>
      </div></header>
    <section class="u-clearfix u-section-1" id="sec-7e1d">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-col">
              <div class="u-container-style u-layout-cell u-size-60 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <div class="u-border-3 u-border-palette-1-base u-container-style u-grey-15 u-group u-group-1">

                    
                    <div class="u-container-layout u-container-layout-2">
                      <div class="u-form u-form-1">
                        <form action="#" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-10 u-inner-form" source="custom" name="form" style="padding: 10px;">
                          <div class="u-form-group u-form-name u-label-none u-form-group-1">
                            <label for="name-15e8" class="u-label">Name</label>
                            <input type="text" placeholder="게임이름 검색" id="name-15e8" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white u-input-1">
                          </div>
                          <div class="u-align-right u-form-group u-form-submit u-label-none u-form-group-2">
                            <input type="submit" value="submit" class="u-form-control-hidden">
                            <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-radius-11 u-btn-1">검색<br>
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
        </div>
        <div class="u-align-center u-clearfix u-layout-wrap u-layout-wrap-2">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-60 u-layout-cell-2">
                <div class="u-border-2 u-border-palette-5-dark-3 u-container-layout u-container-layout-3">
                  <p class="u-align-center u-large-text u-text u-text-default u-text-variant u-text-1">가격순</p>
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
                        <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-radius-11 u-btn-2">검색<br>
                        </a>
                      </div>
                      <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                      <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                      <input type="hidden" value="" name="recaptchaResponse">
                    </form>
                  </div>
                  
  	              <c:forEach var="dto" items="${dtos}">
                    <a href="#">
                    <div class="u-align-center u-container-style u-grey-10 u-group u-group-2">
                      <div class="u-container-layout u-container-layout-5">
                        <img class="u-image u-image-round u-preserve-proportions u-radius-10 u-image-2" src="${pageContext.request.contextPath}/gameImg/${dto.img}" alt="" data-image-width="184" data-image-height="89">
                        <h5 class="u-text u-text-default u-text-2">${dto.title }</h5>
                        <h6 class="u-text u-text-default u-text-3">${dto.price }원</h6>
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
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-9525"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/html-templates" target="_blank">
        <span>HTML Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/static-site-generator" target="_blank">
        <span>Static Website Generators</span>
      </a>. 
    </section>
  </body>
</html>