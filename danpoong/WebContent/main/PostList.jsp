<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PostList Design</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<style type="text/css">
.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

.filebox input[type="file"] { /* 파일 필드 숨기기 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.filebox .upload-name {
	display: inline-block;
	padding: .5em .75em; /* label의 패딩값과 일치 */
	font-size: inherit;
	font-family: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #f5f5f5;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}
</style>
</head>
<body>
	<div class="container">
		<table class="table table-hover">
			<thead>
			<caption>목록</caption>
			<tr>
				<td style="width: 10%;">번호</td>
				<th>제목</th>
				<td style="width: 10%;">작성자</td>
				<td style="width: 10%;">날짜</td>
				<td style="width: 10%;">좋아요</td>
			</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${not empty sessionScope.post_list}">
						<c:forEach items="${sessionScope.post_list}" var="list">
							<tr>
								<td style="width: 10%;">${list.num}</td>
								<th>${list.title}</th>
								<td style="width: 10%;">${list.post_author}</td>
								<td style="width: 10%;">${list.time_check}</td>
								<td style="width: 10%;">${list.likey}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" align="center">현재 게시글이 존재하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
<!--  -->
		<hr />
		<a class="btn btn-default pull-right">글쓰기</a>

		<div class="text-center">
			<ul class="pagination">
				<c:choose>
					<c:when test="${sessionScope.btn_num > 0}">
						<c:choose>
						<c:when test="${sessionScope.btn_num <= 10}">
							<c:forEach begin="1" end="${sessionScope.btn_num}" var="i">
								<li><a href="#">${i}</a></li>
							</c:forEach>
						</c:when>
						</c:choose>
					</c:when>
				</c:choose>
			</ul>
		</div>
	</div>
</body>
</html>