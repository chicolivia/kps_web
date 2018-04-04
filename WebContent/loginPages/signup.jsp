<!--  
	@Author Junmin Seong (chicolivia@gmail.com)
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>KPS</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="/assets/css/main.css" />
</head>
<body>

<!-- Header && Menu -->
	<jsp:include page="/menuPages/menuBar.jsp" flush="true"></jsp:include>
	
	<!-- Section -->
					<section class="main alt">
						<header>
							<h1>Elements</h1>
							<p>Aenean ornare velit lacus varius enim ullamcorper proin aliquam facilisis ante sed etiam magna interdum congue. Sed consequat amet dolor magna consequat. Lorem ipsum dolor amet nullam sed etiam veroeros.</p>
						</header>
						<div class="inner style2">

							<div class="row 200%">
								<div class="6u 12u$(medium)">
	
			<section id ="one" class="wrapper major-pad">
				<div class="inner">
					<div class ="centered">
						<!-- <h1>Sign Up</h1> -->
						<form action="/SignUpMember" onsubmit="return submitCheck()" method="POST" onkeydown="return captureReturnKey(event)">
							<div>
								<div class="6u$ 12u$(xsmall)">
									<input type="text" placeholder="id" id="id1" onblur="idCheck()" name ="id">
									<span id="idresult"></span><br>
								</div>
								<div class="6u$ 12u$(xsmall)">
									<input type="password" placeholder="password" id="pw1" onkeyup="pwCheck()" name="pw">
									<input type="password" placeholder="repeat password" id="pw2" onkeyup="pwCheck()">
									<span id="pwresult"></span><br>
								</div>
								<div class="6u$ 12u$(xsmall)">
									<input type="email" placeholder="sophie@example.com" id="email1" onblur="emailCheck()" name="email">
									<span id="emailresult"></span><br>
									<div class ="6u 12u(xsmaill)">
										<input type="text" name ="cerText" id="cerText" disabled="disabled">
									</div>
									<div>
										<input type="button" disabled="disabled" id="sendCerButton" onclick="sendingCerNum()" value="인증 메일 보내기">
										<input type="button" disabled="disabled" id="checkCerNumButton" onclick="checkingCerNum()" value="인증 번호 확인">
									</div>
								</div>
								<br>
								<div id = "alarmAgrees" class ="12u 12u$">
									<h4>알람 수신 동의여부</h4>
										<input type="radio" id="alarmAgreeRadio1" name="alarmAgree" onclick="alarmChecking()" value=1>
										<label for ="alarmAgreeRadio1"><p>동의함</p></label>
										<input type="radio" id="alarmAgreeRadio2" name="alarmAgree" onclick="alarmChecking()" value=0>
										<label for ="alarmAgreeRadio2">동의하지 않음</label>
								</div>
								<br>
								<div>
									<h4>투자 성향 선택</h4>
									<input type="radio" id="riskType1" name="riskType" value=1 onclick="riskCheck()">
									<label for ="riskType1" class="alt">원금 보장 추구형</label>
									<input type="radio" id="riskType2" name="riskType" value=2 onclick="riskCheck()">
									<label for ="riskType2">균형 투자형</label>
									<input type="radio" id="riskType3" name="riskType" value=3 onclick="riskCheck()">
									<label for ="riskType3">고위험.고수익 투자형</label>
								<br>
								</div>
								<div>
									<br>
									<ul class="actions">
										<li>
											자신의 성향을 잘 모르겠다면? &nbsp;&nbsp;
											<a href="#" class="button">투자 성향 테스트</a>
										</li>
									</ul>
								</div>
								<br>
								<div>
									<input type="submit" value="Sign up" class="special"><br>
									<span id ="submitresult"></span>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
			
			</div>
			</div>
			</div>
			</section>
			
		<!-- Scripts -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/skel.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/signup.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>