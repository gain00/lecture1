<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    String name ="장성호";
    String msg = "hello";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- html파일안에 java code쓰기 -->
<!--jsp? html + java  -->
<h1>hello.jsp</h1>
<h2><%=name %></h2><!--out.println -> = 대체가능 -->

<%
	
	for(int i =0; i<9; i++){
		out.println("hello.jsp <br>");
	}
%>
</body>
</html>