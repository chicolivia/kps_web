<!--  
	@Author Junmin Seong (chicolivia@gmail.com)
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
		
		<section id ="one" class="wrapper major-pad">
			<div class="inner">
				<form action="/kps/LoginController" id="loginForm" method="POST" onkeydown="return onKeyDown()">
					<input type="text" placeholder="id" id="id1" name ="id" >
					<span id="idresult"></span><br>
					<input type="password" placeholder="password" id="pw1" name="pw"><br>
					<div>
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/loginPages/findIdPw.jsp'">ID/PW 찾기</button>						
						<input type="button" value="Log In" onclick="loginChecking()">
					</div>
					<span id ="submitresult"></span>
				</form>
			</div>
		</section>
	<!-- Scripts -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/skel.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>
	</body>
</html>