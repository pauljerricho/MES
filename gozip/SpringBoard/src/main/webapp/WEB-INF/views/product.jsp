<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/product.css" rel="stylesheet" type="text/css">
<title>PRODUCT</title>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/head.jsp"%>
	</header>
	<div id="wrap" class="wrap_home">
		<div class="new_wrap">
			<div class="new_list">
				<h2 class="tit_main">신상품</h2>
				<div class="new_content">
					<div class="nproduct new1 ">
						<div class="np_img"
							style="background-image: url('/img/np01.jpg');"></div>
						<div class="description">
							<p class="text">니니즈와 친구들</p>
							<div class="p_btn">
								<a class="btn" href="product_serve.do">상품 교환</a>
							</div>
						</div>
					</div>
					<!-- new1 영역 -->
					<div class="nproduct new2 ">
						<div class="np_img"
							style="background-image: url('/img/np02.jpg');"></div>
						<div class="description">
							<p class="text">라이언과 애송이들</p>
							<div class="p_btn">
								<a class="btn" href="product_serve.do">상품 교환</a>
							</div>
						</div>
					</div>
					<!-- new2 영역 -->
					<div class="nproduct new3 ">
						<div class="np_img"
							style="background-image: url('/img/np03.jpg');"></div>
						<div class="description">
							<p class="text">코카롤라</p>
							<div class="p_btn">
								<a class="btn" href="product_serve.do">상품 교환</a>
							</div>
						</div>
					</div>
					<!-- new3 영역 -->
				</div>
				<!-- new_content 영역 -->
			</div>
			<!-- new_list 영역 -->
		</div>
		<!-- new_wrap 영역 -->
		<div class="product_wrap">
			<div class="product_list">
				<h2 class="tit_main">PRODUCT</h2>
				<div class="product_content">
					<div class="product p_cont1">
						<div class="box product1"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>고집이</h4>
								<p class="t_han">고집스러운 아이입니다.</p>
								<div class="p_btn">
									<a class="btn" href="product_serve.do">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product1 영역 -->
					<div class="product p_cont2">
						<div class="box product2"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="product_serve.do">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product2 영역 -->
					<div class="product p_cont3">
						<div class="box product3"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="product_serve.do">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product3 영역 -->
					<div class="product">
						<div class="box product4"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="product_serve.do">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product 영역4 -->
					<div class="product">
						<div class="box product5"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="product_serve.do">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product5 영역 -->
					<div class="product">
						<div class="box product6"></div>
						<div class="box img_text">
							<div class="text_area">
								<h4>상품명</h4>
								<p class="t_han">상품설명 부분입니다.</p>
								<div class="p_btn">
									<a class="btn" href="product_serve.do">상품 교환</a>
								</div>
							</div>
							<!-- text_area 영역 -->
						</div>
						<!-- box img_text 영역-->
					</div>
					<!-- product6 영역 -->
				</div>
				<!-- product_content 영역 -->
			</div>
			<!-- product_list 영역 -->
		</div>
		<!-- product_wrap 영역 -->
	</div>
	<!-- #wrap 영역 -->
	<footer>
		<%@include file="/WEB-INF/views/foot.jsp"%>
	</footer>
</body>
</html>