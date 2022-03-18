<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_serve</title>
<!-- CSS -->
<style type="text/css">
#wrap {
	margin-top: 50px;
	position: relative;
	min-width: 980px;
}

.wrap_home {
	padding: 18px o;
}

.ps_wrap {
	width: 980px;
	margin: 0 auto;
}

.ps_content {
	width: 100%;
	height: 450px;
}

.ps_mimg {
	width: 420px;
	height: 400px;
	float: left;
}

.ps_img {
	width: 420px;
	height: 400px;
	background-size: cover;
	background-repeat: no-repeat;
}

.ps_description {
	width: 500px;
	height: 400px;
	float: left;
	margin-left: 60px;
	text-decoration: none;
}

.ps_title {
	font-size: 25px;
	font-weight: bold;
	margin-bottom: 30px;
}

.ps_text {
	font-size: 15px;
	height: 200px;
}

/*button CSS*/
.ps_btn {
	margin-top: 25px;
	width: 100%;
	height: 150px;
}

.ps_point {
	width: 180px;
	height: 30px;
	border: 2px solid #afb8c9;
	float: left;
	border-radius: 30px;
	font-size: 15px;
	color: #969ba5;
	box-shadow: 0 10px 25px #3c4a5645;
	outline: none;
	text-align: center;
	padding-top: 12px;
	margin-left: 55px;
}

.button {
	border: none;
	background-color: #afb8c9;
	float: left;
	border-radius: 30px;
	font-size: 15px;
	color: #fff;
	box-shadow: 0 10px 25px #3c4a5645;
	outline: none;
	cursor: pointer;
	text-align: center;
	padding-top: 4px;
	margin-left: 30px;
}

.ps_button {
	width: 180px;
	height: 45px;
}

.button p {
	font-size: 16px;
}

.button-close {
	padding: 10px;
	align-self: flex-end;
	background-color: transparent;
	box-shadow: none;
	color: #838282;
	background-color: transparent;
	box-shadow: none;
}

dialog {
	padding: 0;
	border: none;
	border-radius: 6px;
	-webkit-animation: appear 0.8s cubic-bezier(0.77, 0, 0.175, 1) forwards;
	animation: appear 0.8s cubic-bezier(0.77, 0, 0.175, 1) forwards;
	box-shadow: 0 25px 40px -20px #3c4a56;
	position: fixed;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.dialog__animate-out {
	-webkit-animation: dissappear 0.8s cubic-bezier(0.77, 0, 0.175, 1)
		forwards;
	animation: dissappear 0.8s cubic-bezier(0.77, 0, 0.175, 1) forwards;
}

.dialog__inner {
	width: 350px;
	height: 120px;
	flex-direction: column;
	color: #838282;
	align-content: center;
	align-items: center;
	display: flex;
}

.dialog__close-btn {
	align-self: flex-end;
}

.dialog__content {
	padding: 0 55px 55px 55px;
}

@
-webkit-keyframes appear {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@
keyframes appear {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@
-webkit-keyframes dissappear {from { opacity:1;
	transform: translateY(0);
}

to {
	opacity: 0;
	transform: translateY(20px);
}

}
@
keyframes dissappear {from { opacity:1;
	transform: translateY(0);
}

to {
	opacity: 0;
	transform: translateY(20px);
}

}

/*ps_content2 CSS*/
.ps_content2 {
	width: 100%;
	height: 950px;
	align-content: center;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	padding: 50px 0;
}

.ps_emoji {
	width: 300px;
	height: 300px;
	float: left;
	margin-bottom: 30px;
	background-color: rgba(120, 120, 120, 0.2);
}

.eimg {
	width: 300px;
	height: 300px;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>


<!-- js 영역 -->
<script src="https://code.jquery.com/jquery-1.12.4.js">

if (document.location.search.match(/type=embed/gi)) {
  window.parent.postMessage("resize", "*");
}
</script>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<div id="wrap" class="wrap_home">
		<div class="ps_wrap">
			<div class="ps_content">
				<div class="ps_heading">
					<div class="ps_mimg">
						<img class="ps_img" alt="" src="/img/img1_0.gif">
					</div>
					<!-- ps_mimg 영역 -->
					<div class="ps_description">
						<div class="ps_title">호랭총각</div>
						<div class="ps_text">한국의 웹툰. 작가는 강호진. 작가의 말에 따르면 장르는 '동물 만화 중에서도 호랑이 만화'라고 한다.

마음의 소리, 히어로메이커와 더불어 국내 최장기 연재 웹툰 중 하나이며, 완결작을 포함해도 호랭총각보다 오래된 웹툰은 거의 없다. 현재 네이버 웹툰 내에서도 가장 초기부터 있어왔던 실버웹툰이라고 작가 스스로가 인정했다. AVA와 동년배다.

2020년 5월 16일 휴재 및 외전 포함 총 644화로 완결되었으며 동년 7월 14일 유료화로 전환되었다. 인기있는 이모티콘으로 전환되었다.</div>
						<div class="ps_btn">
							<p class="ps_point">100 point</p>
							<button class="button ps_button" type="button">교환하기</button>
							<dialog>
							<div class="dialog__inner">
								<button class="button button-close close">╳</button>
								<div class="dialog__content">
									<p>이모티콘 교환이 완료되었습니다.</p>
								</div>
							</div>
							</dialog>
							<script id="rendered-js">
							const modal = document.querySelector('dialog');
							const btn = document.querySelector('button');
							const btnClose = document.querySelectorAll('.button-close');

							btn.addEventListener('click', () => openModal());
							btnClose.forEach(elm => elm.addEventListener('click', () => closeModal()));
							modal.addEventListener('click', e => detectBackdropClick(e));

							openModal = () => {
							  modal.showModal();
							};

							closeModal = () => {
							  modal.classList.add("dialog__animate-out");
							  modal.addEventListener('animationend', handleClose, false);
							  modal.close();
							};

							handleClose = () => {
							  modal.classList.remove("dialog__animate-out");
							  modal.removeEventListener('animationend', handleClose, false);
							  modal.close();
							};

							detectBackdropClick = event => {
							  if (event.target === modal) {
							    closeModal();
							  }
							};
							    
							</script>
						</div>
						<!-- btn 영역 -->
					</div>
					<!-- ps_description 영역 -->
				</div>
				<!-- ps_heading 영역 -->
			</div>
			<!-- ps_content영역 -->
			<div class="ps_content2">
				<div class="ps_emoji emoji1">
					<img class="eimg" src="/img/img1_01.png">
				</div>
				<!-- emoji1 -->
				<div class="ps_emoji emoji2">
					<img class="eimg" src="/img/img1_02.png">
				</div>
				<!-- emoji2 -->
				<div class="ps_emoji emoji3">
					<img class="eimg" src="/img/img1_03.png">
				</div>
				<!-- emoji3 -->
				<div class="ps_emoji emoji4">
					<img class="eimg" src="/img/img1_04.png">
				</div>
				<!-- emoji4 -->
				<div class="ps_emoji emoji5">
					<img class="eimg" src="/img/img1_05.png">
				</div>
				<!-- emoji5 -->
				<div class="ps_emoji emoji6">
					<img class="eimg" src="/img/img1_06.png">
				</div>
				<!-- emoji6 -->
				<div class="ps_emoji emoji7">
					<img class="eimg" src="/img/img1_07.png">
				</div>
				<!-- emoji7 -->
				<div class="ps_emoji emoji8">
					<img class="eimg" src="/img/img1_08.png">
				</div>
				<!-- emoji8 -->
				<div class="ps_emoji emoji9">
					<img class="eimg" src="/img/img1_09.png">
				</div>
				<!-- emoji9 -->
			</div>
			<!-- ps_content2영역 -->
		</div>
		<!-- .ps_wrap 영역 -->
	</div>
	<!-- #wrap 영역 -->
	<footer>
		<%@include file="/WEB-INF/views/foot.jsp"%>
	</footer>
</body>
</html>