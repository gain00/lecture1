<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginRsult" method="post"><!-- 파일명을 쓰는게 아니라 파일안에 웹서블릿 부분을 입력 -->
		<label><span>id</span><input type="text" name = "userId"></label>
		<label><span>id</span><input type="password" name = "userPw"></label>
		<button>로그인</button>
	</form>
</body>
</html>