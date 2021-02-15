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
/*로그인 CSS*/
#container {
	width: 100% px;
}


#switchBox {
	width: 401px;
	height: 60px;
	margin: 0px auto;
	/* border: 1px solid blue;  */
}

/*체인지 박스 ()*/
.switchBoxs {
	border: 1px solid #ccc;
	width: 200px;
	height: 60px;
	padding: 10px;
	text-align: center;
	vertical-align: middle;
	border-collapse: collapse;
	border-bottom: none;
}

.float-left {
	float: left;
}

.float-right {
	float: right;
}

/*chbox 호버*/
#memberbtn:hover, #nonMbtn:hover {
	cursor: pointer;
	background-color: #ccc;
}

#loginform{
	position: relative;
}

#nonMemberLogin{
	/* position: relative; */
	 position: absolute; 
	top:367px;/* 367 */
	left:458px;/* 458 */
	display: none; 
}

#socialLogin > img{
	margin:5px 15px;
}

#loginsub > a{
	margin:0px 15px;	
}

address{
	/* position: absolute;
	top:600px;
	left:600px; */
	width: 400px;
	margin: 5px auto;
	text-align: center;
	
	
	
}



</style>
</head>

<body>
	<div id="container">



		<div id="logo">
			<img src="image/bookjeok/logo.png">
		</div>


		<div id="switchBox">
			<!-- 회원 로그인  버튼-->
			<div id="memberbtn" class="switchBoxs float-left">
				<h5>회원로그인</h5>
			</div>

			<!-- 비회원 주문 조회 버튼 -->
			<div id="nonMbtn" class="switchBoxs float-left">
				<h5>비회원 주문 조회</h5>
			</div>
		</div>


		<!-- 회원 로그인 -->
		<form action="loginok.jsp" method="POST" id="loginform">
			
			<div id="login">

				<input type="text" name="id" id="id"
					class="form-control noline medium inline" maxlength="15"
					placeholder="아이디를 입력해주세요"> <input type="password" name="pw"
					id="pw" class="form-control noline medium inline" maxlength="20"
					placeholder="비밀번호를 입력해주세요.">
				<div id="loginsub">
					<a href="">회원가입</a><span> | </span> <a href="">아이디 찾기</a><span> | </span>  <a href="">비밀번호 찾기</a>
				</div>

				<div id="socialLogin">
					<img alt="" src="image/social/w_login_g.jpg"> 
					<img alt="" src="image/social/w_login_n.jpg">
					<img alt=""	src="image/social/w_login_k.jpg">
				</div>

				<div id="loginBox">

					<input type="submit" class="btn btn-general" id="loginbtn"
						value="로그인">
				</div>
			</div>

		</form>



		<!-- 비회원 주문 조회 -->
		<form action="nonMemberSearch.jsp" method="POST" id="nonMemberLogin">
				<input type="text" name="id" id="id" class="form-control noline medium inline"  placeholder="E-Mail을 입력해주세요">
				<input type="text" name="id" id="id" class="form-control noline medium inline"  placeholder="연락처를 입력해주세요">
				<input type="text" name="id" id="id" class="form-control noline medium inline"  placeholder="비밀번호를 입력해주세요">
				<input type="submit" class="btn btn-general" id="loginbtn" value="주문 조회">
		</form>

	</div>

<!-- 	<div id="footer">
	</div> -->
		<address>
			<a>고객센터</a>
			<p>Copyright © <b>BookJeok</b> Corp. All Rights Reserved.</p>
		</address>
	<script>
		
	 var memberbtn = document.getElementById('memberbtn');
     var nonMbtn = document.getElementById('nonMbtn');

     var loginform = document.getElementById('loginform');
     var nonMemberLogin = document.getElementById('nonMemberLogin');
     
     nonMbtn.addEventListener('mousedown', function(e){
    	 
    	 nonMemberLogin.style.display='block';
    	 loginform.style.display='none';
     });
     
     memberbtn.addEventListener('mousedown', function(e){
    	 
    	 nonMemberLogin.style.display='none';
    	 loginform.style.display='block';
     });
	</script>
</body>
</html>