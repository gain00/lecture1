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
String pUserName = request.getParameter("userName");
String pUserEmail = request.getParameter("userEmail");

String pUserAddress = request.getParameter("userAddress");
int pZonecode = Integer.parseInt(request.getParameter("zonecode"));
String pDetailAddress = request.getParameter("detailAddress");
String pExtraAddress = request.getParameter("extraAddress");



String driver = "oracle.jdbc.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "wjdwo1104";
String pw = "1234";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "insert into member values (?,?,?,?,?,?,?,?)";

Class.forName(driver);
conn = DriverManager.getConnection(url, id, pw);
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, pUserId);
pstmt.setString(2, pUserPw);
pstmt.setString(3, pUserEmail);
pstmt.setString(4, pUserName);
pstmt.setInt(5, pZonecode);
pstmt.setString(6, pUserAddress);
pstmt.setString(7, pDetailAddress);
pstmt.setString(8, pExtraAddress);


int result = pstmt.executeUpdate(); //select를 제외하ㅏ ㄴ나머지 update,delete,insert executeUpdate를 사용



if(result>0){
	response.sendRedirect("login-form.jsp");
}else{
	out.println("<script>alert('서버오류입니다. 잠시뒤 다시 시돟해주세요'); location.href='';</script>");
}



%>