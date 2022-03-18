<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리방 보다 힙한건 없다. GoZip</title>
</head>
<style>
img {
width: 200px;
height: 100px;
}
div{
height: 800px;
border: 1px solid black;
display: flex;
flex-direction: column;
align-items: center;
justify-content: center;
text-align: center;
}
input { 
background:transparent; 
border:none; 
border-bottom: solid 1px #ccc; 
font-size:14px; 
width:100%; 
margin: auto;
max-width: 100%;
padding: .5rem;
}

button {
width: 200px; 
padding: 7px; 
border: none; 
border-radius: 10px; 
color: white; 
font-weight: bold; 
background-color: #3a3a3a; 
cursor: pointer; 
outline: none;
}

</style>
<body>
	<!-- 세션 정보가 있으면 main.do 실행 -->
	<c:if test="${ sessionScope.member.id != null}">
		<script>
			location.href="main.do";
		</script>
	</c:if> 
	<div>
		<img alt="logo" src="/img/Gozip.png">
		<form action="login.do" method="post">
		<h2>우리방 보다 힙한건 없지</h2>
		<input type="text" name="id" id="userId" placeholder="아이디를 입력하세요"><br><br>
		<input type="password" name="passwd" id="userPw" placeholder="암호를 입력하세요"><br><br>
		<button>로그인</button>
	</form><br>
	<button onclick="location.href='signup.do'">회원가입</button>
	<br>
	<button onclick="location.href='find1.do'">아이디/비밀번호 찾기</button>
	</div>
</body>
</html>