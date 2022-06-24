<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>자유게시판</title>
	  <c:if test="${sessionScope.nickName != null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOn.css" media="screen">
	  </c:if>
	  <c:if test="${sessionScope.nickName == null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOff.css" media="screen">
	  </c:if>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/freeBorad.css" media="screen">
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
    <meta property="og:title" content="자유게시판">
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
                <div class="u-border-2 u-border-grey-10 u-container-layout u-valign-bottom u-container-layout-1">
                  <h3 class="u-text u-text-default u-text-1">자유 게시판</h3>
                  <div class="u-form u-form-1">
                    <form action="#" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-10 u-inner-form" source="custom" name="form" style="padding: 10px;">
                      <div class="u-form-group u-form-name">
                        <label for="name-f9ba" class="u-label">검색</label>
                        <input type="text" id="name-f9ba" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                      </div>
                      <div class="u-align-right u-form-group u-form-submit">
                        <a href="#" class="u-btn u-btn-submit u-button-style">검색<br>
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
              <div class="u-align-left u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <div class="u-expanded-width u-table u-table-responsive u-table-1">
                    <table class="u-table-entity">
                      <colgroup>
                        <col width="8%">
                        <col width="44.7%">
                        <col width="16.6%">
                        <col width="15.5%">
                        <col width="15.2%">
                      </colgroup>
                      <thead class="u-grey-50 u-table-header u-table-header-1">
                        <tr style="height: 46px;">
                          <th class="u-border-1 u-border-grey-50 u-table-cell">NO</th>
                          <th class="u-border-1 u-border-grey-50 u-table-cell">제목</th>
                          <th class="u-border-1 u-border-grey-50 u-table-cell">글쓴이</th>
                          <th class="u-border-1 u-border-grey-50 u-table-cell">작성날자</th>
                          <th class="u-border-1 u-border-grey-50 u-table-cell">조회수</th>
                        </tr>
                      </thead>
                      <tbody class="u-table-body">
                      
                        <c:forEach var="dto" items="${dtos}">
                          <tr style="height: 46px;cursor:pointer;" onclick="location.href='freeBoardContent.b?boardId=${dto.boardId}'" >
                            <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">${dto.boardId}</td>
                            <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">${dto.title}</td>
                            <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">${dto.userId}</td>
                            <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">${dto.day}</td>
                            <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">${dto.hit}</td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                  <a href="https://nicepage.com/landing-page" class="u-btn u-btn-round u-button-style u-radius-10 u-btn-2">글쓰기</a>
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