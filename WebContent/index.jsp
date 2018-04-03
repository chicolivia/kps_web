<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>KPS</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
</head>
<body>
	<!-- 메뉴바 -->
	<jsp:include page="/menuPages/menuBar.jsp"></jsp:include>

	<!-- 배너 -->
	<section id="banner">
				<article>
					<img src="${pageContext.request.contextPath}/images/bitcoin1.jpg" alt="" />
					<div class="inner">
						<h2><a href="#">Magna tempus. Sed feugiat.</a></h2>
					</div>
				</article>
				<article>
					<img src="${pageContext.request.contextPath}/images/bitcoin11.jpg" alt="" />
					<div class="inner">
						<h2><a href="#">Aliquam veroeros nullam.</a></h2>
					</div>
				</article>
				<article>
					<img src="${pageContext.request.contextPath}/images/bitcoin6.jpg"  alt="" />
					<div class="inner">
						<h2><a href="#">Consequat dolore adipiscing.</a></h2>
					</div>
				</article>
	</section>
	<!-- 메인페이지 채워야할 곳 -->
	


	<!--페이지 밑단  -->
	<jsp:include page="/menuPages/footer.jsp"></jsp:include>

	<!-- Scripts -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/skel.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>