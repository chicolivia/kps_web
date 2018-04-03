<!--  
	@Author Junmin Seong (chicolivia@gmail.com)
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Log In</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	</head>
	<body>
	<!-- Header && Menu -->
	<jsp:include page="/menuPages/menuBar.jsp" flush="true" />
		<section id ="banner" >
			<div class="inner" >
				<form action="#" id="findIdForm" method="POST" onkeydown="return onKeyDown()">
					<p>아이디 찾기</p>
					<input type="email" placeholder="email" name="emailAddress"><br>
					<button type="button">아이디 찾기</button>
					<span id ="findIdResult"></span>
				</form>
				<form action="#" id="findIdForm" method="POST" onkeydown="return onKeyDown()">
					<p>비밀번호 찾기</p>
					<input type="text" placeholder="id" name="id">
					<input type="email" placeholder="email" name="emailAddress"><br>
					<button type="button">비밀번호 찾기</button>
					<span id ="findIdResult"></span>
				</form>
			</div>
		</section>
	<!-- Scripts -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/skel.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/findIdPw.js"></script>
	</body>
</html>