<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찾아보자!</title>
<style>
.outer{
display: flex;
flex-direction: column;
align-items: center;
}
.container{
border: 2px solid black;
text-align: center;
width: 300px;
}
:root { -
	-input-padding-x: 1.5rem; -
	-input-padding-y: .75rem;
}
body {
	background-color: white;
}
.card-signin {
	border: 0;
	border-radius: 1rem;
	box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
	overflow: hidden;
}
.card-signin .card-title {
	margin-bottom: 2rem;
	font-weight: 300;
	font-size: 1.5rem;
}
.card-signin .card-body {
	padding: 2rem;
}
.form-signin {
	width: 100%;
}
.form-signin .btn {
	font-size: 80%;
	border-radius: 5rem;
	letter-spacing: .1rem;
	font-weight: bold;
	padding: 1rem;
	transition: all 0.2s;
}
.form-label-group {
	position: relative;
	margin-bottom: 1rem;
}
.form-label-group input {
	height: auto;
	border-radius: 2rem;
}
.form-label-group>input, .form-label-group>label {
	padding: var(- -input-padding-y) var(- -input-padding-x);
}
.form-label-group>label {
	position: absolute;
	top: 0;
	left: 0;
	display: inline_block;
	width: 100%;
	margin-bottom: 0;
	/* Override default `<label>` margin */
	line-height: 1.5;
	color: #495057;
	border: 1px solid transparent;
	border-radius: .25rem;
	transition: all .1s ease-in-out;
}
.form-label-group input::-webkit-input-placeholder {
	color: transparent;
}
.form-label-group input:-ms-input-placeholder {
	color: transparent;
}
.form-label-group input::-ms-input-placeholder {
	color: transparent;
}
.form-label-group input::-moz-placeholder {
	color: transparent;
}
.form-label-group input::placeholder {
	color: transparent;
}
.form-label-group input:not(:placeholder-shown) {
	padding-top: calc(var(- -input-padding-y)+ var(- -input-padding-y)* (2/3));
	padding-bottom: calc(var(- -input-padding-y)/3);
}
.form-label-group input:not(:placeholder-shown) ~label {
	padding-top: calc(var(- -input-padding-y)/3);
	padding-bottom: calc(var(- -input-padding-y)/3);
	font-size: 12px;
	color: #777;
}
</style>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="jquery/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="outer">
<img alt="" src="/img/search.png">
<div class="container">
<form method="post" class="form-signin" action="find.do" name="findform">
		<div class="form-label-group">
			<h3>이름 : </h3><input type="text" id="name" name="name" class="form-control">
		</div>
		
		<div class="form-label-group">
			<h3>전화번호 : </h3><input type="text" id="phone" name="phone" class="form-control">
		</div>

		<div class="form-label-group">
			<input class="btn btn-lg btn-secondary btn-block text-uppercase"
				type="submit" value="아이디 찾기">
		</div>
	</form>
</div>
<br>
<div class="container">
<form method="post" class="form-signin" action="findpass.do" name="findform">
		<div class="form-label-group">
			<h3>아이디 : </h3><input type="text" id="id" name="id" class="form-control">
		</div>
		
		<div class="form-label-group">
			<h3>이메일 : </h3><input type="text" id="email" name="email" class="form-control">
		</div>

		<div class="form-label-group">
			<input class="btn btn-lg btn-secondary btn-block text-uppercase"
				type="submit" value="비밀번호 찾기">
		</div>
	</form>
</div>
</div>
</body>
</html>