<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Dopetrope by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

<link href="https://fonts.googleapis.com/css?family=Indie+Flower"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/earlyaccess/nanumbrushscript.css"
	rel="stylesheet">
<link href="http://fonts.googleapis.com/earlyaccess/jejuhallasan.css"
	rel="stylesheet">

<style type="text/css">
/* 모달 css 코드 시작 */
.panel {
	background-color: white;
	height: 80px;
	padding: 10px;
}

.korean {
	font-family: 'Jeju Hallasan', cursive;
	font-size: large;
}


.panel a#login_pop, .panel a#join_pop {
	border: 2px solid #aaa;
	color: #fff;
	display: block;
	float: left;
	margin-left: 10px;
	padding: 5px 10px;
	text-decoration: none;
	text-shadow: 1px 1px #000;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px;
	font-family: 'dotum';
}

a#login_pop:hover, a#join_pop:hover {
	border-color: #eee;
}

.overlay {
	background-color: rgba(0, 0, 0, 0.6);
	bottom: 0;
	cursor: default;
	left: 0;
	opacity: 0;
	position: fixed;
	right: 0;
	top: 0;
	visibility: hidden;
	z-index: 1;
	-webkit-transition: opacity .5s;
	-moz-transition: opacity .5s;
	-ms-transition: opacity .5s;
	-o-transition: opacity .5s;
	transition: opacity .5s;
}

.overlay:target {
	visibility: visible;
	opacity: 1;
}

.popup {
	background-color: #fff;
	border: 3px solid #fff;
	display: inline-block;
	left: 50%;
	opacity: 0;
	padding: 15px;
	position: fixed;
	text-align: justify;
	top: 40%;
	visibility: hidden;
	z-index: 10;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-moz-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-ms-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-o-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-webkit-transition: opacity .5s, top .5s;
	-moz-transition: opacity .5s, top .5s;
	-ms-transition: opacity .5s, top .5s;
	-o-transition: opacity .5s, top .5s;
	transition: opacity .5s, top .5s;
}

.overlay:target+.popup {
	top: 50%;
	opacity: 1;
	visibility: visible;
}

.close {
	background-color: rgba(0, 0, 0, 0.8);
	height: 30px;
	line-height: 30px;
	position: absolute;
	right: 0;
	text-align: center;
	text-decoration: none;
	top: -15px;
	width: 30px;
	-webkit-border-radius: 15px;
	-moz-border-radius: 15px;
	-ms-border-radius: 15px;
	-o-border-radius: 15px;
	border-radius: 15px;
}

.close:before {
	color: rgba(255, 255, 255, 0.9);
	content: "X";
	font-size: 24px;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
}

.close:hover {
	background-color: rgba(64, 128, 128, 0.8);
}

.popup p, .popup div {
	margin-bottom: 10px;
}

.popup label {
	display: inline-block;
	text-align: left;
	width: 120px;
}

.popup input[type="text"], .popup input[type="password"] {
	border: 1px solid;
	border-color: #999 #ccc #ccc;
	margin: 0;
	padding: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-ms-border-radius: 2px;
	-o-border-radius: 2px;
	border-radius: 2px;
}

.popup input[type="text"]:hover, .popup input[type="password"]:hover {
	border-color: #555 #888 #888;
}
/* 모달 css 코드 끝 */
.main_common {
	display: inline-block;
	border: 1px solid blue;
}

/* <link href="https://fonts.googleapis.com/css?family=Indie+Flower"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/nanumbrushscript.css"
	rel="stylesheet"> */
body {
	font-family: 'Indie Flower', cursive;
}

.korean {
	font-family: 'Nanum Brush Script', cursive;
}
/* 
font-family: 'Nanum Brush Script', cursive; */
#fixed {
	font-family: 'Indie Flower', cursive;
}

* {
	margin: 0;
	padding: 0;
}

ul, li {
	list-style: none;
}

#slide {
	height: 300px;
	position: relative;
	overflow: hidden;
	margin-left: 22%;
	margin-right: 22%;
}

#slide ul {
	width: 400%;
	height: 100%;
	transition: 1s;
}

#slide ul:after {
	content: "";
	display: block;
	clear: both;
}

#slide li {
	float: left;
	width: 25%;
	height: 100%;
}

#slide input {
	display: none;
}

#slide label {
	display: inline-block;
	vertical-align: middle;
	width: 10px;
	height: 10px;
	border: 2px solid #666;
	background: #fff;
	transition: 0.3s;
	border-radius: 50%;
	cursor: pointer;
}

#slide .pos {
	text-align: center;
	position: absolute;
	bottom: 10px;
	left: 0;
	width: 100%;
	text-align: center;
}

#pos1:checked ~ul {
	margin-left: 0%;
}

#pos2:checked ~ul {
	margin-left: -25%;
}

#pos3:checked ~ul {
	margin-left: -50%;
}

#pos4:checked ~ul {
	margin-left: -75%;
}

#pos1:checked ~.pos>label:nth-child(1) {
	background: #666;
}

#pos2:checked ~.pos>label:nth-child(2) {
	background: #666;
}

#pos3:checked ~.pos>label:nth-child(3) {
	background: #666;
}

#pos4:checked ~.pos>label:nth-child(4) {
	background: #666;
}

#recommandline {
	margin-left: 22%;
	margin-right: 22%;
}

#reviewline {
	margin-left: 22%;
	margin-right: 22%;
}

h3 {
	display: inline-block;
}

#review {
	display: inline-block;
	background-image: url("images/review2.jpg"); /* 이미지크기499/252  */
}

#review2 {
	display: inline-block;
	background-image: url("images/reviewsec3.jpg");
}

#review3 {
	display: inline-block;
	text-overflow: ellipsis;
	text-align: center;
}

#review4 {
	display: inline-block;
	text-overflow: ellipsis;
	text-align: center;
	display: inline-block;
}

/* 로그인 로그아웃 버튼 */
#container {
	width: 300px;
	height: 26px;
	margin-top: 3%;
	margin-left: 70%;
	display: inline-block;
}

.button-1 {
	width: 70px;
	height: 25px;
	border: 1px solid #34495e;
	float: left;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin-left: 10%;
	margin-bottom: 80%;
	display: inline-block;
}

.button-1 a {
	font-family: arial;
	font-size: 16px;
	color: #34495e;
	text-decoration: none;
	line-height: 25px;
	transition: all .5s ease;
	z-index: 2;
	position: relative;
}

.eff-1 {
	width: 70px;
	height: 25px;
	top: -2px;
	right: -70px;
	background: #34495e;
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
}

.button-1:hover .eff-1 {
	right: 0;
}

.button-1:hover a {
	color: #fff;
}

.button-4 {
	width: 70px;
	height: 25px;
	border: 1px solid #34495e;
	float: left;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin-left: 1%;
	display: inline-block;
}

.button-4 a {
	font-family: arial;
	font-size: 16px;
	color: #34495e;
	text-decoration: none;
	line-height: 25px;
	transition: all .5s ease;
	z-index: 2;
	position: relative;
}

.eff-4 {
	width: 70px;
	height: 50px;
	left: -70px;
	background: #.34495e; .
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
}

.button-4:hover .eff-4 {
	left: 0;
}

.button-4:hover a {
	color: #fff;
}
</style>


</head>


<body class="homepage" style="background-color: white;">

	<!-- 모달 코드 시작 -->
	<c:choose>
		<c:when test="${empty id }">
			<div id="container">
				<div class="button-1">
					<a href="#login_form" id="login_pop">login</a>
				</div>
				<div class="button-4">
					<a href="#join_form" id="join_pop">Join</a>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div id="container">
				<div class="button-1">
					<a href="Logout.jsp" id="login_pop">logout</a>
				</div>
			</div>
		</c:otherwise>
	</c:choose>

	<form action="../LoginService">
		<a href="#x" class="overlay" id="login_form"></a>
		<div class="popup">
			<h2>Welcome Guest!</h2>
			<p>Please enter your login and password here</p>
			<div>
				<label for="login">Login</label> <input type="text" id="login"
					name="id" />
			</div>
			<div>
				<label for="password">Password</label> <input type="password"
					id="password" name="pw" />
			</div>
			<input type="submit" value="Log In" /> <a class="close"
				href="#close"></a>
		</div>
	</form>
	<form action="../JoinService">
		<a href="#x" class="overlay" id="join_form"></a>
		<div class="popup">
			<h2>Sign Up</h2>
			<p>Please enter your details here</p>
			<div>
				<label for="email">ID</label> <input type="text" id="email"
					name="id" />
			</div>
			<div>
				<label for="pass">Password</label> <input type="password" id="pass"
					name="pw" />
			</div>
			<div>
				<label for="firstname">Password</label> <input type="password"
					id="firstname" name="pw2" />
			</div>
			<div>
				<label for="lastname">Nickname</label> <input type="text"
					id="lastname" name="nick" />
			</div>
			<div>
				<label for="lastname">Age</label> <input type="text" id="lastname"
					name="age" />
			</div>
			<div>
				<label for="lastname">Location</label><!-- <input type="text"
					id="lastname" name="location" /> -->
					<select name="lastname">
						<option value="서울">서울</option>
						<option value="인천">인천</option>
						<option value="대전">대전</option>
						<option value="대구">대구</option>
						<option value="광주">광주</option>
						<option value="부산">부산</option>
						<option value="울산">울산</option>
						<option value="제주">제주</option>
						<option value="경기">경기</option>
						<option value="충북">충북</option>
						<option value="충남">충남</option>
						<option value="전북">전북</option>
						<option value="전남">전남</option>
						<option value="경북">경북</option>
						<option value="경남">경남</option>
						<option value="강원">강원</option>
					</select>
			</div>
			<input type="submit" value="Sign Up" /> <a class="close"
				href="#close"></a>
		</div>
	</form>

	<!-- 모달 코드 끝 -->



	<!-- <div id="container">
		<div class="button-1">
			<div class="eff-1"></div>
			<a href="Login.html"> LOGIN </a>
		</div>
		<div class="button-4">
			<div class="eff-4"></div>
			<a href="JoinForm.html"> JOIN </a>
		</div>

	</div> -->

	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">

			<!-- 스크롤 고정 div -->
			<c:choose>
				<c:when test="${not empty sessionScope.id}">
					<div
						style="position: fixed; right: 100px; bottom: 500px; height: 70px; width: 170px;"">
						<button
							style="height: 70px; width: 170px; background-color: white;">
							<h5 style="color: black;" id="fixed"><a href="Form.jsp">find out more</a></h5>
						</button>
					</div>
				</c:when>
			</c:choose>
			<div id="header">




				<!-- Logo -->
				<h1>
					<a href="main.jsp" style="display: inline-block;">ALVIS'S BAR</a>
				</h1>
				<!-- ddddddd -->
				<!-- Nav -->
				<nav id="nav">
				<ul>
					<li class="current"><a href="index.html">MAIN</a></li>
					<li><a href="introduce.jsp">INTRODUCE</a></li>
					<li><a href="Info.jsp">INFO</a></li>
					<li><a href="../PostListService">COMMUNITY</a></li>
					<li><a href="MyPage.jsp">MY PAGE</a></li>
				</ul>
				</nav>

				<!-- Banner -->
				<div class="row3" align="left" style="width: 200px; height: 300px; ">
					<section id="banner" > <header >
					<h3 style="font-size: 30px;">WELCOME! WHAT DO YOU WANT?</h3>

					</header> </section>
				</div>


				<!-- Intro -->
				<br> <br>
				<div class="row2">
					<header class="major">

					<h2>A recommendation for you</h2>
					</header>

					<div class="row">
						<div class="4u 12u(mobile)">
							<a href="#" class="image featured"><img src="images/HI1.jpg"
								alt="" /></a>
							<header>
							<h3 class="korean">하이네켄</h3>
							</header>
							<h5 class="korean">당 신 의&nbsp 취 향 과&nbsp 딱&nbsp 맞 는&nbsp 술 입
								니 다 . &nbsp분 명&nbsp 마 음 에&nbsp 드 실&nbsp 겁 니 다 !</h5>
							<br> <br>alcohol 5%<br>price 2500<br>score
							8점
							<footer> <a href="Info.jsp" class="button alt">Find out
								more</a> </footer>
						</div>
						<div class="4u 12u(mobile)">
							<a href="#" class="image featured"><img src="images/ICE1.jpg"
								alt="" /></a>
							<header>
							<h3 class="korean">오크에이지드</h3>
							</header>
							<h5 class="korean">이 번 에&nbsp 새 로&nbsp 나 온&nbsp 술 입 니 다
								.&nbsp 맛 이&nbsp 기 대 가&nbsp 됩 니 다 !</h5>
							<br> <br> alcohol 13%<br> price 182000<br> score
							7점
							<footer> <a href="Info.jsp" class="button alt">Find out
								more</a> </footer>
						</div>
						<div class="4u 12u(mobile)">
							<a href="#" class="image featured"><img
								src="images/bodka1.jpg" alt="" /></a>
							<header>
							<h3 class="korean">스톨리치나야</h3>
							</header>
							<h5 class="korean">당 신 이&nbsp 즐 기 는&nbsp 술 은&nbsp 아 니 지
								만&nbsp 새 로 운&nbsp 도 전 을&nbsp 위 한&nbsp 당 신 에 게&nbsp 추 천 드 립 니 다 .</h5>
								<br>
							<br> alcohol 40%<br> price 35000<br> score 6점
							<footer> <a href="Info.jsp" class="button alt">Find out
								more</a> </footer>
						</div>



					</div>


				</div>
			</div>









			<!-- 술 순위 -->
			<br> <br>

			<div id="recommandline">
				<header class="major">

				<h2>Order of drinking</h2>
				</header>
			</div>

			<div id="slide">
				<input type="radio" name="pos" id="pos1" checked> <input
					type="radio" name="pos" id="pos2"> <input type="radio"
					name="pos" id="pos3"> <input type="radio" name="pos"
					id="pos4">
				<ul>
					<li
						style="background-color: white; opacity: 0.6; border-bottom: 3px solid black; border-top: 3px solid black">

						<table>
							<tr>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;"
													class="korean">소주</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean"><a href = "sojuinfo.jsp">참이슬 fresh</a></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">잎새주</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">좋은데이 석류</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">대장부</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">진로골드</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;"
													class="korean">맥주</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean"><a href = "beerinfo.jsp">하이트</a></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">호가든</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">카프리</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">카스 후레쉬</td>
										</tr>
										<!-- dsdsd -->
										<tr align="right">
											<td align="center" class = "korean">레드락</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;"
													class="korean">막걸리</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean"><a href = "macinfo.jsp">달홀주</a></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">입장탁주</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">고흥 알밤주</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">황토방 쌀막걸리</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">안양 동동주</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;"
													class="korean">양주</h3></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean"><a href = "whiskyinfo.jsp">쿠마라 포친</a></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">와일드 터키81</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">달모어 15년</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">조니워커 레드</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">쿠마라 포친</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>




					</li>
					<li
						style="background-color: white; opacity: 0.6; border-bottom: 3px solid #670000; border-right: 3px solid #670000; border-top: 3px solid #670000;">

						<table>
							<tr>

								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h3>
												<h3 style="color: black;" class="korean">샴페인</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href = "coginfo.jsp">델라모뜨 브뤼</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp카르타 네바다</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp그랑바흐까바</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp까바 벨리스코</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp멈로제</td>
										</tr>
									</table>
								</td>

								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h3>
												<h3 style="color: black;" class="korean">전통주</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href = "jeoninfo.jsp">하향주</a></td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp황금주</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp신라주</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp고소리술</td>
										</tr>
										<tr align="right">
											<td align="center" class = "korean">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp산삼술</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h3>
												<h3 style="color: black;" class="korean">와인</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href = "wineinfo.jsp">SPELL</a></td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCORRDIRON</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMRAPPLE</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLUISEWHITE</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLEMIO</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">암것도
													넣지마</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center">암것도 넣지마</td>
										</tr>
										<tr align="right">
											<td align="center">암것도 넣지마</td>
										</tr>
										<tr align="right">
											<td align="center">암것도 넣지마</td>
										</tr>
										<tr align="right">
											<td align="center">암것도 넣지마</td>
										</tr>
										<tr align="right">
											<td align="center">암것도 넣지마</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>

					</li>

				</ul>
				<p class="pos">
					<label for="pos1"></label> <label for="pos2"></label> <label
						for="pos3"></label> <label for="pos4"></label>
				</p>
			</div>



			<br> <br>
			<div id="reviewline">
				<header class="major">

				<h2>Top Review</h2>
				</header>
			</div>

			<div
				style="height: 600px; width: 1070px; margin-left: 22%; margin-right: 22%;">
				<div
					style="height: 250px; width: 430px; border: 1px solid #EAEAEA; margin-left: 2%; margin-top: 2%;"
					id="review";></div>

				<div
					style="height: 250px; width: 430px; border: 1px solid #EAEAEA; margin-left: 15.1%; margin-top: 2%;"
					id="review2";></div>

				<div
					style="height: 250px; width: 430px; border: 1px solid #EAEAEA; margin-left: 2%; margin-top: 2%;"
					id="review3";>
					<h3 class="korean">혼술하기 딱 좋은 술</h3>
					<br> <br>
					<p align="left" class="korean" style="font-size: x-large; font-weight: bold;">
						도청근처 신시외곽쪽 부타라는 술집에 혼술을 첨으로 해보앗어요 분위기도 좋고 다찌?? 바 형식의 자리에서 홀로 정갈한 마음으로 사람들속에서 먹는 기분 참 신기하고 기분 좋은 경험이었습니다. 다음에 기회가 된다면 또 마셔보고 싶네요.</p>
				</div>


				<div
					style="height: 250px; width: 430px; border: 1px solid #EAEAEA; margin-left: 15.1%; margin-top: 2%;"
					id="review4" >
					<h3 class="korean">친구들이랑 마셨어요</h3>
					<br> <br>
					<p align="left" class="korean" style="font-size: x-large; font-weight: bold;">
						어제 술자리 단체사진입니다!!
익숙한 얼굴이 대부분이지만 102기분들은 첫 술자리셔서 저언혀 모르겠군요..
진우형 옆에 102기 형님 한분 계셨는데 화장실 가신건지 사라지셨네요 ㅋㅋ
딩가에서 자주 뵈요!! 그와중에 귀요미 진우형도 보이네요..
요새 주량이 바짝 물이 올라서 라운지를 주름잡고 계시죠

						<!-- 168글자 가능 -->

					</p>
				</div>
			</div>
			<hr>
			<!-- Footer -->
			<div id="footer-wrapper">
				<section id="footer" class="container" style="text-align:center">
				<div style="display: block; text-align: center;">
					<h1 style="font-size: 65px">Alvis Bar</h1>
				</div>
				<br>
				<div style="display: block; text-align: center;">
					<font style="font-family: 'Jeju Hallasan', cursive;">광주광역시
						남구 송암로60 광주CGI센터 203호 (송하동)</font> <br> <font
						style="font-family: 'Jeju Hallasan', cursive;">김희정 방준영 이도건
						이현선 전상호</font> <br> <font
						style="font-family: 'Jeju Hallasan', cursive;">062-655-3509</font>
					<br> <font style="font-family: 'Jeju Hallasan', cursive;">smhrd@smhrd.or.kr</font>
				</div>
				<ul class="links" style="text-algin: center">
					<li>&copy; danpoong of maple. All rights reserved.</li>
				</ul>
				</section>
			</div>
			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/skel-viewport.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
</body>
</html>