<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꿀팁게시판</title>
</head>
<style>
.tip_body{
	text-align: center;
    width: 1200px;
    margin: 100px auto;
    padding: 0px;
}
.main{
    display: flex;
    flex-direction: row-reverse;/*최신 글이 앞으로 와야하기 때문에 리버스 사용*/
    flex-wrap: wrap-reverse;
    justify-content: space-around;
}
.tip {
	padding: 50px;
    border: 5px dashed #fafab4;
    border-radius: 15px;
    margin: 100px 100px auto;
    width: 290px;
    height: 500px;
}
.tip_title{
    font-weight: bold;
    font-size: 19px;
    color: #FF9696;
}
.tip_no{
    font-size: 12px;
    color: rgb(117, 117, 117);
    font-weight: bold;
}
.tip_id{
	margin-top: 10px;
    font-size: 12px;
    color: rgb(117, 117, 117);
    font-weight: bold;
}
.tip_content{
	margin-top: 20px;
    font-size: 12px;
    color: rgb(117, 117, 117);
    font-weight: bold;
}

.tip_comment {
margin-top: 20px;
font-weight: bold;
color: #cd853f;
}
img{
margin-top: 20px;
width: 200px;
height: 200px;
}
</style>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
    <div class="tip_body">
        
        <div class="tip_header">
            <h1>우리들의 인테리어 노하우🏠</h1>
        </div>
        <div class="main">
        <div class="tip 1">
            <div>
                <span class="tip_title">${requestScope.list[0].t_title}</span><br>
                <span class="tip_no info">글번호: </span>
                <span class="tip_no 1">${requestScope.list[0].t_no}</span>
                <span class="tip_no 1">&nbsp;&nbsp;&#183;&nbsp;</span>
                <span class="tip_id info">작성자: </span>
                <span class="tip_id 1">${requestScope.list[0].t_id}</span><br>
                <span class="tip_content info">내용: </span>
                <span class="tip_content 1">${requestScope.list[0].t_content}</span>
                <img alt="" src="img/board33.jpg"><br>
                <span class="tip_comment"> ${requestScope.list[0].t_comment}</span>
            </div>
        </div>
        <div class="tip 2">
            <div>
                <span class="tip_title">${requestScope.list[1].t_title}</span><br>
                <span class="tip_no info">글번호: </span>
                <span class="tip_no 2">${requestScope.list[1].t_no}</span>
                <span class="tip_no 2">&nbsp;&nbsp;&#183;&nbsp;</span>
                <span class="tip_id info">작성자: </span>
                <span class="tip_id 2">${requestScope.list[1].t_id}</span><br>
                <span class="tip_content info">내용: </span>
                <span class="tip_content 2">${requestScope.list[1].t_content}</span>
                <img alt="" src="img/board34.jpg"><br>
                <span class="tip_comment"> ${requestScope.list[1].t_comment}</span>
            </div>
        </div>
        <div class="tip 3">
            <div>
                <span class="tip_title">${requestScope.list[2].t_title}</span><br>
                <span class="tip_no info">글번호: </span>
                <span class="tip_no 3">${requestScope.list[2].t_no}</span>
                <span class="tip_no 3">&nbsp;&nbsp;&#183;&nbsp;</span>
                <span class="tip_id info">작성자: </span>
                <span class="tip_id 1">${requestScope.list[2].t_id}</span><br>
                <span class="tip_content info">내용: </span>
                <span class="tip_content 3">${requestScope.list[2].t_content}</span><br>
                <img alt="" src="img/board35.jpg"><br>
                <span class="tip_comment"> ${requestScope.list[2].t_comment}</span>
            </div>
        </div>
        <div class="tip 4">
            <div>
                <span class="tip_title">${requestScope.list[3].t_title}</span><br>
                <span class="tip_no info">글번호: </span>
                <span class="tip_no 4">${requestScope.list[3].t_no}</span>
                <span class="tip_no 4">&nbsp;&nbsp;&#183;&nbsp;</span>
                <span class="tip_id info">작성자: </span>
                <span class="tip_id 1">${requestScope.list[3].t_id}</span><br>
                <span class="tip_content info">내용: </span>
                <span class="tip_content 4">${requestScope.list[3].t_content}</span><br>
                <img alt="" src="img/board36.jpg"><br>
                <span class="tip_comment"> ${requestScope.list[3].t_comment}</span>
            </div>
        </div>
        <div class="tip 5">
            <div>
                <span class="tip_title">${requestScope.list[4].t_title}</span><br>
                <span class="tip_no info">글번호: </span>
                <span class="tip_no 5">${requestScope.list[4].t_no}</span>
                <span class="tip_no 5">&nbsp;&nbsp;&#183;&nbsp;</span>
                <span class="tip_id info">작성자: </span>
                <span class="tip_id 1">${requestScope.list[4].t_id}</span><br>
                <span class="tip_content info">내용: </span>
                <span class="tip_content 5">${requestScope.list[4].t_content}</span><br>
                <img alt="" src="img/board37.jpg"><br>
                <span class="tip_comment"> ${requestScope.list[4].t_comment}</span>
            </div>
        </div>
        <div class="tip 6">
            <div>
                <span class="tip_title">${requestScope.list[5].t_title}</span><br>
                <span class="tip_no info">글번호: </span>
                <span class="tip_no 6">${requestScope.list[5].t_no}</span>
                <span class="tip_no 6">&nbsp;&nbsp;&#183;&nbsp;</span>
                <span class="tip_id info">작성자: </span>
                <span class="tip_id 1">${requestScope.list[5].t_id}</span><br>
                <span class="tip_content info">내용: </span>
                <span class="tip_content 6">${requestScope.list[5].t_content}</span>
                <img alt="" src="img/board38.jpg"><br>
                <span class="tip_comment"> ${requestScope.list[5].t_comment}</span>
            </div>
        </div>
    
    </div>
    </div>
    </body>
</html>