<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/ask.css" rel="stylesheet" type="text/css">
<title>의뢰하기</title>
<!-- CSS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<div id="wrap" class="wrap_home">
		<div id="container">
			<div class="container_wrap">
				<div class="section_spot">
					<div class="best_ask_wrap">
						<div class="best ask1">
							<div class="best_background">
								<img src="/img/board60.jpg">
							</div>
							<a><p class="description">${requestScope.list[0].a_title}</p></a>
							<!-- description 영역 -->
						</div>
						<!-- best_ask1 영역 -->
						<div class="best ask2">
							<div class="best_background">
								<img src="/img/cont02.jpg">
							</div>
							<p class="description">질문02</p>
							<!-- description 영역 -->
							</a>
						</div>
						<!-- best_ask2 영역 -->
						<div class="best ask3">
							<div class="best_background">
								<img src="/img/cont03.jpg">
							</div>
							<p class="description">질문03</p>
							<!-- description 영역 -->
							</a>
						</div>
						<!-- best_ask3 영역 -->
					</div>
					<!-- best_ask_wrap 영역 -->
					<div class="side_right">
						<ul class="side content01">
							<li class="scont1"><a href=""
								style="background-image: url('/img/cont04.jpg'); background-size: cover; background-repeat: no-repeat;">
							</a></li>
						</ul>
					</div>
					<!-- side_right 영역 -->
				</div>
				<!-- .section_spot 영역 -->
				<div class="section_ask">
					<div class="container_content_left">
						<div class="stats_area">
							<div class="section_head section_headings">
								<h4 class="section_head_title">많이 본 ASK</h4>
							</div>
							<!-- section_head 영역 -->
						</div>
						<!-- section_head 영역 -->
						<div class="ranking_section">
							<div class="ranking_list_area">
								<ul class="ranking_list">
									<li class="ranking_item _item1"><span class="no">1</span>
										<a href="answer.do" class="ranking_title">${requestScope.list[0].a_title}</a>
										<a href="" class="ranking_text text">${requestScope.list[0].a_content}</a></li>
									<!-- ranking_item_item1 -->
									<li class="ranking_item _item2"><span class="no">2</span>
										<a href="" class="ranking_title">${requestScope.list[1].a_title}</a>
										<a href="" class="ranking_text">${requestScope.list[1].a_content}</a></li>
									<!-- ranking_item_item2 -->
									<li class="ranking_item _item3"><span class="no">3</span>
										<a href="" class="ranking_title">${requestScope.list[2].a_title}</a>
										<a href="" class="ranking_text">${requestScope.list[2].a_content}</a></li>
									<!-- ranking_item_item3 -->
								</ul>
								<ul class="ranking_list">
									<li class="ranking_item _item4"><span class="no">4</span>
										<a href="" class="ranking_title">${requestScope.list[3].a_title}</a>
										<a href="" class="ranking_text">${requestScope.list[3].a_content}</a></li>
									<!-- ranking_item_item4 -->
									<li class="ranking_item _item5"><span class="no">5</span>
										<a href="" class="ranking_title">${requestScope.list[4].a_title}</a>
										<a href="" class="ranking_text">${requestScope.list[4].a_content}</a></li>
									<!-- ranking_item_item5 -->
									<li class="ranking_item _item6"><span class="no">6</span>
										<a href="" class="ranking_title">${requestScope.list[5].a_title}</a>
										<a href="" class="ranking_text">${requestScope.list[5].a_content}</a></li>
									<!-- ranking_item_item6 -->
								</ul>
							</div>
							<!-- ranking_list_area 영역 -->
						</div>
						<!-- ranking_seciont 영역 -->
					</div>
					<!-- container_content_left 영역 -->
					<div class="container_content_right">
						<div id="aside_content" class="aside1">
							<ul class="side content02">
								<li class="scont1"><a href=""
									style="background-image: url('/img/cont05.jpg'); background-size: cover; background-repeat: no-repeat;">
								</a><br>
								<li class="scont1"><a href=""
									style="background-image: url('/img/cont06.jpg'); background-size: cover; background-repeat: no-repeat;">
								</a></li>
						</div>
						<!-- aside_content02 영역 -->
					</div>
					<!-- container_content_right 영역 -->
				</div>
				<!--section_ask 영역  -->
				<div class="section_ask2">
					<div class="stats_area2">
						<div class="section_dhead section_dheadings">
							<h4 class="section_dhead_title">ASK LIST</h4>
							<!-- section_dhead_title 영역 -->
						</div>
						<!-- section_dhead 영역 -->
						<div class="board_section">
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="answer2.do" class="atit"> <span classs="ask_tit">${requestScope.list[0].a_title}</span>
										<p class="ask_text">${requestScope.list[0].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 01 영역 -->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit"> <span classs="ask_tit">${requestScope.list[1].a_title}</span>
										<p class="ask_text">${requestScope.list[1].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 02 영역 -->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit"> <span classs="ask_tit">${requestScope.list[2].a_title}</span>
										<p class="ask_text">${requestScope.list[2].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 03 영역 -->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit"> <span classs="ask_tit">${requestScope.list[3].a_title}</span>
										<p class="ask_text">${requestScope.list[3].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 04 영역-->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit"> <span classs="ask_tit">${requestScope.list[4].a_title}</span>
										<p class="ask_text">${requestScope.list[4].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 05 영역 -->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit"> <span classs="ask_tit">${requestScope.list[5].a_title}</span>
										<p class="ask_text">${requestScope.list[5].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 06 영역 -->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit"> <span classs="ask_tit">${requestScope.list[6].a_title}</span>
										<p class="ask_text">${requestScope.list[6].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 07 영역 -->
						</div>
						<!-- board_section 영역 -->
					</div>
					<!-- stats_area 영역 -->
				</div>
				<!-- section_ask2 영역 -->
			</div>
			<!-- .container_wrap 영역 -->
		</div>
		<!-- #container 영역 -->
	</div>
	<!-- #wrap -->
</body>
</html>