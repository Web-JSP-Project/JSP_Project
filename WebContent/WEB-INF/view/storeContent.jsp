<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>상점 구매 칸</title>
	  <c:if test="${sessionScope.nickName != null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOn.css" media="screen">
	  </c:if>
	  <c:if test="${sessionScope.nickName == null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOff.css" media="screen">
	  </c:if>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/storeContent.css" media="screen">
    <script class="u-script" type="text/javascript" src="${pageContext.request.contextPath}/javaScript/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="${pageContext.request.contextPath}/javaScript/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.21, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "../images/KakaoTalk_20220620_163816032.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="상점 구매 칸">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
    
  <c:if test="${sessionScope.nickName != null}">
  	<%@ include file="../../layout/headeron.jsp" %>
  </c:if>
  <c:if test="${sessionScope.nickName == null}">
  	<%@ include file="../../layout/headeroff.jsp" %>
  </c:if>
    <section class="u-clearfix u-section-1" id="sec-23eb">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-col">
              <div class="u-container-style u-layout-cell u-size-20 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h3 class="u-text u-text-1">${dto.name}</h3>
                  <div class="u-carousel u-gallery u-layout-thumbnails u-lightbox u-no-transition u-show-text-always u-gallery-1" id="carousel-4c75" data-interval="5000" data-u-ride="carousel">
                    <div class="u-carousel-inner u-gallery-inner u-gallery-inner-1" role="listbox" data-image-width="1920" data-image-height="1080">
                      <div class="u-active u-carousel-item u-gallery-item u-carousel-item-1" data-href="https://nicepage.com">
                        <div class="u-back-slide u-video" data-image-width="1280" data-image-height="720">
                          <div class="u-background-video u-expanded" style="">
                            <div class="embed-responsive embed-responsive-1">
                              <iframe style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" class="embed-responsive-item" src="${dto.link}" data-autoplay="1" frameborder="0" allowfullscreen=""></iframe>
                            </div>
                          </div>
                        </div>
                        <div class="u-over-slide u-over-slide-1">
                          <h3 class="u-gallery-heading">Sample Title</h3>
                          <p class="u-gallery-text">Sample Text</p>
                        </div>
                      </div>
                      <div class="u-carousel-item u-gallery-item u-carousel-item-2" data-image-width="1200" data-image-height="675">
                        <div class="u-back-slide">
                          <img class="u-back-image u-expanded" src="${pageContext.request.contextPath}/gameImg/${dto.f1Src}">
                        </div>
                        <div class="u-over-slide u-over-slide-2">
                          <h3 class="u-gallery-heading"></h3>
                          <p class="u-gallery-text"></p>
                        </div>
                        <style data-mode="XL"></style>
                        <style data-mode="LG"></style>
                        <style data-mode="MD"></style>
                        <style data-mode="SM"></style>
                        <style data-mode="XS"></style>
                      </div>
                      <div class="u-carousel-item u-gallery-item u-carousel-item-3" data-image-width="1200" data-image-height="900">
                        <div class="u-back-slide">
                          <img class="u-back-image u-expanded" src="${pageContext.request.contextPath}/gameImg/${dto.f2Src}">
                        </div>
                        <div class="u-over-slide u-over-slide-3">
                          <h3 class="u-gallery-heading"></h3>
                          <p class="u-gallery-text"></p>
                        </div>
                        <style data-mode="XL"></style>
                        <style data-mode="LG"></style>
                        <style data-mode="MD"></style>
                        <style data-mode="SM"></style>
                        <style data-mode="XS"></style>
                      </div>
                    </div>
                    <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-1" href="#carousel-4c75" role="button" data-u-slide="prev">
                      <span aria-hidden="true">
                        <svg viewBox="0 0 451.847 451.847"><path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
                      </span>
                      <span class="sr-only">
                        <svg viewBox="0 0 451.847 451.847"><path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
                      </span>
                    </a>
                    <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-2" href="#carousel-4c75" role="button" data-u-slide="next">
                      <span aria-hidden="true">
                        <svg viewBox="0 0 451.846 451.847"><path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
                      </span>
                      <span class="sr-only">
                        <svg viewBox="0 0 451.846 451.847"><path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
                      </span>
                    </a>
                    <ol class="u-carousel-thumbnails u-spacing-10 u-carousel-thumbnails-1">
                      <li class="u-active u-carousel-thumbnail u-carousel-thumbnail-1" data-u-target="#carousel-4c75" data-u-slide-to="0">
                        <img class="u-carousel-thumbnail-image u-image" src="${pageContext.request.contextPath}/img/video.jpg">
                      </li>
                      <li class="u-carousel-thumbnail u-carousel-thumbnail-1" data-u-target="#carousel-4c75" data-u-slide-to="1">
                        <img class="u-carousel-thumbnail-image u-image" src="${pageContext.request.contextPath}/gameImg/${dto.f1Src}">
                      </li>
                      <li class="u-carousel-thumbnail u-carousel-thumbnail-1" data-u-target="#carousel-4c75" data-u-slide-to="2">
                        <img class="u-carousel-thumbnail-image u-image" src="${pageContext.request.contextPath}/gameImg/${dto.f2Src}">
                      </li>
                    </ol>
                  </div>
                  <img class="u-image u-image-round u-radius-4 u-image-4" src="${pageContext.request.contextPath}/gameImg/${dto.itemSrc}" alt="" data-image-width="184" data-image-height="89">
                  <div class="u-align-left u-container-style u-grey-60 u-group u-radius-10 u-shape-round u-group-1">
                    <div class="u-container-layout u-container-layout-2">
                      <h5 class="u-text u-text-2">출시일</h5>
                      <h6 class="u-text u-text-default u-text-3">${dto.date }</h6>
                      <h5 class="u-text u-text-default u-text-4">배급사</h5>
                      <h6 class="u-text u-text-default u-text-5"> ${dto.ration}</h6>
                      <h5 class="u-text u-text-6">가격</h5>
                      <h5 class="u-text u-text-7">&#8361; ${dto.price }</h5>
                    </div>
                  </div>
                  <a href="buySelect.p?id=${dto.gameId }" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-60 u-radius-6 u-btn-1">구매하기</a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-20 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-3">
                  <div class="u-container-style u-group u-palette-5-base u-shape-rectangle u-group-2">
                    <div class="u-container-layout u-container-layout-4">
                      <h4 class="u-text u-text-default u-text-8">내용</h4>
                      <h6 class="u-text u-text-9">
                        <span style="font-weight: 700;">${dto.content}</span>
                        <br>
                      </h6>
                    </div>
                  </div>
                </div>
              </div>
              <div class="u-container-style u-expanded-width u-layout-cell u-size-20 u-layout-cell-3">
                <div class="u-container-layout u-container-layout-5">
                  <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-2">
                    <div class="u-layout">
                      <div class="u-layout-row">
                        <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-4">
                          <div class="u-container-layout u-container-layout-6">
                            <div class="u-align-left u-container-style u-grey-60 u-group u-radius-10 u-shape-round u-group-3">
                              <div class="u-container-layout u-container-layout-7">
                                <h4 class="u-text u-text-default u-text-10">최소사향</h4>
                                <h6 class="u-text u-text-default u-text-11">CPU</h6>
                                <p class="u-text u-text-12"> ${dto.mCpu}</p>
                                <h6 class="u-text u-text-13">Gpu</h6>
                                <p class="u-text u-text-14"> ${dto.mGpu}</p>
                                <h6 class="u-text u-text-default u-text-15">Ram</h6>
                                <p class="u-text u-text-default u-text-16"> ${dto.mRam}</p>
                                <h6 class="u-text u-text-17">저장공간</h6>
                                <p class="u-text u-text-default u-text-18"> ${dto.mDisk}</p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-5">
                          <div class="u-container-layout u-valign-top u-container-layout-8">
                            <div class="u-align-left u-container-style u-expanded-width u-grey-60 u-group u-radius-10 u-shape-round u-group-4">
                              <div class="u-container-layout u-container-layout-9">
                                <h4 class="u-text u-text-default u-text-19">권장사향</h4>
                                <h6 class="u-text u-text-default u-text-20">CPU</h6>
                                <p class="u-text u-text-21"> ${dto.sCpu}</p>
                                <h6 class="u-text u-text-22">Gpu</h6>
                                <p class="u-text u-text-23"> ${dto.sGpu}</p>
                                <h6 class="u-text u-text-default u-text-24">Ram</h6>
                                <p class="u-text u-text-default u-text-25">${dto.sRam}</p>
                                <h6 class="u-text u-text-26">저장공간</h6>
                                <p class="u-text u-text-default u-text-27">${dto.sDisk}</p>
                              </div>
                            </div>
                          </div>
                        </div>
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
      <a class="u-link" href="https://nicepage.com/website-design" target="_blank">
        <span>Website Design</span>
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