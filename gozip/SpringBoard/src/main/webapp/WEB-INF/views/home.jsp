<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 방보다 힙한건 없지 Gozip</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function chat(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/622af4e91ffac05b1d7e0a97/1ftrspc30';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
* {
   margin: 0px;
   padding: 0px;
}
.intro {
font-family: 'Do Hyeon', sans-serif;
text-align: center;
width: 1000px;
height: 100px;
}
iframe {
width: 400px;
height: 400px;
}

chat{
position: absolute;
left: 100px;
}

body {
background-color: #ffffdd;
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
}
header {
   margin:0px auto;
   width: 1000px;
   height: 600px;
   text-align: center;
   position: absolute;
}

.btn>div {
   display: flex;
   flex-direction: row;
}

.header_box >img {
   margin-top: 20px;
   width: 170px;
   height: 100px;
}

.btn {
   width: 100%;
}
.box1 {
   margin-top:110px;
   width: 100%;
   height: 50px;
   text-decoration: none;
   font-style: none;
   color: white;
   text-shadow: 2px 2px 3px black;
}

a{
font-weight: bold;
}

.header_box{
top:-300px;
position: relative;
}
#member_login{
margin-left: 515px;
}

section{
margin-top:400px;
margin-bottom:100px;
width: 1000px;
justify-content: center;
}

h3{
margin-bottom:50px;
font-size: 30px;
}
table {
border-collapse: collapse;
font-family: 'Do Hyeon', sans-serif;
}
.best {
margin-left:30px;
text-align: center;
font-weight: bold;
}
td{
padding: 20px 128px 10px 0px;
}
td > p{
width: 220px;
height: 30px;
}
td > img {
width: 220px;
height: 200px;
}
.bx-wrapper {border:0;background:#fbfbfb;box-shadow:none;}


h3 > button{
color: gray;
padding: 5px 10px 5px 10px; 
background-color: #e9e9e9;
border: none;
font-size: 16px;
border-radius: 5px;
}
.btn_p{
margin-left: 600px;
}
nav {
  width: 100%;
  background-color:#dcdcdc ;
  vertical-align: top;
}

nav ul li {
  display:inline-block;  
}

nav a {
  font-size: 12px;
  color:#F8ECC2;
  display:block;
  text-decoration: none;
  padding:16px 20px;
  margin-bottom: 30px;	
 }

nav a:hover {
  background: #E65540;
}

.menu-trigger {
  display:none;
  color:#F8ECC2;
}

@media screen and (max-width:500px) {
  .menu-trigger {
    display:block;
  }
  nav ul li {
    display:block;
    border-top:1px #79896D solid;    
  }
  nav ul {
    display:none;
  }

}

.dropdown img {
width: 48px;
height: 48px;
margin-right: 5px;
}

.dropdown a{
  position : relative;
  display: inline-block;
  align-items: center;
  text-align: center;
  width: 48px;
  height: 48px;
  padding: 0px;
  margin: 0px;
}

.dropbtn{
  background-color: #f5f5f5;
  font-weight: 400;
  color : rgb(37, 37, 37);
  width :50px;
  height: 20px;
  text-align: left;
  cursor : pointer;
  font-size : 12px;
  padding: 0px;
  margin: 5px;
}
.dropdown-content{
  display : none;
  position : absolute;
  z-index : 1; /*다른 요소들보다 앞에 배치*/
  font-weight: 400;
  background-color: #f9f9f9;
  min-width : 100px;
  height: 120px;
  font-weight: bold;
  font-size: 10px;
}

.dropdown-content a{
  height: 20px;
  display : block;
  text-decoration : none;
  color : rgb(37, 37, 37);
  font-size: 12px;
  padding : 9px 24px;
}

.dropdown-content a:hover{
  background-color : #ececec
}

.dropdown:hover .dropdown-content {
  display: block;
}

nav ul {
display: flex;
flex-direction: row;
}

ul li:nth-child(6) {
margin-left: 250px;
}

.profile{
text-align: center;
vertical-align: middle;
color: black;
margin-top: 3px;
margin-left: 20px;
}

.company {
text-align: center;
width: 1000px;
}

.company_box {
margin-left: 35px;
}

.imgload{
display: flex;
flex-direction: row;
justify-content: space-around;
}
</style>

<script>
  $( document ).ready( function() {
    $( '.slider' ).bxSlider({
    	  mode: 'horizontal',// 가로 방향 수평 슬라이드
    	   speed: 500,        // 이동 속도를 설정
    	   pager: false,      // 현재 위치 페이징 표시 여부 설정
    	   moveSlides: 1,     // 슬라이드 이동시 개수
    	   slideWidth: 1000,   // 슬라이드 너비
    	   minSlides: 1,      // 최소 노출 개수
    	   maxSlides: 1,      // 최대 노출 개수
    	   slideMargin: 3,    // 슬라이드간의 간격
    	   auto: true,        // 자동 실행 여부
    	   autoHover: true,   // 마우스 호버시 정지 여부
    	   controls: false    // 이전 다음 버튼 노출 여부
    });
    $( '.company_slider' ).bxSlider({
  	  mode: 'vertical',// 가로 방향 수평 슬라이드
  	   speed: 1000,        // 이동 속도를 설정
  	   pager: false,      // 현재 위치 페이징 표시 여부 설정
  	   moveSlides: 1,     // 슬라이드 이동시 개수
  	   slideWidth: 900,   // 슬라이드 너비
  	   minSlides: 1,      // 최소 노출 개수
  	   maxSlides: 1,      // 최대 노출 개수
  	   slideMargin: 10,    // 슬라이드간의 간격
  	   auto: true,        // 자동 실행 여부
  	   autoHover: true,   // 마우스 호버시 정지 여부
  	   controls: false    // 이전 다음 버튼 노출 여부
  });
    $( '.slider1' ).bxSlider({
  	  mode: 'horizontal',// 가로 방향 수평 슬라이드
  	   speed: 500,        // 이동 속도를 설정
  	   pager: false,      // 현재 위치 페이징 표시 여부 설정
  	   moveSlides: 1,     // 슬라이드 이동시 개수
  	   slideWidth: 300,   // 슬라이드 너비
  	   minSlides: 1,      // 최소 노출 개수
  	   maxSlides: 1,      // 최대 노출 개수
  	   slideMargin: 3,    // 슬라이드간의 간격
  	   auto: true,        // 자동 실행 여부
  	   autoHover: true,   // 마우스 호버시 정지 여부
  	   controls: false    // 이전 다음 버튼 노출 여부
  });
  });
</script>
</head>
<body>
<div class="total">
<!-- 헤더 부분 -->
<header>
<div class="slider">
  <div><img src="/img/main1.jpg"></div>
  <div><img src="/img/main2.jpg"></div>
  <div><img src="/img/main3.jpg"></div>
</div>
<div class="header_box">
		<img src="/img/final_logo.png">
		<div class="btn">
		<div class="box1">

<nav>
  <a href="#" class="menu-trigger">Menu</a>
  <ul>
    <li><a href="board.do">커뮤니티</a></li>
    <li><a href="ask.do">의뢰하기</a></li>
    <li><a href="gallery.do">시공업체</a></li>
    <li><a href="f_id.do">팔로잉피드</a></li>
    <li><a href="tip.do">꿀팁게시판</a></li>
    <li><a href="product.do">이모티콘</a></li>
    <c:if test="${empty sessionScope.member.id}">
    <li><a href="log.do">로그인</a></li>
    <li><a href="signup.do">회원가입</a></li></c:if>
    <c:if test="${not empty sessionScope.member.id}">
    <li><div class="dropdown">
      <a class="dropbtn"> 
		<img alt="logo" src="/img/cs.png">
      </a>
      <div class="dropdown-content">
        <a href="logout.do">로그아웃</a>
        <a href="profile.do">정보수정</a>
        <a href="admin.do">관리자</a>
      </div></div></li>
      <li class="profile">⭐WELCOME⭐<br>${sessionScope.member.id}님</li>
      </c:if>
  </ul>
</nav>
</div>
</div>
</div>
</header>
<!-- 섹션 부분 -->
<section>
<h3>Gozip의 가치를 실현합니다.</h3>
<div class="intro">
Gozip의 스토리는 2021년, 불가능한 것을 성취할 수 있도록 사람들을 돕겠다는 포부와 함께 시작합니다. 
50여 년이 흐른 지금, 우리는 여전히 혁신하고 있으며, 오래된 장벽과 새로운 한계를 타파하는 기술을 창조하고, 
사람들이 할 수 없었던 것을 해낼 수 있게 돕고 있습니다. 우리는 계속 우리의 목적의식에 맞춰 움직이고 있으며, 
따라서 우리가 창조하는 모든 것의 중심에는 사람 그리고 사람의 관심사가 있습니다.
</div>
<div class="imgload">
<div class="slider1">
<img alt="" src="/img/board33.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board34.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board35.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board36.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board37.jpg" width="200px"; height="200px";>
</div>
<div class="slider1">
<img alt="" src="/img/board38.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board39.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board40.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board41.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board42.jpg" width="200px"; height="200px";>
</div>
<div class="slider1">
<img alt="" src="/img/board43.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board44.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board45.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board46.jpg" width="200px"; height="200px";>
<img alt="" src="/img/board47.jpg" width="200px"; height="200px";>
</div>
</div>
<table class="best">
<h3>🎉1회 베스트 고집🎉</h3>
<tr>
<td>
<img src="/img/img_box4.jpg" style="border-radius: 25px"><p>글쓴이 : ${requestScope.list[0].id}</p><br>
		
		<c:choose>
        <c:when test="${fn:length(list[0].b_content) gt 26}">
        <c:out value="${fn:substring(list[0].b_content, 0, 25)}">...
        </c:out>
        </c:when>
        <c:otherwise>
        <c:out value="${requestScope.list[0].b_content}">
        </c:out></c:otherwise>
		</c:choose>
</td>
<td>
<img src="/img/img_box5.jpg" style="border-radius: 25px"><p>글쓴이 : ${requestScope.list[1].id}</p><br>
		<c:choose>
        <c:when test="${fn:length(list[1].b_content) gt 26}">
        <c:out value="${fn:substring(list[1].b_content, 0, 25)}">...
        </c:out>
        </c:when>
        <c:otherwise>
        <c:out value="${requestScope.list[1].b_content}">
        </c:out></c:otherwise>
		</c:choose>
</td>
<td>
<img src="/img/img_box6.jpg" style="border-radius: 25px"><p>글쓴이 : ${requestScope.list[2].id}</p><br>
		<c:choose>
        <c:when test="${fn:length(list[2].b_content) gt 26}">
        <c:out value="${fn:substring(list[2].b_content, 0, 25)}">...
        </c:out>
        </c:when>
        <c:otherwise>
        <c:out value="${requestScope.list[2].b_content}">
        </c:out></c:otherwise>
		</c:choose>
</td>
</tr>
<tr>
<td>
<img src="/img/img_box7.jpg" style="border-radius: 25px"><p>글쓴이 : ${requestScope.list[3].id}</p><br>
		<c:choose>
        <c:when test="${fn:length(list[3].b_content) gt 26}">
        <c:out value="${fn:substring(list[3].b_content, 0, 25)}">...
        </c:out>
        </c:when>
        <c:otherwise>
        <c:out value="${requestScope.list[3].b_content}">
        </c:out></c:otherwise>
		</c:choose>
</td>
<td>
<img src="/img/img_box8.jpg" style="border-radius: 25px"><p>글쓴이 : ${requestScope.list[4].id}</p><br>
		<c:choose>
        <c:when test="${fn:length(list[4].b_content) gt 26}">
        <c:out value="${fn:substring(list[4].b_content, 0, 25)}">...
        </c:out>
        </c:when>
        <c:otherwise>
        <c:out value="${requestScope.list[4].b_content}">
        </c:out></c:otherwise>
		</c:choose>
</td>
<td>
<img src="/img/img_box9.jpg" style="border-radius: 25px"><p>글쓴이 : ${requestScope.list[5].id}</p><br>
		<c:choose>
        <c:when test="${fn:length(list[5].b_content) gt 26}">
        <c:out value="${fn:substring(list[5].b_content, 0, 25)}">...
        </c:out>
        </c:when>
        <c:otherwise>
        <c:out value="${requestScope.list[5].b_content}">
        </c:out></c:otherwise>
		</c:choose>
</td>
</tr>
		</table>
		<div class="company">
		<h4>👇아래를 클릭하시면 이동합니다.👇</h4>
		</div>
		<div class="company_box">
		<div class="company_slider">
  		<div><a href="bitointerior.do"><img src="/img/company_img1.jpg"></a></div>
  		<div><a href="sangsang.do"><img src="/img/company_img2.jpg"></a></div>
  		<div><a href="interiorlab.do"><img src="/img/company_img3.jpg"></a></div>
		</div>
		</div>
	</section>
<!-- footer 부분 -->
<footer>
        <%@include file="/WEB-INF/views/foot.jsp" %>
</footer>
</div>
</body>
</html>