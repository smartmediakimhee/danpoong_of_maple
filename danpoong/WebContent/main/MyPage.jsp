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
<link href="https://fonts.googleapis.com/earlyaccess/nanumbrushscript.css"
	rel="stylesheet">
	<link href="http://fonts.googleapis.com/earlyaccess/jejuhallasan.css"
	rel="stylesheet">

<style type="text/css">

body {
	font-family: 'Indie Flower', cursive;
}

.korean{
font-family: 'Jeju Hallasan', cursive;
}

.panel {
	background-color: white;
	height: 80px;
	padding: 10px;
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

#pw {
	display: inline-block;
}

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
	background: #34495e;
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
<script type="text/javascript">
	function checkPwd() {
		var f1 = document.forms[0];
		var pw1 = f1.pw.value;
		var pw2 = f1.pw2.value;
		if (pw1 != pw2) {
			document.getElementById("pwMsg").style.color = "red";
			document.getElementById("pwMsg").innerHTML = "동일한 암호를 입력하세요.";
		} else {
			document.getElementById("pwMsg").style.color = "blue";
			document.getElementById("pwMsg").innerHTML = "암호가 동일합니다.";
		}
	}
</script>
</head>
<body class="no-sidebar" style="background-color: white;">
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


	<!-- 	<div id="container">
		<div class="button-1">
			<div class="eff-1"></div>
			<a href="Login.html"> 로그인 </a>
		</div>
		<div class="button-4">
			<div class="eff-4"></div>
			<a href="JoinForm.html"> 회원가입 </a>
		</div>
 -->

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
				<label for="lastname">Location</label>
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




	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<div id="header">

				<!-- Logo -->
				<h1>
					<a href="main.jsp">ALVIS'S BAR</a>
				</h1>

				<!-- Nav -->
				<nav id="nav">
				<ul>
					<li><a href="main.jsp">MAIN</a></li>
					<li><a href="introduce.jsp">INTRODUCE</a></li>
					<li><a href="Info.jsp">INFO</a></li>
					<li><a href="Community.jsp">COMMUNITY</a></li>
					<li class="current"><a href="MyPage.jsp">MY PAGE</a></li>
				</ul>
				</nav>

			</div>
		</div>
	</div>

	<!-- Main -->
	<form action="../updateService">
		<div id="main-wrapper">
			<div class="container">

				<!-- Content -->
				<article class="box post">
				<div style="margin-left: 20%; margin-right: 30%;">
					<table>
						<tr>
							<td align="left" class="korean"><h3 style="font-weight: 200; font-size:large;">비 밀 번 호 를 &nbsp  입 력 해 주 세 요</h3></td>
							<td align="right"><input type="password" name="pw">
							</td>
						</tr>
						<tr>
							<td align="left" class="korean"><h3 style="font-weight: 200; font-size:large;">비 밀 번 호 를 &nbsp 다 시 확 인 해 주 세 요</h3></td>
							<td align="right" height="50"><input type="password"
								name="pw2" onkeyup="checkPwd()">
								<div id="pwMsg" style="display: inline;"></div></td>
						</tr>
						<tr>
							<td align="left" class="korean"><h3 style="font-weight: 200; font-size:large;">닉 네 임 을 &nbsp  입 력 해 주 세 요</h3></td>
							<td align="right"><input type="text" name="nick"></td>
						</tr>
						<tr>
							<td align="left" class="korean"><h3 style="font-weight: 200; font-size:large;"> 나 이 를  &nbsp 입 력 해 주 세 요</h3></td>
							<td align="right"><input type="text" name="age"></td>
						</tr>
						<tr>
							<td align="left" class="korean"><h3 style="font-weight: 200; font-size:large;">사 는  &nbsp 지 역 을&nbsp   입 력 해 주 세 요</h3></td>
							<td align="right"><input type="text" name="location"></td>
						</tr>
					</table>
				</div>
				<p align="center">
					<input type="submit" style="width: 150px; height: 60px;" value="확인">
				</p>
				</article>
			</div>
		</div>
	</form>
	
	<div id="footer-wrapper">
			<section id="footer" class="container" style="text-align:center">
			<div style="display: block; text-align: center;">
				<h1 style="font-size: 65px">Alvis Bar</h1>
			</div>
			<br>			
			<div style="display: block; text-align: center;">
				<font style="font-family: 'Jeju Hallasan', cursive;">광주광역시 남구 송암로60 광주CGI센터 203호 (송하동)</font>
				<br>
				<font style="font-family: 'Jeju Hallasan', cursive;">김희정 방준영 이도건 이현선 전상호</font>
				<br>
				<font style="font-family: 'Jeju Hallasan', cursive;">062-655-3509</font>
				<br>
				<font style="font-family: 'Jeju Hallasan', cursive;">smhrd@smhrd.or.kr</font>
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