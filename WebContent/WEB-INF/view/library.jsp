<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="결제가 완료 되었습니다.">
    <meta name="description" content="">
    <title>라이브러리 홈</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOn.css" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/library.css" media="screen">
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
    <meta property="og:title" content="라이브러리 홈">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
    <%@ include file="../../layout/headeron.jsp" %>
    <section class="u-clearfix u-white u-section-2" id="sec-0a8d">
      <div class="u-clearfix u-sheet u-valign-bottom u-sheet-1">
        <div class="u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-grey-10 u-layout-cell u-size-11 u-layout-cell-1">
                <ul>
                	<c:forEach var="dto" items="${libraryDtos}">
                  		<a href="#" style="color: #000;"><li>${dto.gameName}</li></a>
                     </c:forEach>
                </ul>
              </div>
              <div class="u-container-style u-layout-cell u-size-49 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <div class="u-table u-table-responsive u-table-1">
                    <table class="u-table-entity">
                      <colgroup>
                        <col width="33.3%">
                        <col width="33.3%">
                        <col width="33.4%">
                      </colgroup>
                      <tbody class="u-table-body">
                        <tr style="height: 352px;">
                        <c:forEach var="dto" items="${libraryDtos}"  varStatus="status">
                            <td class="u-border-1 u-border-grey-dark-1 u-table-cell" style="border-style:none;">
                            	<a href="libraryContent.l">
	                              <div class="u-container-style u-grey-10 u-group u-group-17">
	                                <div class="u-container-layout u-valign-top u-container-layout-19">
	                                  <div class="u-border-3 u-border-palette-1-base u-container-style u-expanded-width u-group u-group-18">
	                                    <div class="u-container-layout u-container-layout-20">
	                                      <h5 class="u-text u-text-default u-text-13">${dto.gameName}</h5>
	                                    </div>
	                                  </div>
	                                  <img class="u-expanded-width u-image u-image-default u-image-9" src="${pageContext.request.contextPath}/gameImg/${dto.img}" alt="" data-image-width="384" data-image-height="322">
	                                </div>
	                              </div>
	                              </a>
                            </td>
                          <c:if test="${status.count%3 == 0 }">
                            <c:if test="${status.count<size }">
                              </tr>
                              <tbody class="u-table-body">
                              </tr>
                            </c:if>
                            <c:if test="${status.count>=size }">
                              </tr>
                            </c:if>
                          </c:if>
                        </c:forEach>


                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-3" id="sec-d469">
      <div class="u-clearfix u-sheet u-sheet-1"></div>
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