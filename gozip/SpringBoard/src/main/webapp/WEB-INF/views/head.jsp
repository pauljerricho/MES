<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
* {
	margin: 0px;
	padding: 0px;
	background: #ffffdd;
}

header {
	margin: 0px auto;
	margin-top: 10px;
	width: 1000px;
	display: flex;
	flex-direction: row;
	box-sizing: border-box;
	font-weight: bold;
	color: black;
}

#btn {
	width: 100px;
	margin-top: 25px;
}

#img {
	width: 600px;
	height: 70px;
	text-align: center;
}

#img>img {
	width: 120px;
	height: 70px;
}

#member {
	width: 200px;
	margin-top: 25px;
	text-align: right;
}

a {
	text-decoration: none;
	font-size: 15px;
	color: gray;
	padding: 0px 5px 0px 5px;
}
</style>

</head>
<body>
	<header>
		<div id="btn">
			<a href="/">HOME</a>
		</div>
		<div id="btn">
			<a href="#" onClick="history.back()">BACK</a>
		</div>
		<p>&nbsp;</p>
		<div id="img">
			<img src="/img/final_logo.png" onclick="location.href='boardreset.do'">
		</div>
		
		<p>&nbsp;</p>
		<div id="member">
			<c:if test="${empty sessionScope.member.id}">
			<a href="log.do">로그인</a>|<a href="register.do">회원가입</a></c:if>
			<c:if test="${not empty sessionScope.member.id}">
			<a href="logout.do">로그아웃</a></c:if>
		</div>
	</header>
</body>
</html>