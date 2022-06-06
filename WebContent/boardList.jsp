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
    <link rel="stylesheet" href="./CSS/boardList.css">
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
        #content #boardList{
        	width: 1050px;
            float: right;
        }
    </style>
</head>
<body>
    <div id="header">
	    <%@include file="component/DropdownMenu.jsp" %>
	    <%
			String nickName = (String) session.getAttribute("nickName");
	    	if(nickName != null){
	    		%><%@include file="component/nickName.jsp"%><%
	    	}
	    	else{ %><%@include file="component/member.jsp"%><%}
	    %>
    </div>
    <div id="main">
        <%@include file="component/subBarBoard.jsp"%>
        <div id="content">
            <%@include file="component/boardList.jsp" %>
        </div>

    </div>

</body>
</html>