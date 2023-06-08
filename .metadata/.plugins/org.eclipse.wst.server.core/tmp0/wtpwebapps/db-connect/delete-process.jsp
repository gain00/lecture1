<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
String pUserId = request.getParameter("userId");
String pUserPw = request.getParameter("userPw");




String driver = "oracle.jdbc.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "wjdwo1104";
String pw = "1234";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = " delete from member where id = ? and password = ?";

Class.forName(driver);
conn = DriverManager.getConnection(url,id,pw);
pstmt = conn.prepareStatement(sql);

pstmt.setString(1, pUserId);
pstmt.setString(2, pUserPw);


int result = pstmt.executeUpdate(); //select를 제외하ㅏ ㄴ나머지 update,delete,insert executeUpdate를 사용dd



if(result>0){
	
	response.sendRedirect("login-form.jsp");
}else{
	out.println("<script>alert('잘못된 비밀번호입니다'); location.href='delete.jsp';</script>");
}



%>