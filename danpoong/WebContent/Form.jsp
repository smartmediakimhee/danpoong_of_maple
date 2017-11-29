<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="cardBoard">
		<center>
			<form action="" method="post">
				<div class="titleBoard">
					<h1>설문지 Title</h1>
					<p>* 필수항목</p>
				</div>
				<div class="itemBoard">
					<div class="item">
						<fieldset>
							<legend>* Alcohol</legend>
							<table align="left">
								<tr>
									<td><input type="radio" name="alcohol" value="1">
									</td>
									<td>낮음</td>
								</tr>
								<tr>
									<td><input type="radio" name="alcohol" value="2">
									</td>
									<td>보통</td>
								</tr>
								<tr>
									<td><input type="radio" name="alcohol" value="3">
									</td>
									<td>높음</td>
								</tr>
							</table>
						</fieldset>
					</div>
					<div class="item">
						<fieldset>
							<legend>* Flavor</legend>
							<table align="left">
								<tr>
									<td><input type="radio" name="alcohol" value="1">
									</td>
									<td>상큼한 과일향</td>
								</tr>
								<tr>
									<td><input type="radio" name="alcohol" value="2">
									</td>
									<td>고소한 곡물향</td>
								</tr>
								<tr>
									<td><input type="radio" name="alcohol" value="3">
									</td>
									<td>상관없음</td>
								</tr>
							</table>
						</fieldset>
					</div>
					<div class="item">
						<fieldset>
							<legend>* Taste</legend>
							<table align="left">
								<tr>
									<td><input type="radio" name="alcohol" value="1">
									</td>
									<td>달달한 맛</td>
								</tr>
								<tr>
									<td><input type="radio" name="alcohol" value="2">
									</td>
									<td>씁슬한 맛</td>
								</tr>
								<tr>
									<td><input type="radio" name="alcohol" value="3">
									</td>
									<td>상관없음</td>
								</tr>
							</table>
						</fieldset>
					</div>
					<div class="item">
						<fieldset>
							<legend>* Feel</legend>
							<table align="left">
								<tr>
									<td><input type="radio" name="alcohol" value="1">
									</td>
									<td>짜릿한 탄산</td>
								</tr>
								<tr>
									<td><input type="radio" name="alcohol" value="2">
									</td>
									<td>짜릿함은 싫다 무탄산</td>
								</tr>
								<tr>
									<td><input type="radio" name="alcohol" value="3">
									</td>
									<td>술이면 다 좋다 상관없음</td>
								</tr>
							</table>
						</fieldset>
					</div>
					<div class="item">
						<fieldset>
							<legend>* Atmosphere</legend>
							<table align="left">
								<tr>
									<td><input type="radio" name="alcohol" value="1">
									</td>
									<td>기쁜상황일 때 주로 마신다</td>
								</tr>
								<tr>
									<td><input type="radio" name="alcohol" value="2">
									</td>
									<td>슬픈상황일 때 주로 마신다</td>
								</tr>
								<tr>
									<td><input type="radio" name="alcohol" value="3">
									</td>
									<td>상관없음</td>
								</tr>
							</table>
						</fieldset>
					</div>
					<div class="Button">
						 <a href="main.jsp"><input type="submit" value="제출"></a> 
						 <a href="main.jsp"><input type="reset" value="취소"></a>
					</div>
				</div>
			</form>
		</center>
	</div>
</body>
</html>