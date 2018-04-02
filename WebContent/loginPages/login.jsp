<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Log In</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/kps/assets/css/main.css" />
	</head>
	<body>
	<!-- Header && Menu -->
	<jsp:include page="/menuPages/menuBar.jsp" flush="true" />
		
			<section id ="banner">
				<div class="inner">
					<form action="../LoginCheck" onsubmit="return loginChecking()" method="POST">
						<input type="text" placeholder="id" id="id1" name ="id">
						<span id="idresult"></span><br>
						<input type="password" placeholder="password" id="pw1" name="pw"><br>
						<div>
							<button>ID/PW 찾기</button>
							<input type="submit" value="Log In">
						</div>
						<span id ="submitresult"></span>
						<input style="VISIBILITY: hidden; WIDTH:0px">
					</form>
				</div>
			</section>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/skel.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
			<script src="../assets/js/login.js"></script>
	</body>
</html>