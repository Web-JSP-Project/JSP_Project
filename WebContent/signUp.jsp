<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="./CSS/body.css">
    <link rel="stylesheet" href="./CSS/DropdownMenu.css">
    <link rel="stylesheet" href="./CSS/member.css">
    <link rel="stylesheet" href="./CSS/signUp.css">
    <style>
        #header{
            height: 50px;
            background-color: #171a21;
            padding: 25px 100px;
		font:bold 16px "malgun gothic";
        }
        #main{
            margin: 50px 100px;
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>
    <div id="header">
	    <%@include file="component/DropdownMenu.jsp" %>
        <%@include file="component/member.jsp"%>
    </div>
    <div id="main">
        <%@include file="component/signUp.jsp"%>
    </div>

</body>
</html>