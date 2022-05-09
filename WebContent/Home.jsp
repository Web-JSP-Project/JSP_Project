<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="./jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
		var $banner = $("#banner").find("ul");

		var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
		var $bannerHeight = $banner.children().outerHeight(); // 높이
		var $length = $banner.children().length;//이미지의 갯수
		var rollingId;

		//정해진 초마다 함수 실행
		rollingId = setInterval(function() { rollingStart(); }, 3000);//다음 이미지로 롤링 애니메이션 할 시간차
    
		function rollingStart() {
			$banner.css("width", $bannerWidth * $length + "px");
			$banner.css("height", $bannerHeight + "px");
			//alert(bannerHeight);
			//배너의 좌측 위치를 옮겨 준다.
			$banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
				//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:first").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			});
		}
        function clickRight(){
            $banner.animate({left: - $bannerWidth + "px"}, 500, function() { //숫자는 롤링 진행되는 시간이다.
				//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:first").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			});
        }
        function clickLeft(){
            $banner.animate({left: + $bannerWidth + "px"}, 500, function() { //숫자는 롤링 진행되는 시간이다.
				//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
				$(this).prepend("<li>" + $(this).find("li:last").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:last").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			});
        }
        $("#imgLeft").click(clickLeft);
        $("#imgRight").click(clickRight);   
	});     
    </script>
    <style>
        body{
            background-color: gray;
            margin-left: 0;
            margin-right: 0;
            margin-top: 0;
        }
        #header{
            background-color: #171a21;
            margin-bottom: 30px;
            padding: 0px 30px;
        }
        #navigation{
            height: 70px;
        }
        #navigation a{
            text-decoration: none;
            color: #c5c3c0;
        }
        #navigation img{
            height: 70px;
            float: left;
        }
        #navigation ul{
            list-style: none;
            height: 80px;
            margin: 0;
            margin-left: 200px;
            font-size: 20px;
        }
        #navigation li{
            float: left;
            margin-right: 30px;
            margin-top: 30px;
        }
        #navigation li ul{
            display: none;
            position: absolute;
            padding: 0;
            margin: 0;
        }
        #navigation li li{
            float: none;
            padding: 0;
            margin-top: 10px;
        }
        #navigation ul li ul {
            color: #171a21;
        }
        #navigation ul li:hover{
            background-color: black;
            color: white;
        }
        #navigation ul li ul a:hover{
            color: white;
        }
        #navigation li:hover ul{
            display: block;
        }
        #join{
            float: right;
            margin-top: 30px;
        }
        #join span{
            padding: 0px 20px;
        }
        #main #subBar{
            float: left;
            width: 200px;
            height: 500px;
            background-color: lightblue;
        }
        #main #content{
            float: right;
            background-color: lightgrey;
            width: 70%;
            height: 500px;
        }
        #main #content #banner{
            position: relative; 
            width: 340px; 
            height: 210px; 
            margin:0 auto; 
            padding:0; 
            overflow: hidden;   
        }
        #main #content #banner ul{
            position: absolute;
            margin: 0px;
            padding:0;
            list-style: none;
        }
        #main #content #banner ul li{
            float: left;
            width: 340px; 
            height: 210px; 
            margin:0; 
            padding:0;
            text-align: center;
            line-height: auto;
        }
        #main #content span img{
            width: 30px;
            height: 50px;
            margin: auto 0;
        }
        #main #content #imgLeft{
            float: left;

        }
        #main #content #imgRight{
            float: right;
        }


    </style>
</head>
<body>
    <div id="header">
        <div id="navigation">
            <img src="img/logo.png" alt="">
            <ul>
                <li>
                    <a href="#">상점</a>
                    <ul>
                        <li><a href="#">주제별</a></li>
                        <li><a href="#">금액별</a></li>
                        <li><a href="#">인기순</a></li>
                        <li><a href="#">최신순</a></li>
                    </ul>
                </li>
                <li><a href="#">라이브러리</a></li>
                <li>
                    <a href="#">게시판</a>
                    <ul>
                        <li><a href="#">자유게시판</a></li>
                        <li><a href="#">자료게시판</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">고객지원</a>
                    <ul>
                        <li><a href="#">FnQ</a></li>
                        <li><a href="#">QnA</a></li>
                    </ul>
                </li>
                <div id="join">
                    <span><a href="#">로그인</a></span>
                    <span><a href="#">회원가입</a></span>
                </div>
            </ul>
        </div>
    </div>
    <div id="main">
        <div id="subBar">

        </div>
        <div id="content">
                <div id="banner">
                <ul>
                    <li><img src="img/red.png"></li>
                    <li><img src="img/green.png"></li>
                    <li><img src="img/blue.png"></li>
                </ul>
            </div>
            <span id="imgLeft" class="imgArrow"><img src="img/left.png"></span>
            <span id="imgRight" class="imgArrow"><img src="img/right.png"></span>
        </div>
    </div>
</body>
</html>