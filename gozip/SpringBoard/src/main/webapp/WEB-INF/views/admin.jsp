<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin.css" rel="stylesheet" type="text/css">
<title>게시글 관리</title>
<c:if test="${sessionScope.member.lvl!=1}">
		<script>
			alert('관리자만 이용 가능합니다.');
			location.href = '/';
		</script>
</c:if>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function() {
	$("#btnSearch").click(function() {
		var data = "kind="+$("#kind").val()+"&search="+$("#txtSearch").val();
		location.href="search.do?"+data;
	});
});
</script>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<div class="commu-wrap">
		<h3>관리자 페이지</h3>
		<section class=commu-content>
			<nav id="commu-nav">
				<ul>
					<li><a class="member" href="member_page.do">회원 관리</a>
				</ul>
			</nav>
			<article class="request-body">
				<div class="board-list">
					<div class="regulation">
					제8조 ( ‘아이디’ 및 ‘비밀번호’의 관리에 대한 의무)<br>
① ‘회원’ 및 ‘구성원’의 ‘아이디’와 ‘비밀번호’에 관한 관리책임은 ‘회원’ 및 ‘구성원’에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.<br>
② ‘회사’는 ‘회원’ 또는 ‘구성원’의 ‘아이디’ 또는 개인정보가 유출 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 ‘회사’ 및 ‘회사’의 운영자로 오인될 우려가 있는 경우, 해당 ‘아이디’의 이용을 제한할 수 있습니다.<br>
③ ‘회원’은 ‘아이디’ 및 ‘비밀번호’가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 ‘회사’에 통지하고 ‘회사’의 안내에 따라야 합니다.<br>
④ 제3항의 경우에 해당 ‘회원’이 ‘회사’에 그 사실을 통지하지 않거나, 통지한 경우에도 ‘회사’의 안내에 따르지 않아 발생한 불이익에 대하여 ‘회사’는 책임을 부담하지 않습니다.<br>
					</div>
					<div class="regulation">
					제9조 (‘회원’에 대한 통지)
① ‘회사’가 ‘회원’에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 ‘아이디’로 등록한 전자우편주소 또는 회원가입신청 시 등록한 보조전자우편주소로 할 수 있습니다.<br>
② ‘회사’가 ‘관리자’에게 통지한 경우 이는 ‘회원’에게 통지한 것으로 봅니다. ‘회원’은 ‘관리자’ 정보에 대한 관리 및 적절한 정보로의 변경 책임을 부담합니다.<br>
③ ‘회원’ 전체에 대한 통지의 경우 ‘회사’는 7일 이상 ‘서비스 홈페이지’ 게시판에 해당 내용을 게시함으로써 전항의 통지를 갈음할 수 있습니다.<br>
④ ‘회원’은 ‘회사’가 ‘회원’에게 통지한 사항에 대하여 ‘구성원’에게 통지할 책임을 부담합니다.
					</div>
					<div class="regulation">
					제11조 (‘회원’의 의무)<br>
① ‘회원’은 아래 각 호의 행위를 하여서는 안 됩니다.<br>
1. 회원가입신청 또는 기입정보의 변경 시 허위내용의 등록<br>
2. 타인의 정보도용<br>
3. ‘회사’가 게시한 정보의 변경<br>
4. 불법소프트웨어 등 법령에서 금지하거나 ‘회사’가 공지사항 등을 통해 금지하는 소프트웨어 등 정보의 복제, 전송, 공유하는 행위<br>
5. ‘회사’ 및 기타 제3자의 저작권 등 지적재산권에 대한 침해<br>
6. ‘회사’ 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br>
7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 ‘LINE WORKS’를 이용하여 복제, 전송, 방송, 공유하는 행위<br>
8. ‘회사’의 동의 없이 영리를 목적으로 ‘LINE WORKS’를 사용하는 행위<br>
9. 기타 불법적이거나 부당한 행위<br>
② ‘회원’은 관련 법령, 이 약관, ‘LINE WORKS’ 운영정책, ‘LINE WORKS’ 이용안내 및 ‘LINE WORKS’과 관련하여 ‘회사’가 공지한 주의사항 및 통지사항 등을 준수하여야 하며, 기타 ‘회사’의 업무에 방해되는 행위를 하여서는 안 됩니다.<br>
③ ‘회원’은 ‘구성원’이 전항의 의무를 준수하도록 조치하여야 합니다. ‘구성원’이 전항의 의무를 위반할 경우 ‘회사’는 해당 ‘구성원’에 대한 제재 등 ‘관리자’의 권한 일부를 직접 행사할 수 있으며, ‘구성원’의 위반행위는 ‘회원’의 위반행위로 봅니다.<br>
④ ‘회원’은 ‘유료서비스’를 신청하기 전에 반드시 상품의 이용조건과 거래조건을 확인한 후 신청하여야 합니다. 이를 확인하지 않고 ‘유료서비스’를 신청하여 발생한 모든 손실, 손해에 대한 책임은 ‘회원’이 부담합니다.<br>
상단으로 이동<br>
					</div>
				</div>
				<div class="board-bottom">
				</div>
			</article>
		</section>
	</div>
</body>
</html>