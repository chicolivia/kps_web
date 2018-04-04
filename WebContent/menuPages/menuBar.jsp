<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- Header -->
	<header id="header" class="alt">
		<!-- Logo -->
		<div class="logo">
			<a href="/index.jsp"><strong>KPS</strong> by 바늘토</a>
		</div>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="/index.jsp">Home</a></li>
				<li><a
					href="/menuPages/intro.jsp">소개</a></li>
				<li><a
					href="/menuPages/predict.jsp">예측</a></li>
				<li><a
					href="/menuPages/alarm.jsp">알림
						서비스</a></li>
				<li><a
					href="/menuPages/aboutus.jsp">About
						us</a></li>
				<li>
					<%
						if(session.getAttribute("memberNo")== null){
						%> <a
					href="/loginPages/signup.jsp"
					class="button special">Sign Up <%
						}else{
						%> <a
						href="/loginPages/mypage.jsp"
						class="button special">My Page<%
						}%>
					</a>
				</li>
				<li>
					<%if(session.getAttribute("memberNo") ==null){%> <a
					href="/loginPages/login.jsp"
					class="button" id="lowerButton">Log In<%
						}else{%> <a
						href="/biz/logout.jsp"
						class="button" id="lowerButton">Log Out<%
						}%>
					</a>
				</li>
			</ul>
		</nav>

	</header>