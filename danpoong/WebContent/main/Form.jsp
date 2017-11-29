<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.cardBoard{
margin-left: 30%;
margin-right: 30%;

}

#button1{
  background:#1AAB8A;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
#button1:hover{
  background:#fff;
  color:#1AAB8A;
}
#button1:before,#button1:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
#button1:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
#button1:hover:before,#button1:hover:after{
  width:100%;
  transition:800ms ease all;
}

#button2{
  background:#1AAB8A;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
#button2:hover{
  background:#fff;
  color:#1AAB8A;
}
#button2:before,#button2:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
#button2:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
#button2:hover:before,#button2:hover:after{
  width:100%;
  transition:800ms ease all;
}





@-moz-keyframes borderscale {
  50% {
    box-shadow: 0 0 0 2px #999;
  }
}
@-webkit-keyframes borderscale {
  50% {
    box-shadow: 0 0 0 2px #999;
  }
}
@keyframes borderscale {
  50% {
    box-shadow: 0 0 0 2px #999;
  }
}
html, body {
  height: 100%;
}

body {

  background: #2d2d2d;
}

form {
  background: #fff;
  border-radius: 20px;
  box-shadow: 5px 5px 15px rgba(107, 173, 182, 0.6);
  padding: 1rem 2rem;
  min-width: 30vw;
}
form li {
  margin: 0.3rem 0;
}
form div {
  margin: 1.5rem 0;
}

ul {
  list-style: none;
  margin: 0;
  padding: 0;
}




input[type="radio"]:hover + label:before {
  border-color: #999;
}


input[type="radio"]:active + label:before {
  transition-duration: 0;
  filter: brightness(0.2);
}


input[type="radio"] + label {
  position: relative;
  padding-left: 26px;
  font-weight: normal;
}


input[type="radio"] + label:before,
input[type="radio"] + label:after {
  box-sizing: content-box;
  position: absolute;
  content: '';
  display: block;
  left: 0;
}


input[type="radio"] + label:before {
  top: 50%;
  width: 16px;
  height: 16px;
  margin-top: -10px;
  border: 2px solid #d9d9d9;
  text-align: center;
}


input[type="radio"] + label:after {
  background-color: #00bad2;
  top: 50%;
  left: 6px;
  width: 8px;
  height: 8px;
  margin-top: -4px;
  transform: scale(0);
  transform-origin: 50%;
  transition: transform 200ms ease-out;
}

input[type="radio"]:checked + label:before {
  -moz-animation: borderscale 300ms ease-in;
  -webkit-animation: borderscale 300ms ease-in;
  animation: borderscale 300ms ease-in;
  background-color: #fff;
}
input[type="radio"]:checked + label:after {
  transform: scale(1);
}
input[type="radio"] + label:before, input[type="radio"] + label:after {
  border-radius: 50%;
}


input[type="text"] {
  font-family: "Open Sans", "Helvetica Neue", Arial, sans-serif;
  font-weight: normal;
  font-size: 16px;
  line-height: 24px;
  padding: 5px 10px;
  background-color: #fff;
  border: 2px solid #d9d9d9;
}
input[type="text"]:focus {
  outline: none;
}
input[type="text"]:focus, input[type="text"]:hover {
  border-color: #999;
}



/* IE 10/11+ - This hides native dropdown button arrow so it will have the custom appearance, IE 9 and earlier get a native select - targeting media query hack via http://browserhacks.com/#hack-28f493d247a12ab654f6c3637f6978d5 - looking for better ways to achieve this targeting */

@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none) {
  select::-ms-expand {
    display: none;
  }

  select:focus::-ms-value {
    background: transparent;
    color: grey;
  }
}


</style>

</head>
<body>
	<div class="cardBoard">
		<center>
			<form action="UserTypeService" method="post">
				<div class="titleBoard">
					<h1>설문지 Title</h1>
					<p>* 필수항목</p>
				</div>
				<div class="itemBoard">
					<div class="item">
						<fieldset>
							<legend>* Alcohol</legend>
							<table align="left">
								<tr >
									<td>&nbsp&nbsp<input type="radio" name="alcohol" value="1">
									</td>
									<td>&nbsp&nbsp낮음</td>
								</tr>
								<tr><td>&nbsp</td></tr>
								<tr>
								
									<td>&nbsp&nbsp<input type="radio" name="alcohol" value="2">
									</td>
									<td>&nbsp&nbsp보통</td>
								</tr>
								<tr><td>&nbsp</td></tr>
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="alcohol" value="3">
									</td>
									<td>&nbsp&nbsp높음</td>
								</tr>
							</table>
						</fieldset>
					</div>
					<div class="item">
						<fieldset>
							<legend>* Flavor</legend>
							<table align="left">
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="flavor" value="1">
									</td>
									<td>&nbsp&nbsp상큼한 과일향</td>
								</tr>
								<tr><td>&nbsp</td></tr>
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="flavor" value="3">
									</td>
									<td>&nbsp&nbsp고소한 곡물향</td>
								</tr><tr><td>&nbsp</td></tr>
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="flavor" value="2">
									</td>
									<td>&nbsp&nbsp상관없음</td>
								
							</table>
						</fieldset>
					</div>
					<div class="item">
						<fieldset>
							<legend>* Taste</legend>
							<table align="left">
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="taste" value="1">
									</td>
									<td>&nbsp&nbsp달달한 맛</td>
								</tr><tr><td>&nbsp</td></tr>
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="taste" value="3">
									</td>
									<td>&nbsp&nbsp씁슬한 맛</td>
								</tr><tr><td>&nbsp</td></tr>
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="taste" value="2">
									</td>
									<td>&nbsp&nbsp상관없음</td>
								</tr>
							</table>
						</fieldset>
					</div>
					<div class="item">
						<fieldset>
							<legend>* Feel</legend>
							<table align="left">
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="feel" value="1">
									</td>
									<td>&nbsp&nbsp짜릿한 탄산</td>
								</tr><tr><td>&nbsp</td></tr>
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="feel" value="3">
									</td>
									<td>&nbsp&nbsp짜릿함은 싫다 무탄산</td>
								</tr><tr><td>&nbsp</td></tr>
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="feel" value="2">
									</td>
									<td>&nbsp&nbsp술이면 다 좋다 상관없음</td>
								
							</table>
						</fieldset>
					</div>
					<div class="item">
						<fieldset>
							<legend>* Atmosphere</legend>
							<table align="left">
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="atm" value="1">
									</td>
									<td>&nbsp&nbsp기쁜상황일 때 주로 마신다</td>
								</tr><tr><td>&nbsp</td></tr>
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="atm" value="3">
									</td>
									<td>&nbsp&nbsp슬픈상황일 때 주로 마신다</td>
								</tr><tr><td>&nbsp</td></tr>
								<tr>
									<td>&nbsp&nbsp<input type="radio" name="atm" value="2">
									</td>
									<td>&nbsp&nbsp상관없음</td>
								
							</table>
						</fieldset>
					</div>
					
					<div class="Button">
						 <!-- <a href="main.jsp"><input type="submit" value="제출" id ="button1"></a> 
						 <a href="main.jsp"><input type="reset" value="취소" id = "button2"></a> -->
						 <a href="main.jsp" id = "button1">제출</a> 
						 <a href="main.jsp" id = "button2">취소</a> 
						
					</div>
				</div>
			</form>
		</center>
	</div>
</body>
</html>