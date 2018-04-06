<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.domain.CoinPredBean"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="model.BitCoinDAO"%>
<%@ page import="util.TimeStampConvert"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p id="cc"></p>
	<p id="dd"></p>
	<script type="text/javascript">
	var data = [];
	data.push([1,2]);
	data.push([2,3]);
	document.getElementById("cc").innerText = data[1];
	</script>
</body>
</html>
