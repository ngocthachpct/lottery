<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String redirectURL = "http://localhost:8081/SWP490X_VNN/index";
	response.sendRedirect(redirectURL);
	%>
</body>
</html>