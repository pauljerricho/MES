<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리방 보다 힙한건 없다. GoZip</title>
<style type="text/css">
*{
font-size: 14px;
font-weight: bold;
margin: 0px;
padding: 0px;
}
.box{
border: 3px solid black;
padding: 30px;
margin-top: 150px;
margin-bottom: 100px;
}
form{
height: 800px;
display: flex;
flex-direction: column;
align-items: center;
justify-content: center;
text-align: center;
}
button {
width: 200px; 
padding: 7px; 
border: none; 
border-radius: 10px; 
color: white; 
font-weight: bold; 
background-color: #3a3a3a; 
cursor: pointer; 
outline: none;
}

input[type=text], input[type=password] {
  width: 300px;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
</style>
</head>
<body>
	<form action="register.do" method="POST">
			<!-- 아이디 -->
			<div class="box">
			<div class="form-group">
				<label for="user_id">아이디</label><br>
					<input type="text" class="form-control" id="id" name="id" placeholder="ID" required>
				<div class="check_font" id="id_check"></div>
			</div>
			<!-- 비밀번호 -->
			<div class="form-group">
				<label for="user_pw">비밀번호</label><br>
					<input type="password" class="form-control" id="pw" name="pw" placeholder="PASSWORD" required>
				<div class="check_font" id="pw_check"></div>
			</div>
			<!-- 비밀번호 재확인 -->
			<div class="form-group">
				<label for="user_pw2">비밀번호 확인</label><br>
					<input type="password" class="form-control" id="pw2" name="pw2" placeholder="Confirm Password" required>
				<div class="check_font" id="pw2_check"></div>
			</div>
			<!-- 이름 -->
			<div class="form-group">
				<label for="user_name">이름</label><br>
					<input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
				<div class="check_font" id="name_check"></div>
			</div>
			<!-- 생년월일 -->
			<div class="form-group required">
				<label for="user_birth">생년월일</label><br>
					<input type="text" class="form-control" id="birth" name="birth" placeholder="ex) 19990415" required>
				<div class="check_font" id="birth_check"></div>
			</div>
			<!-- 본인확인 이메일 -->
			<div class="form-group">
				<label for="user_email">이메일</label><br>
					<input type="text" class="form-control" name="email" id="email" placeholder="E-mail" required>
					<!-- <input type="text" style="margin-top: 5px;"class="email_form" name="email_confirm" id="email_confirm" placeholder="인증번호를 입력해주세요!" required>
						<button type="button" class="btn btn-outline-danger btn-sm px-3" onclick="confirm_email()">
							<i class="fa fa-envelope"></i>&nbsp;인증
						</button>&nbsp;
						<button type="button" class="btn btn-outline-info btn-sm px-3">
							<i class="fa fa-envelope"></i>&nbsp;확인
						</button>&nbsp; -->
					<div class="check_font" id="email_check"></div>
			</div>
			<!-- 휴대전화 -->
			<div class="form-group">
				<label for="user_phone">휴대전화 ('-' 없이 번호만 입력해주세요)</label><br>
				<input type="text" class="form-control" id="phone" name="phone" placeholder="Phone Number" required>
				<div class="check_font" id="phone_check"></div>
			</div>
			<div class="reg_button">
				<button class="btn btn-primary px-3" id="reg_submit">
					가입하기
				</button><br><br>
				<button onclick="location.href='redirect.do'">
					취소하기
				</button>
			</div>
			</div>
			</form>
</body>
</html>