<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="FaQ">
    <meta name="description" content="">
    <title>FaQ</title>
	  <c:if test="${sessionScope.nickName != null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOn.css" media="screen">
	  </c:if>
	  <c:if test="${sessionScope.nickName == null}">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nicepageOff.css" media="screen">
	  </c:if>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/FaQ.css" media="screen">
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
    <meta property="og:title" content="FaQ">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
  <c:if test="${sessionScope.nickName != null}">
  	<%@ include file="../../layout/headeron.jsp" %>
  </c:if>
  <c:if test="${sessionScope.nickName == null}">
  	<%@ include file="../../layout/headeroff.jsp" %>
  </c:if>
    <section class="u-clearfix u-section-1" id="sec-4886">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-col">
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-valign-middle u-container-layout-1">
                  <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-1">
                    <div class="u-container-layout u-container-layout-2">
                      <h2 class="u-align-center u-text u-text-default u-text-1">FaQ</h2>
                    </div>
                  </div>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-3">
                  <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-2">
                    <div class="u-container-layout u-container-layout-4">
                      <div class="u-accordion u-expanded-width u-faq u-spacing-20 u-accordion-1">
                        <div class="u-accordion-item">
                          <a class="active u-accordion-link u-border-1 u-border-active-grey-75 u-border-grey-15 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-black u-accordion-link-1" id="link-accordion-6327" aria-controls="accordion-6327" aria-selected="true">
                            <span class="u-accordion-link-text">게임을 환불할려면 어떻게 해야 하나요?</span><span class="u-accordion-link-icon u-icon u-text-black u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8021"></use></svg><svg class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-8021" style=""><path d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
                          </a>
                          <div class="u-accordion-active u-accordion-pane u-container-style u-accordion-pane-1" id="accordion-6327" aria-labelledby="link-accordion-6327">
                            <div class="u-container-layout u-container-layout-5">
                              <div class="fr-view u-clearfix u-rich-text u-text">
                                <p>&nbsp;먼저 고객지원에 가신다면 &nbsp;환불을 누르시고 원하는 게임을 선택한 다음 환불을 할수있습니다.</p>
                                <p>단 플레이 시간이 2시간 미만이어야 합니다</p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="u-accordion-item">
                          <a class="u-accordion-link u-border-1 u-border-active-grey-75 u-border-grey-15 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-black u-accordion-link-2" id="link-accordion-4aab" aria-controls="accordion-4aab" aria-selected="false">
                            <span class="u-accordion-link-text">구매하지도 않은 게임이 있으면 어떻게 해야 하나요</span><span class="u-accordion-link-icon u-icon u-text-black u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3470"></use></svg><svg class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-3470" style=""><path d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
                          </a>
                          <div class="u-accordion-pane u-container-style u-accordion-pane-2" id="accordion-4aab" aria-labelledby="link-accordion-4aab">
                            <div class="u-container-layout u-container-layout-6">
                              <div class="fr-view u-clearfix u-rich-text u-text">
                                <p>먼저 등록한 이메일을 확인 후 구매내역을 보시고 만약에 사지 않은 게임이거나 해당 국가 언어로 되어있지 않는다면 고겍 지원-기타 문의에서 등록하시면 해결해 드리겠습니다.</p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="u-accordion-item">
                          <a class="u-accordion-link u-border-1 u-border-active-grey-75 u-border-grey-15 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-black u-accordion-link-3" id="link-accordion-eb1f" aria-controls="accordion-eb1f" aria-selected="false">
                            <span class="u-accordion-link-text">게임이 실행이 안되요</span><span class="u-accordion-link-icon u-icon u-text-black u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e07d"></use></svg><svg class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-e07d" style=""><path d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
                          </a>
                          <div class="u-accordion-pane u-container-style u-accordion-pane-3" id="accordion-eb1f" aria-labelledby="link-accordion-eb1f">
                            <div class="u-container-layout u-container-layout-7">
                              <div class="fr-view u-clearfix u-rich-text u-text">
                                <p>게임이 실행이 안된다면 먼저 최소 사향을 확인해 주세요. 최소사향 보다 낮다면 실행이 안됩니다. 만약 최소사향보다 컴퓨터 성능이 좋다면 해당 게임 홈페이지 게시판에서 확인해주세요</p>
                                <p>
                                  <br>
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="u-accordion-item">
                          <a class="u-accordion-link u-border-1 u-border-active-grey-75 u-border-grey-15 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-black u-accordion-link-4" id="link-165d" aria-controls="165d" aria-selected="false">
                            <span class="u-accordion-link-text">이상한 게임이 상품등록이 되어 있어요</span><span class="u-accordion-link-icon u-icon u-text-black u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-c7af"></use></svg><svg class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-c7af"><path d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
                          </a>
                          <div class="u-accordion-pane u-container-style u-accordion-pane-4" id="165d" aria-labelledby="link-165d">
                            <div class="u-container-layout u-container-layout-8">
                              <div class="u-clearfix u-rich-text u-text">
                                <p>Answer. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id suscipit ex. Suspendisse rhoncus laoreet purus quis elementum. Phasellus sed efficitur dolor, et ultricies sapien. Quisque fringilla sit amet dolor commodo efficitur. Aliquam et sem odio. In ullamcorper nisi nunc, et molestie ipsum iaculis sit amet.</p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="u-accordion-item">
                          <a class="u-accordion-link u-border-1 u-border-active-grey-75 u-border-grey-15 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-black u-accordion-link-5" id="link-fd68" aria-controls="fd68" aria-selected="false">
                            <span class="u-accordion-link-text">결제가 안되요</span><span class="u-accordion-link-icon u-icon u-text-black u-icon-5"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-0457"></use></svg><svg class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-0457"><path d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
                          </a>
                          <div class="u-accordion-pane u-container-style u-accordion-pane-5" id="fd68" aria-labelledby="link-fd68">
                            <div class="u-container-layout u-container-layout-9">
                              <div class="fr-view u-clearfix u-rich-text u-text">
                                <p>먼저 해당정보가 맞는지 확인하고 만약에 맞는대 안된다면 해당 회사에 전화를 해주시면 됩니다.</p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="u-accordion-item">
                          <a class="u-accordion-link u-border-1 u-border-active-grey-75 u-border-grey-15 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-black u-accordion-link-6" id="link-9702" aria-controls="9702" aria-selected="false">
                            <span class="u-accordion-link-text">비밀번호를 모르겠어요</span><span class="u-accordion-link-icon u-icon u-text-black u-icon-6"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-62fd"></use></svg><svg class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-62fd"><path d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
                          </a>
                          <div class="u-accordion-pane u-container-style u-accordion-pane-6" id="9702" aria-labelledby="link-9702">
                            <div class="u-container-layout u-container-layout-10">
                              <div class="fr-view u-clearfix u-rich-text u-text">
                                <p>비밀번호를 모른다면 로그인창에 비밀번호 찾기를 누르면 비밀번호를 찾을 수 있습니다.</p>
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