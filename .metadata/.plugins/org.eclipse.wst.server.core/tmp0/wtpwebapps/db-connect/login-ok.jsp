<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String userId = request.getParameter("userId");
    String requestUserId = (String)request.getAttribute("userId");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>로긘 성공</p>
	<p><%=userId%> 님 안녕하세요</p>
	<p><%=requestUserId%> 님 안녕하세요</p>
	
</body>
</html>