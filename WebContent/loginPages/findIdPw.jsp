<!--  
	@Author Junmin Seong (chicolivia@gmail.com)
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Find ID&PW</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	</head>
	<body>
	<!-- Header && Menu -->
	<jsp:include page="/menuPages/menuBar.jsp" flush="true" />
	
	<section id = "one" class="wrapper major-pad">
		<div class="inner" >
			<h4>아이디 찾기</h4>
			<form action="/kps/loginPages/findedId.jsp" id="findIdForm" method="POST" onkeydown="return onKeyDown()">
				<div class="6u$ 12u$(xsmall)">
					<input type="email" placeholder="email" name="emailAddress" id="email1"><br>
				</div>
				<input type="button" class="special" value="아이디 찾기" onclick="findId()">
			</form>
			<p style="color: red" id ="findIdResult"></p>
			<br>
			<h4>비밀번호 찾기</h4>
			<form action="/kps/loginPages/findedPw.jsp" id="findPwForm" method="POST" onkeydown="return onKeyDown()">
				<div class="6u$ 12u$(xsmall)">
					<input type="text" placeholder="id" name="id" id="id2">
				</div>
				<div class="6u$ 12u$(xsmall)">
					<input type="email" placeholder="email" name="emailAddress" id="email2"><br>
				</div>
				<input type="button" class="special" value="비밀번호 찾기" onclick="findPw()">
			</form>
			<p style="color: red" id ="findPwResult"></p>
		</div>
	</section>
	<!-- Scripts -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/skel.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/findIdPw.js"></script>
	</body>
</html>