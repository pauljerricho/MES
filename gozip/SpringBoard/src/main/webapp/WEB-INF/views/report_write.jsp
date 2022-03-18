<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고페이지</title>
<style>
	.report_title{
		display: flex;
		justify-content: center;
	}

	img {
		width: 50px;
		height: 50px;
	}
	h2 {
		text-align: center;
	}
	form{
		width: 400px;
		margin : 0 auto;
	}
	form *{
		width: 100%;
		font-size: 20px;
		margin-bottom: 10px;
		padding:10px;
		box-sizing: border-box;
	}
	textarea {
		height: 300px;
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
	<div class="report_title">
	<img alt="" src="/img/report.png">
	<h3>신고하기</h3>
	<img alt="" src="/img/report.png">
	</div>
	<form action="report_write.do">
		신고할 사람!
		<input type="text" name="id" value="${param.writer}" readonly="readonly">
		<input type="text" name="title" placeholder="제목을 입력하세요" required>
		<textarea name="content" placeholder="사유를 입력하세요" required></textarea>
		<button>글쓰기</button>
		<button type="button" onclick="window.close()">취소</button>
	</form>
</body>
</html>





