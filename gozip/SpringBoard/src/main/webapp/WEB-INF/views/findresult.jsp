<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>찾기 결과는?</title>
</head>
<style>
img {
width: 200px;
height: 200px;
}
.container{
text-align: center;
border: 2px solid black;
width: 300px;
margin: 0 auto;
margin-top: 200px;
}
</style>
<body>
<div class="container">
<img alt="" src="/img/find.png">
<c:if test="${not empty sessionScope.id}">
<h4>찾으시는 아이디<br><br>${sessionScope.id}</h4>
</c:if>
<c:if test="${not empty sessionScope.passwd}">
<h4>찾으시는 비밀번호<br>${sessionScope.passwd}</h4>
</c:if>
<%
session.invalidate();
%>
</div>
</body>
</html>