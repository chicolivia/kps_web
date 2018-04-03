<!--  
@Author Junmin Seong (chicolivia@gmail.com)
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>KPS</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
<body>
	<!-- Header && Menu -->
	<jsp:include page="/menuPages/menuBar.jsp" flush="true" />
		
			<section id ="banner">
				<div class="inner">
					<form action="${pageContext.request.contextPath}/SignUpMember" onsubmit="return submitCheck()" method="POST" onkeydown="return captureReturnKey(event)">
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
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/skel.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/signup.js"></script>
</body>
</html>