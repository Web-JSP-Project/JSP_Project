<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<header class="u-clearfix u-header u-header" id="sec-09f0">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="index.index" class="u-image u-logo u-image-1" data-image-width="1920" data-image-height="1440">
				<img src="${pageContext.request.contextPath}/img/logo.png" class="u-logo-image u-logo-image-1">
			</a>
			<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
				<div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px; font-weight: 700;">
					<a class="u-button-style u-custom-border u-custom-border-color u-custom-borders u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="#"> <svg class="u-svg-link" viewBox="0 0 24 24">
							<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use>
						</svg> <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px"
							y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg">
							<g>
								<rect y="1" width="16" height="2"></rect>
								<rect y="7" width="16" height="2"></rect>
								<rect y="13" width="16" height="2"></rect>
							</g>
						</svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<ul class="u-nav u-spacing-20 u-unstyled u-nav-1">
						<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-palette-2-base"
								href="store.g" style="padding: 10px;">상점</a>
							<div class="u-nav-popup">
								<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white">최신순</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white">인기순</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white">금액별</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white">주제별</a></li>
								</ul>
							</div>
						</li>
						<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-palette-2-base"
								href="library.g" style="padding: 10px;">라이브러리</a></li>
						<li class="u-nav-item"><a href="freeBoard.b"
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-palette-2-base"
								style="padding: 10px;">게시판</a>
							<div class="u-nav-popup">
								<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white"
											href="freeBoard.b">자유게시판</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white"
											href="dataBoard.b">자료 게시판</a></li>
								</ul>
							</div>
						</li>
						<li class="u-nav-item"><a href="faq.i"
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-palette-2-base"
								style="padding: 10px;">고객지원</a>
							<div class="u-nav-popup">
								<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white"
											href="faq.i">FaQ</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white"
											href="qna.i">QnA</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
						<div class="u-inner-container-layout u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-5">
								<li class="u-nav-item"><a class="u-button-style u-nav-link" href="store.g">상점</a>
									<div class="u-nav-popup">
										<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
											<li class="u-nav-item"><a class="u-button-style u-nav-link">최신순</a></li>
											<li class="u-nav-item"><a class="u-button-style u-nav-link">인기순</a></li>
											<li class="u-nav-item"><a class="u-button-style u-nav-link">금액별</a></li>
											<li class="u-nav-item"><a class="u-button-style u-nav-link">주제별</a></li>
										</ul>
									</div>
								</li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link" href="library.g">라이브러리</a>
								</li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link" href="freeBoard.b">게시판</a>
									<div class="u-nav-popup">
										<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
											<li class="u-nav-item"><a href="freeBoard.b"
													class="u-button-style u-nav-link">자유게시판</a></li>
											<li class="u-nav-item"><a href="dataBoard.b"
													class="u-button-style u-nav-link">자료 게시판</a></li>
										</ul>
									</div>
								</li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link" href="faq.i">고객지원</a>
									<div class="u-nav-popup">
										<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
											<li class="u-nav-item"><a class="u-button-style u-nav-link"
													href="faq.i">FaQ</a></li>
											<li class="u-nav-item"><a class="u-button-style u-nav-link"
													href="qna.i">QnA</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
			<nav class="u-align-right u-menu u-menu-dropdown u-offcanvas u-menu-2" data-position="">
				<div class="menu-collapse">
					<a class="u-button-style u-nav-link" href="#"> <svg class="u-svg-link" viewBox="0 0 24 24">
							<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f3c2"></use>
						</svg> <svg class="u-svg-content" version="1.1" id="svg-f3c2" viewBox="0 0 16 16" x="0px"
							y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg">
							<g>
								<rect y="1" width="16" height="2"></rect>
								<rect y="7" width="16" height="2"></rect>
								<rect y="13" width="16" height="2"></rect>
							</g>
						</svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<ul class="u-nav u-unstyled">
						<li class="u-nav-item"><a class="u-button-style u-nav-link" href="#"
								style="padding: 10px 14px;">${sessionScope.nickName}</a>
							<div class="u-nav-popup">
								<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white">프로필</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white">라이브러리</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="logout.u">로그아웃</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
						<div class="u-inner-container-layout u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-11">
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
										href="store.g">${sessionScope.profileImg}</a>
									<div class="u-nav-popup">
										<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
											<li class="u-nav-item"><a class="u-button-style u-nav-link">프로필</a></li>
											<li class="u-nav-item"><a class="u-button-style u-nav-link">라이브러리</a></li>

											<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="logout.u">로그아웃</a>
											</li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
			<img class="u-image u-image-round u-radius-10 u-image-2" alt="" data-image-width="384"
				data-image-height="322" src="${pageContext.request.contextPath}/gameImg/${sessionScope.profileImg}">
		</div>
	</header>