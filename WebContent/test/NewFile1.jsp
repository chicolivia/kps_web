<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.jsoup.nodes.Element, org.jsoup.select.Elements, org.jsoup.Jsoup, org.jsoup.nodes.Document"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 기준 거래소 코인원, 업비트,  빗썸 // 비교 거래소 : 
		Document doc = Jsoup.connect("http://www.naver.com").get();
		Elements tags = doc.getAllElements();
		for (Element oneTag: tags){
			System.out.println(oneTag);
		}
	%>
</body>
</html>
