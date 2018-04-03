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
		<section id ="banner">
			<div class="inner">
				<form action="#" id="loginForm" method="POST" onkeydown="return onKeyDown()">
					<p>ID 찾기</p>
					<input type="text" placeholder="id" id="id1" name ="id" >
					<span id="idresult"></span><br>
					<input type="password" placeholder="password" id="pw1" name="pw"><br>
					<span id ="submitresult"></span>
				</form>
			
				<form action="#" id="loginForm" method="POST" onkeydown="return onKeyDown()">
					<input type="text" placeholder="id" id="id1" name ="id" >
					<span id="idresult"></span><br>
					<input type="password" placeholder="password" id="pw1" name="pw"><br>
					<div>
						<button>ID/PW 찾기</button>
						<input type="button" value="Log In" onclick="loginChecking()">
					</div>
					<span id ="submitresult"></span>
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
		<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>
	</body>
</html>