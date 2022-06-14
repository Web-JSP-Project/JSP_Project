<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../../CSS/body.css">
    <link rel="stylesheet" href="../../CSS/DropdownMenu.css">
    <link rel="stylesheet" href="../../CSS/member.css">
    <link rel="stylesheet" href="../../CSS/subBar.css">
    <link rel="stylesheet" href="../../CSS/boardItem.css">
    <link rel="stylesheet" href="../../CSS/comment.css">
    <link rel="stylesheet" href="../../CSS/commentInsert.css">
    <link rel="stylesheet" href="../../CSS/nickName.css">
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
        #main hr{
        	margin: 20px 0;
        }
        #main #content{
            float:right;
        }
        #main #boardMain{
        	display:flex;
        	margin-bottom:20px;
        }
        #conetnt #commentList{
        }
</style>
</head>
<body>

    <div id="header">
	    <%@include file="../../component/DropdownMenu.jsp" %>
	    <%
			String nickName = (String) session.getAttribute("nickName");
	    	if(nickName != null){
	    		%><%@include file="../../component/nickName.jsp"%><%
	    	}
	    	else{ %><%@include file="../../component/member.jsp"%><%}
	    %>
    </div>
    <div id="main">
        <%@include file="../../component/subBarBoard.jsp"%>
        <div id="content">
        	<div id="boardMain">
            	<%@include file="../../component/boardItem.jsp" %>
            </div>
            <hr>
            <div id="commentList">
            	<%@include file="../../component/comment.jsp" %>
            	<%@include file="../../component/comment.jsp" %>
            	<%@include file="../../component/comment.jsp" %>
            	<%@include file="../../component/comment.jsp" %>
            </div>
            <hr>
            <div id="commentInsertForm">
            	<%@include file="../../component/commentInsert.jsp" %>
            	
            </div>
        </div>

    </div>

</body>
</html>