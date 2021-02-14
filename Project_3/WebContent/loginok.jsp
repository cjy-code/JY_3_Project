<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.login.DBUtil" %>
<%@ page import="java.sql.*" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  --%>

<% 
	request.setCharacterEncoding("UTF-8");

	//1.데이터 불러오기
	String id = request.getParameter("userId");
	String password = request.getParameter("userPassword");
	
	//2.
	Connection conn= DBUtil.open();
	
	String sql = "call prologin(?,?)";
	
	PreparedStatement stat = conn.prepareStatement(sql);
	
	stat.setString(1, id);
	stat.setString(2, password);
	
	int result = stat.executeUpdate();
	
	
	
	pageContext.setAttribute("reuslt", result);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>

<body>

<div class= "container">
	<h1 class="page-header">로그인 정보 확인</h1>
	
	아이디: <%= id %>
	비밀번호: <%= password %>
	
</div>
<script>



</script>
</body>
</html>