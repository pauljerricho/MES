<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_serve</title>
<link href="${pageContext.request.contextPath}/resources/css/profile_serve.css" rel="stylesheet" type="text/css">
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