<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./CSS/body.css">
    <link rel="stylesheet" href="./CSS/DropdownMenu.css">
    <link rel="stylesheet" href="./CSS/member.css">
    <link rel="stylesheet" href="./CSS/subBar.css">
    <link rel="stylesheet" href="./CSS/banner.css">
    <link rel="stylesheet" href="./CSS/bannerContent.css">
    <style>
        #header{
            height: 50px;
            background-color: #171a21;
            padding: 25px 100px;
		font:bold 16px "malgun gothic";
        }
        #main{
            margin: 50px 100px;
        }
        #content{
            float: right;
        }
    </style>
</head>
<body>
    <div id="header">
	    <%@include file="component/DropdownMenu.jsp" %>
        <%@include file="component/member.jsp"%>
    </div>
    <div id="main">
        <%@include file="component/subBarStore.jsp"%>
        <div id="content">
            <%@include file="component/banner.jsp" %>
            <%@include file="component/bannerContent.jsp" %>
        </div>

    </div>
</body>
</html>