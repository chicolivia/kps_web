<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.domain.AlarmBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Alarm</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/assets/css/main.css" />
	</head>
	<body>
<!-- 메뉴바 -->
		<jsp:include page="/menuPages/menuBar.jsp"></jsp:include>
				<!-- Section -->

	<!-- Wrapper -->
	<div id="wrapper">
	
	<%if(session.getAttribute("memberInfo") == null) {
	%>
			<section class="main alt2">
				<header>
					<h1>Alarm</h1>
				</header>
				<div class="inner style3">
						<div class="image main" data-position="center"></div>
						<h3 style="text-align: center">로그인이 필요한 서비스 입니다.</h3>
				</div>
			</section>
	<%
	}
	else{
	%>
			<section class="main alt2">
				<header>
					<h1>Alarm</h1>
				</header>
				<div class="inner style3">
						<div class="image main" data-position="center">
							<c:if test="${empty memberInfo.alarmInfo}">
								<h3 style="text-align: center">알람을 추가해주세요</h3>
							</c:if>
							<c:if test="${not empty memberInfo.alarmInfo}">
								<h3 style="text-align: center;">Registered Alarms</h3>
								<c:forEach items="${memberInfo.alarmInfo}" var="alarm">
									<div class="button alt fit">
										<ul class="actions" >
												<li class="4u$ 12u$" >
													<c:if test="${alarm.coinNo == 1}">
														<p>BITCOIN</p>
													</c:if>	
													<c:if test="${alarm.coinNo == 2}">
														<p>Etherium</p>
													</c:if>	
												</li>
												<li class="6u$ 12u$" >
													<c:forEach items="${memberInfo.contactInfo}" var="contact">
														<c:if test="${alarm.contactNo == contact.contactNo}">
															<p>${contact.address }</p> 
														</c:if>
													</c:forEach>
												</li>
												<li class="3u$ 12u$">
													<p><fmt:formatNumber value="${alarm.percent}" type="number"/> %</p>
												</li>
										</ul>
									</div>
								</c:forEach>
							</c:if>
						</div>
						<hr class="major" />
						<!--  입력 양식 부분 -->
						<div class="image main" data-position="center">
							<form id="addAlarmForm" method="post" onkeydown="return captureReturnKey()" class="alt" action="/UpdateAlarm">
									<div class="box">
										<div class="row uniform">
											<div class="3u 12u$(xsmaill)">
												<div class="select-wrapper">
													<select name="coin-category" id="coin-category">
														<option value="1"><p>BitCoin</p></option>
													</select>
												</div>
											</div>
											<div class="3u 12u$(xsmaill)">
												<div class="select-wrapper">
													<select name="percent-category" id="percent-category">
														<c:forEach begin="1" end="31" step="1" var="steps" varStatus="v">
															<c:if test="${v.count-16 == 0}">
																<option value="${v.count-16}" selected><p>${v.count-16}%</p></option>
															</c:if>
															<c:if test="${v.count-16 != 0}">
																<option value="${v.count-16}"><p>${v.count-16}%</p></option>
															</c:if>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="3u 12u$(xsmaill)">
												<div class="select-wrapper">
													<select name="contactType-category" id="contactType-category">
														<option value="1">EMAIL</option>
													</select>
												</div>
											</div>
											<div class="3u 12u$(xsmaill)">
												<input type="button" value="등록" style="background-color: #E9967A" onclick="submit()">
											</div>									
										</div>
									</div><!-- box -->
								</form>
							</div>
				</div>
			</section>
	<%
	}
	%>
	</div>
	<!--페이지 밑단  -->
	<jsp:include page="/menuPages/footer.jsp"></jsp:include>

		<!-- Scripts -->
			<script src="/assets/js/jquery.min.js"></script>
			<script src="/assets/js/jquery.dropotron.min.js"></script>
			<script src="/assets/js/jquery.scrollex.min.js"></script>
			<script src="/assets/js/jquery.scrolly.min.js"></script>
			<script src="/assets/js/skel.min.js"></script>
			<script src="/assets/js/util.js"></script>
			<script src="/assets/js/main.js"></script>
			<script type="text/javascript">
				function captureReturnKey(e) {
					if (e.keyCode == 13) {
						return false;
					}
				}
			</script>
	</body>
</html>