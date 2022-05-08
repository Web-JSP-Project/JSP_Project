<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="./jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
		var $banner = $("#banner").find("ul");

		var $bannerWidth = $banner.children().outerWidth();//�̹����� ��
		var $bannerHeight = $banner.children().outerHeight(); // ����
		var $length = $banner.children().length;//�̹����� ����
		var rollingId;

		//������ �ʸ��� �Լ� ����
		rollingId = setInterval(function() { rollingStart(); }, 3000);//���� �̹����� �Ѹ� �ִϸ��̼� �� �ð���
    
		function rollingStart() {
			$banner.css("width", $bannerWidth * $length + "px");
			$banner.css("height", $bannerHeight + "px");
			//alert(bannerHeight);
			//����� ���� ��ġ�� �Ű� �ش�.
			$banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //���ڴ� �Ѹ� ����Ǵ� �ð��̴�.
				//ù��° �̹����� ������ ���� ����(�̵��� �ƴ϶� ����)�ؼ� �߰��Ѵ�.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//�ڷ� ����� ù���� �̹����� �ʿ� ������ �����Ѵ�.
				$(this).find("li:first").remove();
				//���� �������� ���ؼ� ��� ������ ��ġ���� �ʱ�ȭ �Ѵ�.
				$(this).css("left", 0);
				//�� ������ �ݺ��ϸ鼭 ��� �Ѹ��ϴ� ��ʸ� ���� �� �ִ�.
			});
		}
        function clickRight(){
            $banner.animate({left: - $bannerWidth + "px"}, 500, function() { //���ڴ� �Ѹ� ����Ǵ� �ð��̴�.
				//ù��° �̹����� ������ ���� ����(�̵��� �ƴ϶� ����)�ؼ� �߰��Ѵ�.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//�ڷ� ����� ù���� �̹����� �ʿ� ������ �����Ѵ�.
				$(this).find("li:first").remove();
				//���� �������� ���ؼ� ��� ������ ��ġ���� �ʱ�ȭ �Ѵ�.
				$(this).css("left", 0);
				//�� ������ �ݺ��ϸ鼭 ��� �Ѹ��ϴ� ��ʸ� ���� �� �ִ�.
			});
        }
        function clickLeft(){
            $banner.animate({left: + $bannerWidth + "px"}, 500, function() { //���ڴ� �Ѹ� ����Ǵ� �ð��̴�.
				//ù��° �̹����� ������ ���� ����(�̵��� �ƴ϶� ����)�ؼ� �߰��Ѵ�.
				$(this).prepend("<li>" + $(this).find("li:last").html() + "</li>");
				//�ڷ� ����� ù���� �̹����� �ʿ� ������ �����Ѵ�.
				$(this).find("li:last").remove();
				//���� �������� ���ؼ� ��� ������ ��ġ���� �ʱ�ȭ �Ѵ�.
				$(this).css("left", 0);
				//�� ������ �ݺ��ϸ鼭 ��� �Ѹ��ϴ� ��ʸ� ���� �� �ִ�.
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
                    <a href="#">����</a>
                    <ul>
                        <li><a href="#">������</a></li>
                        <li><a href="#">�ݾ׺�</a></li>
                        <li><a href="#">�α��</a></li>
                        <li><a href="#">�ֽż�</a></li>
                    </ul>
                </li>
                <li><a href="#">���̺귯��</a></li>
                <li>
                    <a href="#">�Խ���</a>
                    <ul>
                        <li><a href="#">�����Խ���</a></li>
                        <li><a href="#">�ڷ�Խ���</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">������</a>
                    <ul>
                        <li><a href="#">FnQ</a></li>
                        <li><a href="#">QnA</a></li>
                    </ul>
                </li>
                <div id="join">
                    <span><a href="#">�α���</a></span>
                    <span><a href="#">ȸ������</a></span>
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