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
<style type="text/css">
body {
	background-color: #12887A;
	height: 1200px;
}

.box {
	width: 400px;
	height: 1200px;
	background-color: white;
	margin: auto;
	margin-top: -30px;
	margin-bottom: -30px;
}

.content {
	width: 350px;
	height: 400px;
	margin: auto;
	border: 1px solid black;
}

#idpasswordBox {
	width: 300px;
	height: 100px;
	margin: auto;
	margin-top: 30px;
	border: 1px solid black;
}

#bottomContent {
	margin-top: 30px;
}

.inputBox {
	margin: 10px;
}

.inputBox>input {
	width: 280px;
	margin: auto;
}

#loginsub {
	width: 300px;
	height: 25px;
	margin: auto;
	border: 1px solid black;
}

#loginsub>a {
	margin-left: 20px
}
</style>
</head>

<body>
	<div class="box">

		<div class="header">
			<%@include file="/inc/logheader.jsp"%>
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
					<input type="submit" value= "로그인" name="logButton" >
				</div>
			</div>
		</form>



		<div class="content" id="bottomContent">
			<div></div>
		</div>

	</div>

	<script>
		
	</script>
</body>
</html>