<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>

</style>
<meta charset="UTF-8">
<title>내 고집이들..</title>

<style>
* {
	margin: 0px;
	padding: 0px;
}

iframe {
display: flex;
flex-direction: column;
margin: 10px;
margin-bottom: 100px;
justify-content: center;
}

a {
	font-size: 15px;
	font-weight: bold;
}

section {
	margin: 0px auto;
	width: 1000px;
	padding-top: 100px;
	padding-bottom: 100px;
}

h3 {
	font-size: 30px;
	text-align: center;
}

table {
	border-collapse: collapse;
}

td {
	padding: 20px 128px 10px 0px;
}

td>img {
	width: 250px;
	height: 250px;
}

.recommend {
	margin-top: 100px;
	margin-bottom: 50px;
	width: 1000px;
}

.rocommend_youtube {
	margin-top: 100px;
}

p {
text-align: center;
font-weight: bold;
}
</style>

</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<section>
		<h3>내 구독자 목록</h3>
		<table>
			<tr>
				<td><img src="/img/profile0.png" style="border-radius: 25px">
					<p><a class="btn_popup" href="javascript:void(0);"
               onclick="window.open('follow.do', '_blank', 'top=140, left=300, width=500, height=600, menubar=no, toolbar=no, location=no, directories=no, status=no, scrollbars=no, copyhistory=no, resizable=no');"></a>나</p></td>
				<td><img src="/img/profile01.png" style="border-radius: 25px">
					<p>이상한 나라의..</p></td>
				<td><img src="/img/profile02.png" style="border-radius: 25px">
					<p>귀여운 여운이</p></td>
			</tr>
			<tr>
				<td><img src="/img/profile03.png" style="border-radius: 25px">
					<p>컴퓨터하는 돼지</p></td>
				<td><img src="/img/profile04.png" style="border-radius: 25px">
					<p>노을이</p></td>
				<td><img src="/img/profile05.png" style="border-radius: 25px">
					<p>한강고수부지미인</p></td>
			</tr>
		</table>
		<div class="recommend">
			<h3>추천 구독자</h3>
		</div>
		<table>
			<tr>
				<td><img src="/img/profile07.png" style="border-radius: 25px">
					<p>클럽나이트</p></td>
				<td><img src="/img/profile08.png" style="border-radius: 25px">
					<p>헤비곰돌</p></td>
				<td><img src="/img/profile09.png" style="border-radius: 25px">
					<p>뻣은 개구리</p></td>
			</tr>
		</table>
		<br>
		<div class="recommend_youtube">
			<h3>YOUTUBE 꿀팁</h3><br><br>
	<iframe width="1000" height="600" src="https://www.youtube.com/embed/pkmBtrfM-uE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
	</iframe>
	<iframe width="1000" height="600" src="https://www.youtube.com/embed/1qRApkUBUFk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
	</iframe>
	<iframe width="1000" height="600" src="https://www.youtube.com/embed/RTNDOM8_4VQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
	</iframe>
		</div>
	</section>
	<footer>
		<%@include file="/WEB-INF/views/foot.jsp"%>
	</footer>
</body>
</html>