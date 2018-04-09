<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KPS</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/assets/css/main.css" />
</head>
<body>
	<!-- Wrapper -->
	<div id="wrapper">
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
					<li><a href="/menuPages/intro.jsp">소개</a></li>
					<li><a href="/menuPages/predict.jsp">예측</a></li>
					<li><a href="/menuPages/alarm.jsp">알람</a></li>


					<li>
						<%
							if (session.getAttribute("memberNo") == null) {
						%> <a href="/loginPages/signup.jsp" class="button small">Sign
							Up <%
 	} else {
 %> <a href="/loginPages/mypage.jsp" class="button small">My
								Page<%
 	}
 %>
						</a>
					</li>

					<li>
						<%
							if (session.getAttribute("memberNo") == null) {
						%> <a
						href="/loginPages/login.jsp" class="button small" id="lowerButton">Log
							In<%
 	} else {
 %> <a href="/biz/logout.jsp" class="button small"
							id="lowerButton">Log Out<%
 	}
 %>
						</a>
					</li>

				</ul>
			</nav>

		</header>

		<!-- Banner -->
		<section id="banner">
			<div class="content">
			<h1>Korea Premium Signal</h1>
			</div>
			<a href="#first2" class="more scrolly">Learn More</a>
		</section>

		<!-- Section -->
		<section class="main accent2" id="first2">
			<header>
				<h2>김치프리미엄 그래프</h2>
				<p>크롤링해서 들여올 예정</p>
			</header>
			<div class="inner">
				<article class="post alt">
					<div class="content">
						<header>
							<span class="category">Lorem ipsum</span>
							<h3>Finibus et magna</h3>
						</header>
						<p>Integer mollis, nisl amet convallis, porttitor magna
							ullamcorper, amet egestas mauris. Ut magna finibus nisi nec sed
							lacinia. Nam maximus erat id euismod egestas. Pellentesque sapien
							ac quam. Lorem ipsum dolor sit nullam magna tempus. Lorem ipsum
							sit tempus amet feugiat.</p>
						<ul class="actions">
							<li><a href="#" class="button next">Learn More</a></li>
						</ul>
					</div>
					<div class="image" data-position="center">
						<img src="images/jaebal.png" alt="" />
					</div>
				</article>
			</div>
		</section>

		<!-- Section -->
		<section class="main alt" id="first">
			<header>
				<h2>한국 미국 거래소 자료 들여올 곳</h2>
				<p>크롤링을...한..번.. 해보곘습니다..</p>
			</header>
			<div class="inner">
				<article class="post style2">
					<div class="content">
					
					</div>
					<div class="image" data-position="center">
						<img src="images/index.jpg" alt="" />
					</div>
				</article>
			</div>
		</section>
		<!-- Section -->
		<section class="main">
			<header>
				<h2>환율 참고 자료</h2>
				<p>환율 참고 자료를 넣어보겠습니다.</p>
			</header>
			<div class="inner">
				<ul class="faces">
					<li><span class="image"><img src="images/pic01.jpg"
							alt="" /></span>
						<h3>Jane Doe</h3>
						<p>Sed magna etiam</p></li>
					<li><span class="image"><img src="images/pic02.jpg"
							alt="" /></span>
						<h3>John Smith</h3>
						<p>Ipsum et dolor</p></li>
					<li><span class="image"><img src="images/pic03.jpg"
							alt="" /></span>
						<h3>Kate Anderson</h3>
						<p>Euismod convallis</p></li>

				</ul>
			</div>
		</section>



		<!--페이지 밑단  -->
		<jsp:include page="/menuPages/footer.jsp"></jsp:include>


	</div>
	<!-- Scripts -->
	<script src="/assets/js/jquery.min.js"></script>
	<script src="/assets/js/jquery.dropotron.min.js"></script>
	<script src="/assets/js/jquery.scrollex.min.js"></script>
	<script src="/assets/js/jquery.scrolly.min.js"></script>
	<script src="/assets/js/skel.min.js"></script>
	<script src="/assets/js/util.js"></script>
	<script src="/assets/js/main.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>