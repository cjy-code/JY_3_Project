<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>


<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<%@include file="/inc/asset.jsp"%>
<link href="login.css" rel="stylesheet" type="text/css">
<link href="global.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
</head>

<body>
	<div id="container">

		<div class="logo">
			<img src="images/logo.png">
			<%-- <%@include file="/inc/logheader.jsp"%> --%>
		</div>


		<form action="loginok.jsp" method="POST">
			<div class="content" id="topContent">
				<div id="idpasswordBox">
					<div class="inputBox">
						<input type="text" name="userId" id="userId" maxlength="15"
							value="아이디">
					</div>
					<div class="inputBox">
						<input type="password" name="userPassword" id="userPassword"
							maxlength="20" value="">
					</div>
				</div>
				<div id="loginsub">
					<a href="">회원가입</a> <a href="">아이디 찾기</a> <a href="">비밀번호 찾기</a>
				</div>
				<div id="loginBox">
					<!-- 					<input type="button" value= "로그인" name="logButton" onclick="location.href='loginok.jsp';"> -->
					<input type="submit" value="로그인" name="logButton">
				</div>
			</div>
		</form>

		
	</div>

	<address></address>
	<script>
		
	</script>
</body>
</html>