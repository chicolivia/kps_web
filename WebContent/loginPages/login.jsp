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
		<link rel="stylesheet" href="/assets/css/main.css" />
	</head>
	<body>
	<!-- Header && Menu -->
	<jsp:include page="/menuPages/menuBar.jsp" flush="true" />
		
		
		<section class="main alt">
						<header>
							<h1>Sign up</h1>
							<p>Aenean ornare velit lacus varius enim ullamcorper proin aliquam facilisis ante sed etiam magna interdum congue. Sed consequat amet dolor magna consequat. Lorem ipsum dolor amet nullam sed etiam veroeros.</p>
						</header>
						<div class="inner style2">
						<div class="row 200%">
								<div class="6u 12u$(medium)">
		
		<section id ="one" class="wrapper major-pad">
			<div class="inner">
				<h4>Log In</h4>
				<form action="/LoginController" id="loginForm" method="POST" onkeydown="return onKeyDown()">
					<div>
						<div class="6u$ 12u$(xsmall)">
							<input type="text" placeholder="id" id="id1" name ="id" >
							<br>
						</div>
						<div class="6u$ 12u$(xsmall)">
							<input type="password" placeholder="password" id="pw1" name="pw"><br>
						</div>
						<div class="12u$">
							<ul class="actions">
								<li><input type="button" onclick="location.href='/loginPages/findIdPw.jsp'" class="special" value="ID/PW 찾기"></li>				
								<li><input type="button" value="Log In" onclick="loginChecking()" class= "special"></li>
							</ul>
						</div>
					</div>
				</form>
				<span><h3 id ="submitresult"></h3></span>
			</div>
		</section>
		
		</div>
		</div>
		</div>
		</section>
		
	<!-- Scripts -->
		<script src="/assets/js/jquery.min.js"></script>
		<script src="/assets/js/jquery.dropotron.min.js"></script>
		<script src="/assets/js/jquery.scrollex.min.js"></script>
		<script src="/assets/js/skel.min.js"></script>
		<script src="/assets/js/util.js"></script>
		<script src="/assets/js/main.js"></script>
		<script src="/assets/js/login.js"></script>
	</body>
</html>