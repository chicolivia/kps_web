<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Sign Up</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<style>
			body {
				background-color: grey;
				color: #888;
			}
		</style>
	</head>
	<body>

		<!-- Header -->
			<header id="header" class="alt">
				<a class="logo" href="../index.jsp">KPS <span>by 바늘토</span></a>
				
				<nav>
					<ul>
						<li>
							<a href="#menu">메뉴</a>
						</li>
					</ul>
				</nav>
			</header>

		<!-- Menu -->
			<nav id="menu">
				<ul class="links">
					<li><a href="../index.jsp">Home</a></li>
					<li><a href="../menuPages/intro.jsp">소개</a></li>
					<li><a href="../menuPages/predict.jsp">예측</a></li>
					<li><a href="../menuPages/alarm.jsp">알림 서비스</a></li>
					<li><a href="../menuPages/aboutus.jsp">그룹 정보</a></li>
					<li><a href="" class="button special">Sign Up</a></li>
					<li><a href="#" class="button">Log In</a></li>
				</ul>
			</nav>
		
			<section id ="banner">
				<div class="inner">
					<form action="../SignUpMember" onsubmit="return submitCheck()" method="POST" onkeydown="return captureReturnKey(event)">
						<input type="text" placeholder="id" id="id1" onblur="idCheck()" name ="id">
						<span id="idresult"></span><br>
						<input type="password" placeholder="password" id="pw1" onkeyup="pwCheck()" name="pw">
						
						<input type="password" placeholder="repeat password" id="pw2" onkeyup="pwCheck()">
						<span id="pwresult"></span>
						<input type="email" placeholder="sophie@example.com" id="email1" onblur="emailCheck()" name="email"><br>
						<span id="emailresult"></span>
						<div id = "alarmAgrees">
							<span>알람 수신 동의여부</span><br>
							<input type="radio" id="alarmAgreeRadio1" name="alarmAgree" onclick="alarmChecking()" value=1>
							<label for ="alarmAgreeRadio1">동의함</label>
							<input type="radio" id="alarmAgreeRadio2" name="alarmAgree" onclick="alarmChecking()" value=0>
							<label for ="alarmAgreeRadio2">동의하지 않음</label>
						</div>
						<div id = "riskTypes">
							<span>투자 성향 선택</span><br>
							<input type="radio" id="riskType1" name="riskType" value=1 onclick="riskCheck()">
							<label for ="riskType1">원금 보장 추구형</label>
							<input type="radio" id="riskType2" name="riskType" value=2 onclick="riskCheck()">
							<label for ="riskType2">균형 투자형</label>
							<input type="radio" id="riskType3" name="riskType" value=3 onclick="riskCheck()">
							<label for ="riskType3">고위험.고수익 투자형</label>
						</div>
						<input type="submit" value="Sign up"><br>
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