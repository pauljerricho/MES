<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의뢰하기</title>
<!-- CSS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
*{
font-family: 'Do Hyeon', sans-serif;
}
#wrap {
	margin-top: 50px;
	position: relative;
	min-width: 980px;
}


.wrap_home {
	padding: 18px o;
}

h4 {
	display: block;
	margin-block-start: 1.33em;
	margin-block-end: 1.33em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

/*best_ask 부분*/
.container_wrap {
	width: 980px;
	margin: 0 auto;
}

.wrap_home .section_spot {
	position: relative;
	height: 220px;
}

.wrap_home .section_spot:after {
	display: table;
	clear: both;
	content: '';
}

.wrap_home .section_spot .best_ask_wrap {
	float: left;
	width: 700px;
}

.wrap_home .best {
	float: left;
	position: relative;
	width: 33.3%;
	height: 220px;
	overflow: visible;
}

.wrap_home .section_spot .best_ask_wrap {
	float: left;
	width: 700px;
}

.wrap_home .best_background {
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	overflow: hidden;
	max-height: 100%;
	line-height: 0;
}

.wrap_home .best.expert .best_background {
	background-repeat: no-repeat;
	background-position: bottom right;
	background-size: auto 158px;
	opacity: 1;
}

.wrap_home .best_link img {
	max-width: 100%;
	visibility: hidden;
}

.wrap_home .best_link {
	position: relative;
	display: block;
	height: 210px;
	margin-right: 10px;
	text-decoration: none;
	cursor: pointer;
	border-radius: 24px;
	overflow: hidden;
	box-shadow: 0 10px 20px 0 rgb(150 153 159/ 50%);
}

.wrap_home .best_link .description {
	display: -webkit-box;
	max-height: 72px;
	overflow: hidden;
	margin-top: 13px;
	font-size: 18px;
	line-height: 24px;
	color: #fff;
	text-shadow: 0 1px 0 rgb(0 0 0/ 20%);
	font-weight: 300;
	word-wrap: break-word;
	-webkit-line-clamp: 3;
	-webkit-box-orient: vertical;
	text-overflow: ellipsis;
}

.wrap_home .side_right {
	float: right;
	position: relative;
	width: 240px;
	background-color: black;
	margin: 0 0;
}

.wrap_home .side li {
	position: relative;
	height: 210px;
}

.wrap_home .side li a {
	position: relative;
	display: block;
	width: 230px;
	height: 220px;
}

/*section_ask 부분*/
.section_ask {
	overflow: hidden;
	margin-top: 10px;
}

.wrap_home .stats_ranking_area {
	margin: 0 10px 0 0;
	padding: 14px 24px 0;
}

.wrap_home .container_content_left {
	width: 700px;
}

.container_content_left {
	position: relative;
	float: left;
	padding: 0 0 50px 17px;
}

.section_headings {
	margin-top: 30px;
}

.section_head {
	position: relative;
	border-bottom: 1px solid #e5e5e5;
}

.section_head_title {
	font-size: 18px;
	margin-bottom: 10px;
}

.ranking_section .ranking_list_area::after {
	display: block;
	clear: both;
	content: '';
}

.ranking_section .ranking_list {
	box-sizing: border-box;
	float: left;
	width: 50%;
	height: 308px;
	padding-right: 20px;
}

.ranking_list {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

ul, li {
	list-style: none;
}

a {
	color: #000;
	text-decoration: none;
	font-style: none;
}

.ranking_section .ranking_item {
	position: relative;
	margin-top: 14px;
	padding: 4px 4px 16px 18px;
	border-bottom: 1px solid #f2f2f2;
	background: 0;
	font-size: 12px;
	line-height: 1.6;
	letter-spacing: -0.5px;
}

.ranking_section .ranking_item .no {
	position: absolute;
	top: 3px;
	left: 1px;
	width: 7px;
	text-align: center;
	font-size: 15px;
	font-family: Helvetica;
	font-weight: bold;
	color: blue;
}

.ranking_section .ranking_item .ranking_title {
	display: block;
	overflow: hidden;
	margin-bottom: 4px;
	font-weight: bold;
	font-size: 15px;
	color: #000;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.ranking_section .ranking_item .ranking_text {
	display: block;
	overflow: hidden;
	position: relative;
	margin: 0 0 4px -18px;
	color: #555;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 14px;
}

.ranking_section .ranking_item .ranking_text:before {
	content: '';
	display: inline-block;
	width: 6px;
	height: 6px;
	border: 1px solid #ccc;
	border-width: 0 0 1px 1px;
	margin: 0 9px 0 2px;
	vertical-align: 2px;
}

.ranking_section .ranking_list+.ranking_list {
	border-left: 1px solid #e8e8e8;
	padding: 0 0 0 20px;
}

/*aside_right 부분*/
.wrap_home .container_content_right {
	width: 240px;
}

.container_content_right {
	position: relative;
	float: right;
}

.wrap_home .side li {
	background-color: black;
	margin-bottom: 10px;
}


/*section_ask2 부분*/
.section_ask2 {
	overflow: hidden;
	margin-top: 10px;
}

.wrap_home .stats_area2 {
	width: 980px;
	float: left;
	padding: 0 0 50px 17px;
}

.section_dhead {
	position: relative;
	border-bottom: 1px solid #e5e5e5;
}

.section_dhead_title {
	font-size: 18px;
	margin-bottom: 10px;
}

.board_section {
	display: block;
}

.ask_box {
	position: relative;
	padding: 19px 0 24px;
	border-bottom: 1px solid #ededed;
	zoom: 1;
}
.ask_box .tit_wrap {
    overflow: hidden;
    font-size: 15px;
    font-weight: 600;
    line-height: 22px;
    color: #000;
}
.ask_box .tit_wrap a{
	display: block;
	width: 100%;
	color: #000;
	}
.ask_box .ask_tit  {
    display: block;
    width: 100%;
    color: #000;
}

.ask_box .ask_text  {
    overflow: hidden;
    max-height: 56px;
	margin-top: 10px;
	font-size: 14px;
	line-height: 18px;
	font-weight: normal;
	color: #8c8c8c;
    }
</style>
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
								<a><p class="description">${requestScope.list[0].a_title}</p></a> <!-- description 영역 -->
						</div>
						<!-- best_ask1 영역 -->
						<div class="best ask2">
								<div class="best_background">
									<img src="/img/cont02.jpg">
								</div>
								<p class="description">질문02</p> <!-- description 영역 -->
							</a>
						</div>
						<!-- best_ask2 영역 -->
						<div class="best ask3">
								<div class="best_background">
									<img src="/img/cont03.jpg">
								</div>
								<p class="description">질문03</p> <!-- description 영역 -->
							</a>
						</div>
						<!-- best_ask3 영역 -->
					</div>
					<!-- best_ask_wrap 영역 -->
					<div class="side_right">
						<ul class="side content01">
							<li class="scont1">
							<a href="" style="background-image:url('/img/cont04.jpg');background-size:cover; background-repeat: no-repeat;" >
							</a>
							</li>
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
										<a href="answer.do" class="ranking_title">${requestScope.list[0].a_title}</a> <a href=""
										class="ranking_text text">${requestScope.list[0].a_content}</a></li>
									<!-- ranking_item_item1 -->
									<li class="ranking_item _item2"><span class="no">2</span>
										<a href="" class="ranking_title">${requestScope.list[1].a_title}</a> <a href=""
										class="ranking_text">${requestScope.list[1].a_content}</a></li>
									<!-- ranking_item_item2 -->
									<li class="ranking_item _item3"><span class="no">3</span>
										<a href="" class="ranking_title">${requestScope.list[2].a_title}</a> <a href=""
										class="ranking_text">${requestScope.list[2].a_content}</a></li>
									<!-- ranking_item_item3 -->
								</ul>
								<ul class="ranking_list">
									<li class="ranking_item _item4"><span class="no">4</span>
										<a href="" class="ranking_title">${requestScope.list[3].a_title}</a> <a href=""
										class="ranking_text">${requestScope.list[3].a_content}</a></li>
									<!-- ranking_item_item4 -->
									<li class="ranking_item _item5"><span class="no">5</span>
										<a href="" class="ranking_title">${requestScope.list[4].a_title}</a> <a href=""
										class="ranking_text">${requestScope.list[4].a_content}</a></li>
									<!-- ranking_item_item5 -->
									<li class="ranking_item _item6"><span class="no">6</span>
										<a href="" class="ranking_title">${requestScope.list[5].a_title}</a> <a href=""
										class="ranking_text">${requestScope.list[5].a_content}</a></li>
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
								<li class="scont1">
							<a href="" style="background-image:url('/img/cont05.jpg');background-size:cover; background-repeat: no-repeat;" >
							</a><br>
							<li class="scont1">
							<a href="" style="background-image:url('/img/cont06.jpg');background-size:cover; background-repeat: no-repeat;" >
							</a>
							</li>
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
									<a href="answer2.do" class="atit">
										<span classs="ask_tit">${requestScope.list[0].a_title}</span>
										<p class="ask_text">${requestScope.list[0].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 01 영역 -->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit">
										<span classs="ask_tit">${requestScope.list[1].a_title}</span>
										<p class="ask_text">${requestScope.list[1].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 02 영역 -->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit">
										<span classs="ask_tit">${requestScope.list[2].a_title}</span>
										<p class="ask_text">${requestScope.list[2].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 03 영역 -->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit">
										<span classs="ask_tit">${requestScope.list[3].a_title}</span>
										<p class="ask_text">${requestScope.list[3].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 04 영역-->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit">
										<span classs="ask_tit">${requestScope.list[4].a_title}</span>
										<p class="ask_text">${requestScope.list[4].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 05 영역 -->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit">
										<span classs="ask_tit">${requestScope.list[5].a_title}</span>
										<p class="ask_text">${requestScope.list[5].a_content}</p>
									</a>
								</div>
								<!-- tit_wrap 영역 -->
							</div>
							<!-- ask_box 06 영역 -->
							<div class="ask_box">
								<div class="tit_wrap">
									<a href="" class="atit">
										<span classs="ask_tit">${requestScope.list[6].a_title}</span>
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