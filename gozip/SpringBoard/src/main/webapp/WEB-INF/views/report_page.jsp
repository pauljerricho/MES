<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 관리</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
* {
	margin: 0px;
	padding: 0px;
}

th {
	background-color: #e7e7e7;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
	width: 80%;
	text-align: center;
	margin-top: 110px;
	margin-bottom: 200px;
}

tr {
	border-bottom: 1px solid black;
	font-size: 18px;
}

h3 {
	margin-bottom: 40px;
}

.commu-wrap {
	margin: 0 auto;
	padding: 10px 0 0 0;
	width: 1180px;
}

.commu-nav {
	display: flex;
}

.commu-content nav ul {
	display: flex;
	flex-direction: row;
	background: #999;
}

li {
	display: block;
	position: relative;
	line-height: 40px;
	float: left;
	padding: 0 15px;
}

.num {
	width: 10%
}

.title {
	width: 55%
}

.writer {
	width: 20%
}

.date {
	width: 15%
}

.content-title {
	text-align: left;
}

.content-title img {
	width: 12 px;
	height: 12px;
}

.board-bottom {
	width: 1280px;
	text-align: center;
	margin-top: 40px;
	margin-left: 25%;
}
section a{
	color: black;
}

.title-link {
	display: block;
}
</style>
<script>
	$(function() {
		$("content-title").click(function() {
			location.href = 'post_page.do';
		});
	});
</script>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<div class="commu-wrap">
		<h3>관리자 페이지</h3>
		<section class=commu-content>
			<nav id="commu-nav">
				<ul>
					<li><a href="post_page.do">게시글 관리</a>
					<li><a href="comment_page.do">댓글 관리</a>
					<li><a href="member_page.do">회원 관리</a>
					<li><a href="company_page.do">업체 관리</a>
					<li><a href="report_page.do">신고 관리</a>
				</ul>
			</nav>
			<article>
				<section class="commu-left">
					<div></div>
				</section>
			</article>
			<article class="request-body">
				<div class="board-list">
					<table>
						<thead>
							<tr>
								<th class="num">번호</th>
								<th class="title">제목</th>
								<th class="writer">글쓴이</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="report" items="${requestScope.list}">
								<tr class>
									<td class="num"><span>1</span></td>
									<td class="content-title">
										<div class="text-wrap"><a>${report.r_content}</a></div>
										<div>
											<span con-icon board-img photo></span>
									</td>
									<td class="user"><span class="user">${report.id}</span></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<c:if test="${requestScope.pagging!=null}">
				<div class="report_paging">
				<div><c:if test="${requestScope.pagging.isPriviousPageGroup() }">
						<a href="report_page.do?page=${requestScope.pagging.getStartPageofPageGroup()-1 }">◀</a> &nbsp;
						</c:if> <c:forEach var="i"
						begin="${requestScope.pagging.getStartPageofPageGroup() }"
						end="${requestScope.pagging.getEndPageOfPageGroup() }">
						<c:choose>
							<c:when test="${i==requestScope.pagging.currentPageNo }">
						${i}&nbsp;
					</c:when>
							<c:otherwise>
								<a href="report_page.do?page=${i}">${i}</a>&nbsp;
					</c:otherwise>
						</c:choose>
					</c:forEach> <c:if test="${requestScope.pagging.isNextPageGroup() }">
						<a
							href="report_page.do?page=${requestScope.pagging.getEndPageOfPageGroup()+1}">▶</a>
					</c:if></div>
			</div>
		</c:if>
				</div>
			</article>
		</section>
		<footer>
			<%@include file="/WEB-INF/views/foot.jsp"%>
		</footer>
	</div>
</body>
</html>