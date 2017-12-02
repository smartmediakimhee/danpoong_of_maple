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
font-family: 'Nanum Brush Script', cursive;
}
/* 모달 css 시작 */
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
/* 모달 css 끝 */
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
</head>
<body class="no-sidebar" style="background-color: white;">
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
				<label for="lastname">Location</label> <input type="text"
					id="lastname" name="location" />
			</div>
			<input type="submit" value="Sign Up" /> <a class="close"
				href="#close"></a>
		</div>
	</form>

	<!-- 모달 코드 끝 -->

	<!-- <div id="container">
		<div class="button-1">
			<div class="eff-1"></div>
			<a href="Login.html"> 로그인 </a>
		</div>
		<div class="button-4">
			<div class="eff-4"></div>
			<a href="JoinForm.html"> 회원가입 </a>
		</div>

	</div> -->

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
					<li><a href="#">INTRODUCE</a>
						<ul>
							<li><a href="#">Lorem ipsum dolor</a></li>
							<li><a href="#">Magna phasellus</a></li>
							<li><a href="#">Etiam dolore nisl</a></li>
							<li><a href="#">Phasellus consequat</a>
								<ul>
									<li><a href="#">Magna phasellus</a></li>
									<li><a href="#">Etiam dolore nisl</a></li>
									<li><a href="#">Veroeros feugiat</a></li>
									<li><a href="#">Nisl sed aliquam</a></li>
									<li><a href="#">Dolore adipiscing</a></li>
								</ul></li>
							<li><a href="#">Veroeros feugiat</a></li>
						</ul></li>
					<li><a href="Info.jsp">INFO</a></li>
					<li class="current"><a href="Community.jsp">COMMUNITY</a></li>
					<li><a href="MyPage.jsp">MY PAGE</a></li>
				</ul>
				</nav>

			</div>
		</div>
<!--  -->
		<!-- Main -->
		<div id="main-wrapper">
			<div class="container" style="height:700px;">
				<!-- Content -->
				<article class="box post"> 
					<div class="PostList" style="height:100%;">
						<iframe src="PostList.jsp" style="width: 100%; height:600px;" scrolling="no"></iframe>
					</div>
					<div class="PostWrite">
					
					</div>
				</article>
			</div>
		</div>

	</div>
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

</body>
</html>