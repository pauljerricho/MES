<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리방 보다 힙한건 없다. GoZip</title>
<style type="text/css">
*{
font-size: 12px;
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
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

//모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식
var idJ = /^[a-z0-9]{4,12}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/; 
// 이름 정규식
var nameJ = /^[가-힣]{2,6}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 휴대폰 번호 정규식
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
// 아이디 유효성 검사(1 = 중복 / 0 != 중복)

$(document).ready(function () {
	$("#id").on('blur' , function() {
		var id = $('#id').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/user/idCheck?id='+ id,
			type : 'get',
			success : function(data) {
				if(data == 1){
					$("#id_check").text("사용중인 아이디입니다 :p");
					$("#id_check").css("color", "red");
					$("#reg_submit").attr("disabled", true);
					
				} else if(!idJ.test($('#id').val())){
					$("#id_check").text("아이디는 4~12글자 영문+숫자 조합입니다. :p");
					$("#id_check").css("color", "red");
					$("#reg_submit").attr("disabled", true);
				} else {
					$("#id_check").text("사용 가능한 아이디입니다 :p");
					$("#id_check").css("color", "blue");
					$("#reg_submit").attr("disabled", true);
					$("#reg_submit").attr("disabled", false);
				}
				}
		})
	});
	
	//비밀번호 유효성 검사
	$(function() {
		$("#pw2").on('focus' , function() {
			if($('#pw').val() != $('#pw2').val()){
				$("#pw_check").text("비밀번호가 같지 않습니다. :p");
				$("#pw_check").css("color", "red");
				$("#reg_submit").attr("disabled", true);
			} else if($('#pw').val().length <= 8){
				$("#pw_check").text("비밀번호는 8글자이상으로 써주세요 :p");
				$("#pw_check").css("color", "red");
				$("#reg_submit").attr("disabled", true);
			} else {
				$("#pw_check").text("비밀번호가 적합합니다!");
				$("#pw_check").css("color", "blue");
				$("#reg_submit").attr("disabled", true);
				$("#reg_submit").attr("disabled", false);
			}
		})
		
	})
	
	//생년월일 유효성 검사
	$(function() {
		$("#birth").on('blur' , function() {
			if($('#birth').val().length != 8){
				$('#birth_check').text("생년월일은 8글자입니다.:p");
				$('#birth_check').css("color","red");
				$("#reg_submit").attr("disabled", true);
			} else {
				$('#birth_check').text("");
				$("#reg_submit").attr("disabled", true);
				$("#reg_submit").attr("disabled", false);
			}
		})
		
	})
	
	//이메일 유효성 검사
	$(function() {
		$("#email").on('blur' , function () {
				if(!mailJ.test($('#email').val())){
				$('#email_check').text("올바른 이메일을 입력해주세요:p");
				$('#email_check').css("color","red");
				$("#reg_submit").attr("disabled", true);
			} else {
				$('#email_check').text("");
				$("#reg_submit").attr("disabled", true);
				$("#reg_submit").attr("disabled", false);
			}
		})
	})
	
	// 이름에 특수문자 들어가지 않도록 설정
	$("#name").blur(function() {
		if (nameJ.test($(this).val())) {
				$("#name_check").text('');
				$("#reg_submit").attr("disabled", true);
				$("#reg_submit").attr("disabled", false);
		} else {
			$('#name_check').text('이름을 확인해주세요');
			$('#name_check').css('color', 'red');
			$("#reg_submit").attr("disabled", true);
		}
	});
	
	// 휴대전화
	$('#phone').blur(function(){
		if(phoneJ.test($(this).val())){
			$("#phone_check").text('');
			$("#reg_submit").attr("disabled", true);
			$("#reg_submit").attr("disabled", false);
		} else {
			$('#phone_check').text('휴대폰번호를 확인해주세요 :)');
			$('#phone_check').css('color', 'red');
			$("#reg_submit").attr("disabled", true);
		}
	});

});
</script>
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
				<button onclick="location.href='log.do'">
					취소하기
				</button>
			</div>
			</div>
			</form>
</body>
</html>