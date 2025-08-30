<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리방 보다 힙한건 없다. GoZip</title>
<style type="text/css">
img {
	width: 200px;
	height: 100px;
}

header {
	width: 1200px;
	margin: 0 auto;
}

h2 {
	text-align: center;
}

table {
	font-weight: bold;
	border-collapse: collapse;
	table-layout: fixed;
	width: 1200px;
	margin: 0 auto;
}

th, td {
	border: 1px solid black;
	text-align: center;
}

.title {
	width: 600px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	text-align: left;
}

.profile {
	margin-left:1050px;
	position: relative;
	text-align: center; 
	border : 2px solid black;
	font-size: 13px;
	font-weight: bold;
	border: 5px dashed black;
	border-radius: 10px;
	width: 180px;
	height: 200px;
}

.profile > img {
	width: 100px;
	height: 100px;
}
a:link {
	text-decoration: none;
	text-shadow: 0 0 24px;
}

button {
	margin-top: 20px;
	width:70px;
	background-color: #3a3a3a;
	color:white;
	border: none;
	position: relative;
	height: 30px;
	font-size: 0.8em;
	font-weight: bold;
	padding: 0 0.7em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}

button:hover {
	background: #fff;
	color: black;
}

button:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background-color: #3a3a3a;
	transition: 400ms ease all;
}

button:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function() {
		$("#btnSearch").click(
				function() {
					var data = "kind=" + $("#kind").val() + "&search="
							+ $("#txtSearch").val();
					location.href = "search.do?" + data;
				});
	});
</script>
</head>
<body>

	<c:if test="${sessionScope.member.id==null}">
		<script>
			alert('로그인해야 이용하실수 있습니다.');
			location.href = '/';
		</script>

	</c:if>
	<h2>게시판 이름</h2>
	<header>
		<div class="profile">
			<img alt="logo" src="/img/cs.png"><br>
			${sessionScope.member.id}님<br>환영합니다.<br>
			<button onclick="location.href='logout.do'">로그아웃</button>
			<button onclick="location.href='.do'">수정</button>
		</div>
	</header>
	<hr>
	<table>
		<tr>
			<td colspan="7"><a href="writeView.do">글쓰기</a></td>
		</tr>
		<tr>
			<th>글번호</th>
			<th class="title">제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
			<th>좋아요</th>
			<th>싫어요</th>
		</tr>
		<c:forEach var="board" items="${requestScope.list}">
			<tr>
				<td>${board.bno}</td>
				<td class="title"><a href="boardView.do?bno=${board.bno}">${board.title}</a>
				</td>
				<td>${board.writer}</td>
				<td>${board.bdate}</td>
				<td>${board.bcount}</td>
				<td>${board.blike}</td>
				<td>${board.bhate}</td>
			</tr>
		</c:forEach>
		<c:if test="${requestScope.pagging!=null}">
			<tr>
				<td colspan="7"><c:if
						test="${requestScope.pagging.isPriviousPageGroup() }">
						<a
							href="main.do?page=${requestScope.pagging.getStartPageofPageGroup()-1 }"><<</a>&nbsp;
			</c:if> <c:forEach var="i"
						begin="${requestScope.pagging.getStartPageofPageGroup() }"
						end="${requestScope.pagging.getEndPageOfPageGroup() }">
						<c:choose>
							<c:when test="${i==requestScope.pagging.currentPageNo }">
						${i}&nbsp;
					</c:when>
							<c:otherwise>
								<a href="main.do?page=${i }">${i }</a>&nbsp;
					</c:otherwise>
						</c:choose>
					</c:forEach> <c:if test="${requestScope.pagging.isNextPageGroup() }">
						<a
							href="main.do?page=${requestScope.pagging.getEndPageOfPageGroup()+1}">>></a>
					</c:if></td>
			</tr>
		</c:if>
		<tr>
			<td colspan="7"><select id="kind">
					<option value="id">아이디</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
			</select> <input type="text" id="txtSearch">
			<button id="btnSearch">검색</button></td>
		</tr>
	</table>
</body>
</html>











