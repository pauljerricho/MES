<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<style>
h2 {
	text-align: center;
	}
.container{
	margin: 0 auto;
	width: 400px;
	}
	
.container *{
	display: flex;
	flex-direction: column;
	font-weight: bold;
	align-items: center;
	}
.container img {
	width: 100px;
	height: 100px;
	}

input { 
	background:transparent; 
	border:none; 
	border-bottom: solid 1px #ccc; 
	font-size:14px; 
	width:100%; 
	margin-bottom: 20px;
	max-width: 100%;
	padding: .5rem;
	}

button {
	width: 400px; 
	padding: 7px; 
	border: none; 
	border-radius: 10px; 
	color: white; 
	font-weight: bold; 
	background-color: #3a3a3a; 
	cursor: pointer; 
	outline: none;
	}
	
textarea {
	width: 100%;
	height: 300px;
	line-height: 150%;
	resize:vertical;
	font-size: 12px;
	}
	
input:hover, textarea:hover,
input:focus, textarea:focus {
background-color:white;
	}
</style>
</head>
<body>
	<c:if test="${sessionScope.member==null}">
		<script>
			alert('로그인해야 이용하실수 있습니다.');
			location.href='/';
		</script>
	</c:if>
	<div class="container">
	<img alt="" src="/img/write.png">
	<h2>글 한번 써봅시다!</h2>
	<form action="write.do">
		<input type="text" name="id" value="${sessionScope.member.id}" readonly="readonly"><br>
		<input type="text" name="title" placeholder="제목을 입력하세요" required><br>
		<textarea name="content" id="content" placeholder="내용을 입력하세요" required></textarea><br>
		<button>글쓰기</button><br>
		<button type="button" onclick="history.back();">취소</button>
	</form>
	</div>
</body>
</html>





