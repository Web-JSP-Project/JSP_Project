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
    <link rel="stylesheet" href="./CSS/subBar.css">
    <link rel="stylesheet" href="./CSS/shoppingItem.css">
    <link rel="stylesheet" href="./CSS/nickName.css">
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
        #content #totalPrice{
            line-height: 100px;
        	font-size: 30px;
            float: right;
            color: white;
        }
        #content button{
            display: block;
            margin-top: 100px;
            width: 100%;
            height: 50px;
            font-size: 30px;
        }
    </style>
</head>
<body>

    <div id="header">
	    <%@include file="component/DropdownMenu.jsp" %>
	    <%@include file="component/nickName.jsp"%>
    </div>
    
    <div id="main">
        <%@include file="component/subBarStore.jsp"%>
        <div id="content">
        	<%@include file="component/shoppingItem.jsp"%>
        	<%@include file="component/shoppingItem.jsp"%>
        	<%@include file="component/shoppingItem.jsp"%>
        	<hr>
        	<span id="totalPrice">총 금액</span>
            <button>결제</button>
        </div>
    </div>

</body>
</html>