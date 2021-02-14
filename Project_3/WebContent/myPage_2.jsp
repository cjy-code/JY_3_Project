<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/inc/asset.jsp"%>
<link href="global.css" rel="stylesheet" type="text/css">
<link href="myPage.css" rel="stylesheet" type="text/css">

<style type="text/css">
</style>
</head>

<body>

	<div class="container">
		<header>

			<!-- 상단메뉴 -->

			<div id="headerlink">
				<a href="#" class="headerlink-item"
					href="http://localhost:8090/test3/myPage.jsp">마이페이지</a> <a href="#"
					class="headerlink-item">로그인</a> <a href="#" class="headerlink-item">회원가입</a>
				<a href="#" class="headerlink-item">장바구니</a> <a href="#"
					class="headerlink-item">주문/배송조회</a> <a href="#"
					class="headerlink-item">고객센터</a>
			</div>

			<!-- 로고, 캐릭터, 검색창 -->

			<div id="searchmenu">

				<!-- 로고 및 캐릭터 -->
				<h1 class="title inline">북적북적</h1>
				<img src="image/character.png" id="character">

				<!-- 통합검색창(검색분류선택창) -->
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"
					role="button" aria-expanded="false">통합검색<span class="caret"></span></a>
				<!-- <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                    <li class="divider"></li>
                    <li><a href="#">One more separated link</a></li>
                </ul> -->

				<div class="searchdiv inline">
					<input type="text" id="search"
						class="form-control noline small inline"> <input
						type="button" id="searchbtn" value="검색"
						class="btn btn-general noline">
				</div>
			</div>

			<!-- 도서분류메뉴(navbar) -->
			<nav class="navbar">
				<div class="container-fluid">
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="#" class="nav-item">베스트도서</a></li>
							<li><a href="#" class="nav-item">신간도서</a></li>
							<li><a href="#" class="nav-item">국내도서</a></li>
							<li><a href="#" class="nav-item">해외도서</a></li>
							<li><a href="#" class="nav-item">E-Book</a></li>
							<li><a href="#" class="nav-item">중고게시판</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>


		<!-- 사이드 네비게이션바 -->


		<!-- content -->
		<div id="content">
			<div class="contentsBox">

				<h3 class="inline">최근 주문/배송 조회</h3>


				<a href="#">더보기</a>
				<table class="table tbl-md" id="orderList">
					<tr>
						<th>주문일자</th>
						<th>주문번호</th>
						<th>주문내역</th>
						<th>주문상태</th>
						<th>비고</th>
					</tr>
					<tr>
						<td>2020-12-01</td>
						<td><a href="#">1</a></td>
						<td>해리포터 마법사의 돌 외 2개...</td>
						<td>배송완료</td>
						<td>E-Book</td>
					</tr>
					<tr>
						<td>2021-01-30</td>
						<td><a href="#">2</td>
						<td>해리포터 불의 잔 외 1개...</td>
						<td>수령완료</td>
						<td>Baro-Book</td>
					</tr>
				</table>
			</div>

			<div class="contentsBox">
				<h3 class="inline">나의 1:1 문의</h3>
				<a href="#">더보기</a>
				<table class="table tbl-md" id="myQnA">

					<tr>
						<th>문의일자</th>
						<th>질문 분야</th>
						<th>제 목</th>
						<th>답변 여부</th>
					</tr>
					<tr>
						<td>2021-02-13</td>
						<td>환불 요청</td>
						<td><a href="#">환불 요청 어떻게 하나요?</a></td>
						<td>답변 완료</td>
					</tr>
					<tr>
						<td>2021-01-01</td>
						<td>상품 취소</td>
						<td><a href="#">상품 쉬소 어떻게 하나요?</a></td>
						<td>답변 완료</td>
					</tr>

				</table>
			</div>
			<div class="contentsBox">
				<h3 class="inline">나의 관심 상품</h3>
				<a href="#myInterest" data-toggle="modal">설정하기</a>
				<table class="table tbl-md" id="interestItem">
					<tr>
						<th>내 관심 뷴야</th>
					</tr>
					<tr>
						<td>1차 관심분야:</td>
					</tr>
					<tr>
						<td>2차 관심분야:</td>
					</tr>
					<tr>
						<td>3차 관심분야:</td>
					</tr>

				</table>
			</div>


		</div>

		<div class="modal fade" id="myInterest" role="dialog">
			<div class="modal-dialog modal-md">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">관심 분야 설정</h4>
						<table>
							<tr>
								<th><label><input type="radio" name="radio1"
										value="1차 관심 분야:">1차 관심 분야: </label></th>
								<td></td>
							</tr>
							<tr>
								<th><label><input type="radio" name="radio1"
										value="2차 관심 분야:">2차 관심 분야: </label></th>
								<td></td>
							</tr>
							<tr>
								<th><label><input type="radio" name="radio1"
										value="3차 관심 분야:">3차 관심 분야: </label></th>
								<td></td>
							</tr>
						</table>
					</div>
					<div class="modal-body">
						<table class="table thead-dark">
							<tr>
								<th>대분류</th>
								<th>중분류</th>
								<th>소분류</th>
							</tr>
							<tr>
								<td><select class="form-control">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
								</select></td>
								<td><select class="form-control">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
								</select></td>
								</td>
								<td>
								<select class="form-control">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
								</select></td>
								</td>
							</tr>
						</table>

					</div>
					<!-- <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div> -->
				</div>
			</div>
		</div>



		<!-- footer -->
		<!--  <div id="footer">
        <div class="footer_con">
            <ul class="member_area">
                <li style="border-right: 1px solid #EEE;"><a href="" style="color: white;">회사소개</a></li>
                <li style="border-right: 1px solid #EEE;"><a href="" style="color: white;">고객센터</a></li>
                <li style="border-right: 1px solid #EEE;"><a href="" style="color: white;">청약철회</a></li>
                <li style="border-right: 1px solid #EEE;"><a href="" style="color: white;">이용약관</a></li>
                <li style="border-right: 1px solid #EEE;"><a href="" style="color: white;">개인정보처리방침</a></li>
                <li><a href="" style="color: white;">광고문의</a></li>
            </ul>
        </div>
    
        <div class="logo_area">
            <img src="../imgs/bookjuck_logo.png" style="width: 250px;" alt="북적북적" />
        </div>
        <div class="click_footer">
            <address>
                ㈜ 북적북적 &nbsp; 서울시 강남구 역삼동 한독빌딩 &nbsp; 대표이사 : 웹사조<br />
                사업자등록번호 : 102-81-11670<br />
                <strong class="big">대표전화 : 1544 - 0000 (발신자 부담전화)</strong> &nbsp; 팩스 : 0000-000-0000 (지역번호공통)<br />
                서울특별시 통신판매업신고번호 : 제 000호
                <div class="copy">COPYRIGHT(C) <strong>BOOKJUCK BOOKJUCK</strong> ALL RIGHTS RESERVED.</div>
            </address>
        </div>
    </div> -->


	</div>
	<script>
		
	</script>
</body>
</html>