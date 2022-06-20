<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	ArrayList<Integer> arr = new ArrayList<Integer>();
	arr.add(1);
	arr.add(2);
	arr.add(3);
	arr.add(4);
	arr.add(5);
	arr.add(6);
	arr.add(7);
	arr.add(8);
	arr.add(9);

	pageContext.setAttribute("arr", arr);
	pageContext.setAttribute("size", arr.size());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	for(int i=0; i<arr.size();i++){
		out.print(arr.get(i));
	}
%>
<br>

a
<c:forEach var="i" begin="1" end="${size }" >
	${i }
	<c:if test="${i%3 == 0 }">
		<c:if test="${i<size }">
		b a
		</c:if>
		<c:if test="${i>=size }">
		b
		</c:if>
	</c:if>
</c:forEach>
</body>
</html>