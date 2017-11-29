<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dopetrope by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

<style type="text/css">
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
</head>
<body class="no-sidebar" style="background-color: white;">
	]
	<div id="container">
		<div class="button-1">
			<div class="eff-1"></div>
			<a href="Login.html"> 로그인 </a>
		</div>
		<div class="button-4">
			<div class="eff-4"></div>
			<a href="JoinForm.html"> 회원가입 </a>
		</div>

	</div>
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<div id="header">

				<!-- Logo -->
				<h1>
					<a href="main.jsp">알비스의 바입니다.</a>
				</h1>

				<!-- Nav -->
				<nav id="nav">
				<ul>
					<li><a href="main.jsp">MAIN</a></li>
					<li><a href="#">INTRODUCE</a></li>
					<li><a href="Info.jsp">INFO</a></li>
					<li><a href="Community.jsp">COMMUNITY</a></li>
					<li class="current"><a href="MyPage.jsp">MY PAGE</a></li>
				</ul>
				</nav>

			</div>
		</div>

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">

				<!-- Content -->
				<article class="box post">


				<div style="margin-left: 20%; margin-right: 30%;">
					<div>
						<table>
							<tr>
								<td align="left">비밀번호를 입력해주세요</td>
								<td align="right"><input type="text" ></td>
							</tr>
						</table>
					</div>

					<div>
						<table>
							<tr>
								<td align="left">비밀번호를 다시확인해주세요</td>
								<td align="right"> <input type="text"></td>
							</tr>
						</table>
					</div>

					<div>
						<table>
							<tr>
								<td align="left">닉네임을 입력해주세요</td>
								<td align="right"><input type="text"></td>
							</tr>
						</table>
					</div>

					<div>
						<table>
							<tr>
								<td align="left">나이를 입력해주세요</td>
								<td align="right"><input type="text"></td>
							</tr>
						</table>
					</div>

					<div>
						<table>
							<tr>
								<td align="left">사는 지역을 입력해주세요</td>
								<td align="right"><input type="text"></td>
							</tr>
						</table>
					</div>
				</div>
				<p align = "center">
				<input type = "button"  style="width: 150px; height: 60px;" value="확인">
				</p>
				</article>


			</div>
		</div>

		<!-- Footer -->
		<div id="footer-wrapper">
			<section id="footer" class="container">
			<div class="row">
				<div class="8u 12u(mobile)">
					<section> <header>
					<h2>Blandit nisl adipiscing</h2>
					</header>
					<ul class="dates">
						<li><span class="date">Jan <strong>27</strong></span>
							<h3>
								<a href="#">Lorem dolor sit amet veroeros</a>
							</h3>
							<p>Ipsum dolor sit amet veroeros consequat blandit ipsum
								phasellus lorem consequat etiam.</p></li>
						<li><span class="date">Jan <strong>23</strong></span>
							<h3>
								<a href="#">Ipsum sed blandit nisl consequat</a>
							</h3>
							<p>Blandit phasellus lorem ipsum dolor tempor sapien tortor
								hendrerit adipiscing feugiat lorem.</p></li>
						<li><span class="date">Jan <strong>15</strong></span>
							<h3>
								<a href="#">Magna tempus lorem feugiat</a>
							</h3>
							<p>Dolore consequat sed phasellus lorem sed etiam nullam
								dolor etiam sed amet sit consequat.</p></li>
						<li><span class="date">Jan <strong>12</strong></span>
							<h3>
								<a href="#">Dolore tempus ipsum feugiat nulla</a>
							</h3>
							<p>Feugiat lorem dolor sed nullam tempus lorem ipsum dolor
								sit amet nullam consequat.</p></li>
						<li><span class="date">Jan <strong>10</strong></span>
							<h3>
								<a href="#">Blandit tempus aliquam?</a>
							</h3>
							<p>Feugiat sed tempus blandit tempus adipiscing nisl lorem
								ipsum dolor sit amet dolore.</p></li>
					</ul>
					</section>
				</div>
				<div class="4u 12u(mobile)">
					<section> <header>
					<h2>What's this all about?</h2>
					</header> <a href="#" class="image featured"><img src="images/pic10.jpg"
						alt="" /></a>
					<p>
						This is <strong>Dopetrope</strong> a free, fully responsive HTML5
						site template by <a href="http://twitter.com/ajlkn">AJ</a> for <a
							href="http://html5up.net/">HTML5 UP</a> It's released for free
						under the <a href="http://html5up.net/license/">Creative
							Commons Attribution</a> license so feel free to use it for any
						personal or commercial project &ndash; just don't forget to credit
						us!
					</p>
					<footer> <a href="#" class="button">Find out more</a> </footer> </section>
				</div>
			</div>
			<div class="row">
				<div class="4u 12u(mobile)">
					<section> <header>
					<h2>Tempus consequat</h2>
					</header>
					<ul class="divided">
						<li><a href="#">Lorem ipsum dolor sit amet sit veroeros</a></li>
						<li><a href="#">Sed et blandit consequat sed tlorem
								blandit</a></li>
						<li><a href="#">Adipiscing feugiat phasellus sed tempus</a></li>
						<li><a href="#">Hendrerit tortor vitae mattis tempor
								sapien</a></li>
						<li><a href="#">Sem feugiat sapien id suscipit magna
								felis nec</a></li>
						<li><a href="#">Elit class aptent taciti sociosqu ad
								litora</a></li>
					</ul>
					</section>
				</div>
				<div class="4u 12u(mobile)">
					<section> <header>
					<h2>Ipsum et phasellus</h2>
					</header>
					<ul class="divided">
						<li><a href="#">Lorem ipsum dolor sit amet sit veroeros</a></li>
						<li><a href="#">Sed et blandit consequat sed tlorem
								blandit</a></li>
						<li><a href="#">Adipiscing feugiat phasellus sed tempus</a></li>
						<li><a href="#">Hendrerit tortor vitae mattis tempor
								sapien</a></li>
						<li><a href="#">Sem feugiat sapien id suscipit magna
								felis nec</a></li>
						<li><a href="#">Elit class aptent taciti sociosqu ad
								litora</a></li>
					</ul>
					</section>
				</div>
				<div class="4u 12u(mobile)">
					<section> <header>
					<h2>Vitae tempor lorem</h2>
					</header>
					<ul class="social">
						<li><a class="icon fa-facebook" href="#"><span
								class="label">Facebook</span></a></li>
						<li><a class="icon fa-twitter" href="#"><span
								class="label">Twitter</span></a></li>
						<li><a class="icon fa-dribbble" href="#"><span
								class="label">Dribbble</span></a></li>
						<li><a class="icon fa-linkedin" href="#"><span
								class="label">LinkedIn</span></a></li>
						<li><a class="icon fa-google-plus" href="#"><span
								class="label">Google+</span></a></li>
					</ul>
					<ul class="contact">
						<li>
							<h3>Address</h3>
							<p>
								Untitled Incorporated<br /> 1234 Somewhere Road Suite<br />
								Nashville, TN 00000-0000
							</p>
						</li>
						<li>
							<h3>Mail</h3>
							<p>
								<a href="#">someone@untitled.tld</a>
							</p>
						</li>
						<li>
							<h3>Phone</h3>
							<p>(800) 000-0000</p>
						</li>
					</ul>
					</section>
				</div>
			</div>
			<div class="row">
				<div class="12u">

					<!-- Copyright -->
					<div id="copyright">
						<ul class="links">
							<li>&copy; Untitled. All rights reserved.</li>
							<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>

				</div>
			</div>
			</section>
		</div>

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