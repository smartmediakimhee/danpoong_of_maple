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
.main_common {
	display: inline-block;
	border: 1px solid blue;
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
	background-image: url("images/review2.jpg"); /* �̹���ũ��499/252  */
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

/* �α��� �α׾ƿ� ��ư */
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


<body class="homepage" style="background-color: white;">






	<div id="container">
		<div class="button-1">
			<div class="eff-1"></div>
			<a href="Login.html"> �α��� </a>
		</div>
		<div class="button-4">
			<div class="eff-4"></div>
			<a href="JoinForm.html"> ȸ������ </a>
		</div>

	</div>





	<div id="page-wrapper">



		<!-- Header -->
		<div id="header-wrapper">

			<!-- ��ũ�� ���� div -->
			<div
				style="position: fixed; right: 100px; bottom: 500px; height: 70px; width: 70px; border: 3px solid black;">
			</div>

			<div id="header">







				<!-- Logo -->
				<h1>
					<a href="index.html" style="display: inline-block;">�˺��� BAR�Դϴ�</a>
				</h1>
				<!-- ddddddd -->
				<!-- Nav -->
				<nav id="nav">
				<ul>
					<li class="current"><a href="index.html">MAIN</a></li>
					<li><a href="#">INTRODUCE</a></li>
					<li><a href="Info.jsp">INFO</a></li>
					<li><a href="Community.jsp">COMMUNITY</a></li>
					<li><a href="MyPage.jsp">MY PAGE</a></li>
				</ul>
				</nav>

				<!-- Banner -->
				<div class="row3">
					<section id="banner"> <header>
					<h3>������� �մ�! ������ ���͵帱���?</h3>

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
							<h3>���̳���</h3>
							</header>
							<h5>����� ����� �� �´� ���Դϴ�. �и� ������ ��� �̴ϴ�!</h5>

							<br> ���� %%%<br> ���� %%%<br> ���� @@@
							<footer> <a href="#" class="button alt">Find out
								more</a> </footer>
						</div>
						<div class="4u 12u(mobile)">
							<a href="#" class="image featured"><img src="images/ICE1.jpg"
								alt="" /></a>
							<header>
							<h3>��ũ��������</h3>
							</header>
							<h5>�̹��� ���� ���� ���Դϴ�. ���� ��밡 �˴ϴ�!</h5>
							<br> <br> ���� %%%<br> ���� %%%<br> ���� @@@
							<footer> <a href="#" class="button alt">Find out
								more</a> </footer>
						</div>
						<div class="4u 12u(mobile)">
							<a href="#" class="image featured"><img
								src="images/bodka1.jpg" alt="" /></a>
							<header>
							<h3>���縮ġ����</h3>
							</header>
							<h5>����� ���� ���� �ƴ����� ���ο� ������ ���� ��ſ��� ��õ�帳�ϴ�.</h5>
							<br> ���� %%%<br> ���� %%%<br> ���� @@@
							<footer> <a href="#" class="button alt">Find out
								more</a> </footer>
						</div>



					</div>


				</div>
			</div>









			<!-- �� ���� -->
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
						style="background-color: white; opacity: 0.6; border-bottom: 3px solid #670000; border-top: 3px solid #670000">

						<table>
							<tr>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">����</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center">1����</td>
										</tr>
										<tr align="right">
											<td align="center">2����</td>
										</tr>
										<tr align="right">
											<td align="center">3����</td>
										</tr>
										<tr align="right">
											<td align="center">4����</td>
										</tr>
										<tr align="right">
											<td align="center">5����</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">����</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center">1����</td>
										</tr>
										<tr align="right">
											<td align="center">2����</td>
										</tr>
										<tr align="right">
											<td align="center">3����</td>
										</tr>
										<tr align="right">
											<td align="center">4����</td>
										</tr>
										<tr align="right">
											<td align="center">5����</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">���ɸ�</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center">1����</td>
										</tr>
										<tr align="right">
											<td align="center">2����</td>
										</tr>
										<tr align="right">
											<td align="center">3����</td>
										</tr>
										<tr align="right">
											<td align="center">4����</td>
										</tr>
										<tr align="right">
											<td align="center">5����</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">����</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center">1����</td>
										</tr>
										<tr align="right">
											<td align="center">2����</td>
										</tr>
										<tr align="right">
											<td align="center">3����</td>
										</tr>
										<tr align="right">
											<td align="center">4����</td>
										</tr>
										<tr align="right">
											<td align="center">5����</td>
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
												<h3 style="color: black;">����ī</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp4����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp5����</td>
										</tr>
									</table>
								</td>

								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h3>
												<h3 style="color: black;">������</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp4����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp5����</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h3>
												<h3 style="color: black;">����</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp4����</td>
										</tr>
										<tr align="right">
											<td align="center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp5����</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<br>
										<tr align="right">
											<td align="center"><h3 style="color: black;">�ϰ͵�
													������</h3></td>
										</tr>
										<tr align="right">
											<td align="center"><h5>&nbsp</h5></td>
										</tr>
										<tr align="right">
											<td align="center">�ϰ͵� ������</td>
										</tr>
										<tr align="right">
											<td align="center">�ϰ͵� ������</td>
										</tr>
										<tr align="right">
											<td align="center">�ϰ͵� ������</td>
										</tr>
										<tr align="right">
											<td align="center">�ϰ͵� ������</td>
										</tr>
										<tr align="right">
											<td align="center">�ϰ͵� ������</td>
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
				style="height: 600px; width: 1190px; border-bottom: ; border-top: ; margin-left: 22%">
				<div
					style="height: 250px; width: 500px; border: 1px solid #EAEAEA; margin-left: 0.1%; margin-top: 2%;"
					id="review";></div>

				<div
					style="height: 250px; width: 500px; border: 1px solid #EAEAEA; margin-left: 15.1%; margin-top: 2%;"
					id="review2";>
					<section id="reimage2"> </section>
				</div>

				<div
					style="height: 250px; width: 500px; border: 1px solid #EAEAEA; margin-left: 0.1%; margin-top: 2%;"
					id="review3";>
					<h3>ȥ���ϱ� �� ���� ��</h3>
					<br> <br>
					<p align="left">
						���볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻��
						���볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻��
						���볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�� ���볻�볻�볻�볻��</p>
				</div>


				<div
					style="height: 250px; width: 500px; border: 1px solid #EAEAEA; margin-left: 15.1%; margin-top: 2%;"
					id="review4">
					<h3>ģ�����̶� ���̾��</h3>
					<br> <br>
					<p align="left">
						���볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻��
						���볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻��
						���볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�볻�� ���볻�볻�볻�볻��

						<!-- 168���� ���� -->

					</p>
				</div>
			</div>






			<!-- Footer -->



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