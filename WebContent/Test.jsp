<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 전체영역에서 여백을 없애줌 */
* {
		margin: 0;
		padding: 0;
	}
/* ul li태그에 리스트 스타일을 없앰 */
#dropDownMenu ul li{
		list-style: none;
	}
/* a태그에 텍스트 밑줄을 없애고 색상을 #333 */
	#dropDownMenu a {
		text-decoration: none;
		color:#c5c3c0;
	}
/* 글자크기를 16px 맑은 고딕 굵게하고 width넓이 700, 높이 50만큼 배경색은 #ccc, 글자색은 검정색, 라인높이50px
menu박스 가운데정렬, 글자가운데 정렬 */
	#dropDownMenu {
		font:bold 16px "malgun gothic";
		width:700px;
		height:50px;
		background: #171a21;
		color:black;
		line-height: 50px; 
		text-align: center;
	}

    #dropDownMenu img{
        height: 50px;
    }

/* menu태그 자식의 ul의 자식 li를 왼쪽정렬과 넓이 140설정 */
	#dropDownMenu > ul > li {
		float:left;
		width:140px;
		position:relative;
	}
    #dropDownMenu > ul > li > ul {
		width:130px;
		display:none;
		position: absolute;
		font-size:14px;
		background: #171a21;
	}
    #dropDownMenu ul li:hover ul {
		display:block;
	}
        


    #dropDownMenu ul li a:hover{
        color: white;
	}
    
    #dropDownMenu ul li ul li a:hover{
        color: white;
		}
 </style>
</head>
<body>
<%@include file="DropdownMenu.jsp" %>
</body>
</html>