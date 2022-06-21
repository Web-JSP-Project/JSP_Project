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
    <title>QnA게시판</title>
	  <c:if test="${sessionScope.nickName != null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOn.css" media="screen">
	  </c:if>
	  <c:if test="${sessionScope.nickName == null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOff.css" media="screen">
	  </c:if>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/QnA.css" media="screen">
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
    <meta property="og:title" content="QnA">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
  <c:if test="${sessionScope.nickName != null}">
  	<%@ include file="../../layout/headeron.jsp" %>
  </c:if>
  <c:if test="${sessionScope.nickName == null}">
  	<%@ include file="../../layout/headeroff.jsp" %>
  </c:if>
    <section class="u-clearfix u-section-1" id="sec-5cfc">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-col">
              <div class="u-container-style u-layout-cell u-shape-rectangle u-size-30 u-layout-cell-1">
                <div class="u-border-2 u-border-grey-10 u-container-layout u-container-layout-1">
                  <h3 class="u-text u-text-default u-text-1">QnA게시판</h3>
                </div>
              </div>
              <div class="u-align-left u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <div class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-container-style u-expanded-width u-group u-shape-rectangle u-group-1">
                    <div class="u-container-layout u-container-layout-3">
                      <h4 class="u-text u-text-2">9</h4>
                      <h4 class="u-text u-text-3">부아아아아앙아아ㅇ</h4>
                      <h4 class="u-text u-text-4">비둘기</h4>
                      <h4 class="u-text u-text-5">00/00/00</h4>
                    </div>
                  </div>
                  <div class="u-border-2 u-border-grey-60 u-border-no-left u-border-no-right u-container-style u-expanded-width u-grey-5 u-group u-shape-rectangle u-group-2">
                    <div class="u-container-layout u-container-layout-4">
                      <h4 class="u-text u-text-default u-text-6">작성날자</h4>
                      <h4 class="u-text u-text-default u-text-7">글쓴이</h4>
                      <h4 class="u-text u-text-default u-text-8">NO</h4>
                      <h4 class="u-text u-text-default u-text-9">제목</h4>
                    </div>
                  </div>
                  <div class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-container-style u-expanded-width u-group u-shape-rectangle u-group-3">
                    <div class="u-container-layout u-container-layout-5">
                      <h4 class="u-text u-text-10">8</h4>
                      <h4 class="u-text u-text-11">부아아아아앙아아ㅇ</h4>
                      <h4 class="u-text u-text-12">비둘기</h4>
                      <h4 class="u-text u-text-13">00/00/00</h4>
                    </div>
                  </div>
                  <div class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-container-style u-expanded-width u-group u-shape-rectangle u-group-4">
                    <div class="u-container-layout u-container-layout-6">
                      <h4 class="u-text u-text-14">7</h4>
                      <h4 class="u-text u-text-15">부아아아아앙아아ㅇ</h4>
                      <h4 class="u-text u-text-16">비둘기</h4>
                      <h4 class="u-text u-text-17">00/00/00</h4>
                    </div>
                  </div>
                  <div class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-container-style u-expanded-width u-group u-shape-rectangle u-group-5">
                    <div class="u-container-layout u-container-layout-7">
                      <h4 class="u-text u-text-18">6</h4>
                      <h4 class="u-text u-text-19">부아아아아앙아아ㅇ</h4>
                      <h4 class="u-text u-text-20">비둘기</h4>
                      <h4 class="u-text u-text-21">00/00/00</h4>
                    </div>
                  </div>
                  <div class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-container-style u-expanded-width u-group u-shape-rectangle u-group-6">
                    <div class="u-container-layout u-container-layout-8">
                      <h4 class="u-text u-text-22">5</h4>
                      <h4 class="u-text u-text-23">부아아아아앙아아ㅇ</h4>
                      <h4 class="u-text u-text-24">비둘기</h4>
                      <h4 class="u-text u-text-25">00/00/00</h4>
                    </div>
                  </div>
                  <div class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-container-style u-expanded-width u-group u-shape-rectangle u-group-7">
                    <div class="u-container-layout u-container-layout-9">
                      <h4 class="u-text u-text-26">4</h4>
                      <h4 class="u-text u-text-27">부아아아아앙아아ㅇ</h4>
                      <h4 class="u-text u-text-28">비둘기</h4>
                      <h4 class="u-text u-text-29">00/00/00</h4>
                    </div>
                  </div>
                  <div class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-container-style u-expanded-width u-group u-shape-rectangle u-group-8">
                    <div class="u-container-layout u-container-layout-10">
                      <h4 class="u-text u-text-30">3</h4>
                      <h4 class="u-text u-text-31">부아아아아앙아아ㅇ</h4>
                      <h4 class="u-text u-text-32">비둘기</h4>
                      <h4 class="u-text u-text-33">00/00/00</h4>
                    </div>
                  </div>
                  <div class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-container-style u-expanded-width u-group u-shape-rectangle u-group-9">
                    <div class="u-container-layout u-container-layout-11">
                      <h4 class="u-text u-text-34">2</h4>
                      <h4 class="u-text u-text-35">부아아아아앙아아ㅇ</h4>
                      <h4 class="u-text u-text-36">비둘기</h4>
                      <h4 class="u-text u-text-37">00/00/00</h4>
                    </div>
                  </div>
                  <div class="u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-container-style u-expanded-width u-group u-shape-rectangle u-group-10">
                    <div class="u-container-layout u-container-layout-12">
                      <h4 class="u-text u-text-38">1</h4>
                      <h4 class="u-text u-text-39">부아아아아앙아아ㅇ</h4>
                      <h4 class="u-text u-text-40">비둘기</h4>
                      <h4 class="u-text u-text-41">00/00/00</h4>
                    </div>
                  </div>
                  <a href="https://nicepage.com/landing-page" class="u-btn u-button-style u-btn-1">글쓰기</a>
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
      <a class="u-link" href="https://nicepage.com/static-site-generator" target="_blank">
        <span>Static Site Generators</span>
      </a>. 
    </section>
  </body>
</html>