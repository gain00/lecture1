<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int dan = Integer.parseInt(request.getParameter("dan"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단을 출력합니다</title>
</head>
<body>
	<h1><%= dan %></h1>
	<%
	for(int i =1; i<10; i++){ 
		out.println("<p>"+dan+"x"+i+"="+dan*i+"</p>");
	}	
	%>
	<h2><</h2>
</body>
</html>