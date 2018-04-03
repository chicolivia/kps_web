<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>KPS</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="/kps/assets/css/main.css" />
</head>
<body>
	<!-- Header && Menu -->
	<jsp:include page="/menuPages/menuBar.jsp"  />
	
	<!-- Banner -->
	<section id="banner">
				<article>
					<div class="inner">
					<h1>김치 프리미엄</h1>
					</div>
				</article>
				
	</section>

	<!-- Spotlight -->
	<article id="one" class="spotlight odd accent1">
		<div class="inner">
			<div class="image" data-position="top right">
				<img src="images/pic01.jpg" alt="" />
			</div>
			<h2>김치 프리미엄</h2>
			<div class="content">
				<h3>실시간 김프 그래프를 넣어볼까용</h3>
				<p>김치는 맛있다</p>
				<ul class="actions">
					<li><a href="#" class="button special accent1">더 자세히</a></li>
				</ul>
			</div>
		</div>
	</article>

	<!-- Spotlight -->
	<article id="two" class="spotlight even accent2">
		<div class="inner">
			<div class="image" data-position="top left">
				<img src="images/pic02.jpg" alt="" />
			</div>
			<h2>기준거래소</h2>
			<div class="content">
				<h3>그래프</h3>
				<p>내용</p>
				<ul class="actions">
					<li><a href="#" class="button special accent2">더 자세히</a></li>
				</ul>
			</div>
		</div>
	</article>

	<!-- Spotlight -->
	<article id="three" class="spotlight odd accent3">
		<div class="inner">
			<div class="image" data-position="center right">
				<img src="images/pic03.jpg" alt="" />
			</div>
			<h2>비교거래소</h2>
			<div class="content">
				<h3>그래프,,</h3>
				<p>그래프 설명,,</p>
				<ul class="actions">
					<li><a href="#" class="button special accent3">더 자세히</a></li>
				</ul>
			</div>
		</div>
	</article>



	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>