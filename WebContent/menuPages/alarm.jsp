<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
	<style >
	body {
		background-color: #fffaf2;
	}
	</style>
</head>
<body>
	<!-- Header && Menu -->
	<jsp:include page="/menuPages/menuBar.jsp" flush="true" />


	<!-- Main -->
	<section id="main" class="wrapper alt">
		<div class="inner">

			<header class="major">
				<h1>알림리스트 카드</h1>
			</header>

			<span class="image main"><img src="../images/pic04.jpg" alt="" /></span>
			<p>흠~</p>
		</div>
	</section>

	<!-- Form -->
	<h3>코인선택</h3>


	<!-- Break -->
	<div class="6u 12u$(small)">
		<input type="checkbox" id="bitcoin" name="bitcoin"> <label
			for="bitcoin">비트코인</label>
			<input type="checkbox" id="ethereum" name="ethereum" > <label
			for="ethereum">이더리움</label>
			<input type="checkbox" id="ripple" name="ripple" > <label
			for="ripple">리플</label>
	</div>
	

	<br><br><h3>원하는 퍼센트</h3>

	<form method="post" action="#">
		<!-- <div class="row uniform"> -->
		<div class="6u 12u$(xsmall)">
			<input type="text" name="name" id="name" value="" placeholder="Name" />
		</div>


		<br><br>
		<h3>알림 수신 방법</h3>
		<br>


		<!-- Break -->
		<div class="6u 12u$(small)">
			<input type="checkbox" id="emmail" name="emmail"> <label
				for="emmail">E-mail</label>
				<input type="checkbox" id="kakao" name="kakao" > <label
				for="kakao">Kakao</label>
				<input type="checkbox" id="textmessage" name="textmessage" > <label
				for="textmessage">문자</label>
		</div>
		



		<br><br>
		<h3>문의 사항</h3>

		<!-- Break -->
		<div class="12u$">
			<textarea name="message" id="message" placeholder="메시지를 입력하세요"
				rows="6"></textarea>
		</div>
		<!-- Break -->
		<div class="12u$">
			<ul class="actions">
				<li><input type="submit" value="Send Message" class="special" /></li>
				<li><input type="reset" value="Reset" /></li>
			</ul>
		</div>
		</div>
	</form>

	<hr />

	<form method="post" action="#">
		<div class="row uniform">
			<div class="9u 12u$(small)">
				<input type="text" name="query" id="query" value=""
					placeholder="Query" />
			</div>
			<div class="3u$ 12u$(small)">
				<input type="submit" value="Search" class="fit" />
			</div>
		</div>
	</form>



	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>
</html>