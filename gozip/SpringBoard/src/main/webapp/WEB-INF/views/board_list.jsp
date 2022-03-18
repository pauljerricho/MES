<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/board_list.css" rel="stylesheet" type="text/css">
<title>우리방 보다 힙한건 없다. GoZip</title>
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
	
	$('nav li').hover(
			  function() {
			    $('ul', this).stop().slideDown(200);
			  },
			    function() {
			    $('ul', this).stop().slideUp(200);
			  }
	);
</script>
</head>
<body>
	<c:if test="${sessionScope.member.id==null}">
		<script>
			alert('로그인해야 이용하실수 있습니다.');
			location.href = '/';
		</script>
	</c:if>
<div class="board_wrap">
<img alt="" src="/img/interior.jpg">	

<nav>
  <div class="container">
    <ul>
      <li><a href="redirect.do">Home</a></li>
      <li><a href="notice.do">공지사항</a></li>
      <li><a href="show.do">자랑하기</a></li>
      <li><a href="writeView.do">게시글 등록</a></li>
    </ul>
  </div>
</nav>
<div class="content">
        <div class="board_title">
		</div>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">작성자</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                    <div class="count">좋아요</div>
                </div>
                <c:forEach var="board" items="${requestScope.list}"><div>
				<div class="num">${board.b_no}</div>
				<div class="title"><a href="boardView.do?b_no=${board.b_no}">${board.b_title}</a></div>
				<div class="writer">${board.id}</div>
				<div class="date">${board.b_date}</div>
				<div class="count">${board.b_view}</div>
				<div class="count">${board.b_like}</div>
				</div>
				</c:forEach>
            </div>
            <c:if test="${requestScope.pagging!=null}">
			<div class="board_page">
				<div><c:if test="${requestScope.pagging.isPriviousPageGroup() }">
						<a href="board.do?page=${requestScope.pagging.getStartPageofPageGroup()-1 }">◀</a> &nbsp;
						</c:if> <c:forEach var="i"
						begin="${requestScope.pagging.getStartPageofPageGroup() }"
						end="${requestScope.pagging.getEndPageOfPageGroup() }">
						<c:choose>
							<c:when test="${i==requestScope.pagging.currentPageNo }">
						${i}&nbsp;
					</c:when>
							<c:otherwise>
								<a href="board.do?page=${i }">${i }</a>&nbsp;
					</c:otherwise>
						</c:choose>
					</c:forEach> <c:if test="${requestScope.pagging.isNextPageGroup() }">
						<a
							href="board.do?page=${requestScope.pagging.getEndPageOfPageGroup()+1}">▶</a>
					</c:if></div>
			</div>
		</c:if>
		<br>
    </div><br>
</body>
</html>











