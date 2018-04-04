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
				<div class="inner style2">
					<div class="row 200%">
						<div class="6u 12u$(medium)">
							<h5>회원가입이 완료되었습니다.</h5>
							<h5>다시 로그인해주세요.</h5>
						</div>
					</div>
				</div>
			</section>

		<jsp:include page="/menuPages/footer.jsp"></jsp:include>
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