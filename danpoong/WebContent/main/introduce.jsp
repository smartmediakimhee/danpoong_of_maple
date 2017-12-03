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
<link href="https://fonts.googleapis.com/earlyaccess/kopubbatang.css"
	rel="stylesheet">
<link href="http://fonts.googleapis.com/earlyaccess/jejuhallasan.css"
	rel="stylesheet">
	
	

<style type="text/css">
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
body {
	font-family: 'Indie Flower', cursive;
}

.korean{
font-family: 'KoPub Batang', serif;

}

h4 {
	display: inline-block;
}

p {
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
					<li class="current"><a href="introduce.jsp">INTRODUCE</a></li>
					<li><a href="Info.jsp">INFO</a></li>
					<li><a href="Community.jsp">COMMUNITY</a></li>
					<li><a href="MyPage.jsp">MY PAGE</a></li>
				</ul>
				</nav>

			</div>
		</div>

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">






				<!-- Content -->
				<article class="box post"> <header>
				<h3 class = "korean">알비스의 바에 오신 것을 환영합니다!</h3>

				</header>
				<p class = "korean" style="font-size: large;">당신의 1대1 바텐더, 알비스 입니다. 
수십 가지가 넘는 술 코너 앞에서 고민하신 적, 새로 출시된 술이 궁금하지만 무슨 맛인지 알 수 없어 돌아섰던 적은 없으신가요? 

당신은 어떤 술을 살지, 어떤 술을 마실지, 새로 나온 술은 무슨 맛인지 고민할 필요가 없습니다. 단지 알비스에 접속하시기만 하면 됩니다. 

알비스는 당신의 데이터를 분석하여 당신의 취향에 딱 맞는 술뿐만 아니라 신제품 중에 당신이 좋아할만한 술과, 현재 가장 트랜디한 술을 추천해 드립니다. 

그리고 알비스는 당신의 건강정보를 파악하여 음주량과 음주 주기를 제공합니다. 

단순히 마시고 취하는 음주문화에서 벗어나서 당신만의 술을 찾고 술의 맛을 느끼고 즐기고 다른 사람과 나누는 술자리, 알비스가 제공합니다. 
					
					</p> <p class = "korean">알비스를 이용하는 당신에게 언제나 &nbsp</p><h4 class = "korean">행운</h4><p class = "korean">이 있기를 빌겠습니다!</p>

						<section> <header>
						
						<br><br>
						<h2>Welcome to alvis's bar!</h2>
						</header>
						<p>Elementum odio duis semper risus et lectus commodo
							fringilla. Maecenas sagittis convallis justo vel mattis.
							placerat, nunc diam iaculis massa, et aliquet nibh leo non nisl
							vitae porta lobortis, enim neque fringilla nunc, eget faucibus
							lacus sem quis nunc suspendisse nec lectus sit amet augue rutrum
							vulputate ut ut mi. Aenean elementum, mi sit amet porttitor lorem
							ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum
							dolor sit amet nullam consequat feugiat dolore tempus. Elementum
							odio duis semper risus et lectus commodo fringilla. Maecenas
							sagittis convallis justo vel mattis. placerat, nunc diam iaculis
							massa, et aliquet nibh leo non nisl vitae porta lobortis, enim
							neque fringilla nunc, eget faucibus lacus sem quis nunc
							suspendisse nec lectus sit amet augue rutrum vulputate ut ut mi.
							Aenean elementum, mi sit amet porttitor lorem ipsum dolor sit
							amet, consectetur adipiscing elit. Lorem ipsum dolor.</p>
						<p>I wish you all the luck of using this site</p>
						</section>
						
				</article>

			</div>
		</div>

		<!-- Footer -->
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