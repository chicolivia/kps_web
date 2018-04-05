<!--  
	@Author Junmin Seong (chicolivia@gmail.com)
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Find ID&PW</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="/assets/css/main.css" />
	</head>
	<body>
		<!-- Wrapper -->
	<div id="wrapper">
	<!-- Header && Menu -->
	<jsp:include page="/menuPages/menuBar.jsp" flush="true" />
	
	<section style="text-align: center">
		<div >
			<br><br><br><br><br><br>
			<p style="font-weight: bold;"> 찾으신 아이디는 ${param.findedId} 입니다.</p>
		</div>
	</section>
	<!--페이지 밑단  -->
		<jsp:include page="/menuPages/footer.jsp"></jsp:include>

	</div>
	<!-- Scripts -->
		<script src="/assets/js/jquery.min.js"></script>
		<script src="/assets/js/jquery.dropotron.min.js"></script>
		<script src="/assets/js/jquery.scrollex.min.js"></script>
		<script src="/assets/js/skel.min.js"></script>
		<script src="/assets/js/util.js"></script>
		<script src="/assets/js/main.js"></script>
		<script src="/assets/js/findIdPw.js"></script>
	</body>
</html>