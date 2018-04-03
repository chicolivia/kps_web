<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Header -->
	<header id="header" class="alt">
		<h1><a href="/kps/index.jsp">Slate <span>by Pixelarity</span></a></h1>
		<nav id="nav">
			<ul>
				<li><a href="/kps/index.jsp">Home</a></li>
				<li><a href="#">소개</a></li>
				<li><a href="#">예측</a></li>
				<li><a href="#">알림 서비스</a></li>
				<li><a href="/kps/menuPages/aboutus.jsp">About us</a></li>
				<li>
					<%
					if(session.getAttribute("memberNo")== null){
					%>
					<a href="/kps/loginPages/signup.jsp" class="button special" >Sign Up
					<%
					}else{
					%>
					<a href="/kps/loginPages/mypage.jsp" class="button special" >My Page<%
					}%>
					</a>
				</li>
				<li>
					<%if(session.getAttribute("memberNo") ==null){%>
						<a href="/kps/loginPages/login.jsp" class="button" id="lowerButton">Log In<%
					}else{%>
						<a href="/kps/biz/logout.jsp" class="button" id="lowerButton">Log Out<%
					}%>
						</a>
				</li>
			</ul>
		</nav>
	</header>