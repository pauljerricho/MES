<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>게시글</title>
<style type="text/css">
.like {
width: 30px;
height: 30px;
}

.hate {
width: 30px;
height: 30px;
}

.profile {
width: 150px;
height: 150px;
}

#btnBack img {
width: 50px;
height: 50px;
}

.py-5 bg-image-full {
height: 100px;
}

table{
width: 1000px;
font-size: 14px;
font-weight: bold;
text-align: center;
}

table tr, td {
padding: 10px 10px;
border: 0px;
}

td button{
font-size:10px;
width: 50px;
border-radius: 100px;
}
</style>
<body>

</body>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title></title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles2.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a id="btnBack"><img alt="" src="/img/back.png"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="redirect.do">HOME</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="ask.do">의뢰하기</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header - set the background image for the header in the line below-->
        <header class="py-5 bg-image-full" style="background-image: url('https://source.unsplash.com/wfh8dDlNFOk/1600x900')">
            <div class="text-center my-5">
                <img class="profile" src="img/cs.png" alt="..." />
                <h1 class="text-white fs-3 fw-bolder">
                <!-- 제목 -->
			<div class="title">
			<h2>${requestScope.dto.b_title }</h2>
			</div></h1>
                <p class="text-white-50 mb-0">Gozip만의 센스를 보여드립니다.</p>
            </div>
        </header>
        <!-- Content section-->
        <section class="py-5">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <p class="lead">${requestScope.dto.b_content}</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Image element - set the background image for the header in the line below-->
        <div class="py-5 bg-image-full" style="background-image: url('https://source.unsplash.com/4ulffa6qoKA/1200x800')">
            <!-- Put anything you want here! The spacer below with inline CSS is just for demo purposes!-->
            <div style="height: 20rem"></div>
        </div>
        <!-- Content section-->
        <section class="py-5">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
	<!-- 작성자 작성일 좋아요 싫어요 -->
	<div class="nav">
	<table>
	<tr>
	<td width="150px">작성자</td>
	<td width="150px">작성일</td>
	<td width="100px">조회</td>
	<td width="100px">추천</td>
	</tr>
	<tr>
	<td>${requestScope.dto.id}</td>
	<td>${requestScope.dto.b_date}</td>
	<td>${requestScope.dto.b_view}</td>
	<td><img alt="좋아요1" src="/img/like1.png" class="like"></td>
	<td width="100px">
	<c:if test="${requestScope.dto.id == sessionScope.member.id }">
		<button id="btnUpdate">수정</button>
		<button id="btnDelete">삭제</button>
	</c:if>
	</td>
	<td>
	<c:if test="${sessionScope.member.id == 1}">
		<button id="adminDelete">관리자 <br>삭제</button>
	</c:if>
	</td>
	<td width="50px">
	<button id="report_write">신고</button>

	</td>
	</tr>
	</table>
	</div> 
		
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Gozip 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script>


		$(function() {
			$("#btnBack").click(function() {
				location.href = "board.do";
			});
			$("#btnUpdate").click(function() {
				location.href = "boardUpdateView.do?b_no=${requestScope.dto.b_no}";
			});
			$("#btnDelete").click(function() {
				location.href = "boardDelete.do?b_no=${requestScope.dto.b_no}";
			});
			$("#adminDelete").click(function() {
				location.href = "boardDelete.do?b_no=${requestScope.dto.b_no}";
			});
			$("#report_write").click(function(){
				 	 var id = ${requestScope.dto.id};
			         var url = "report.do?id="+id;
			         var option = "width = 500, height = 700, top = 100, left = 200, location = no"
			         window.open(url, name, option);
			}); 
			$(".like").click(function() {
				var data = "b_no=${requestScope.dto.b_no}";
				$.ajax({
					url : "boardLike.do",
					data : data,
					type : "get",
					dataType :"json",
					success : function(r) {
						if(r.result == 1)
							alert("게시물에 좋아요를 눌렀습니다.");
						else
							alert("게시물에 좋아요를 취소했습니다.");
						$(".like").text(r.count);			
					}
				});
			});
		});
		</script>
    </body>
</html>










