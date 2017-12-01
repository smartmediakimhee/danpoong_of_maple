<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
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
		<c:choose>
			<c:when test="${not empty sessionScope.post}">
				<table class="table table-striped">
					<thead>
					<caption>
						<tr>
							<td style="width: 10%;">${sessionScope.post.num}</td>
							<th>${sessionScope.post.title}</th>
							<td style="width: 10%;">${sessionScope.post.author}</td>
							<td style="width: 10%;">${sessionScope.post.time_check}</td>
							<td style="width: 10%;">${sessionScope.post.likey}</td>
						</tr>
					</caption>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${not empty sessionScope.post.file}">
								<tr>
									<td colspan="5"><img src="../upload/${sessionScope.post.file}"></td>
								</tr>
							</c:when>
						</c:choose>
						<tr>
							<td colspan="5">${sessionScope.post.content}</td>
						</tr>
					</tbody>
				</table>
			</c:when>
		</c:choose>
		<hr/>
		<a class="btn btn-default pull-left" src="PostContentService?num=${sessionScope.post.num-1}">이전글</a>
		<a class="btn btn-default pull-left" src="PostContentService?num=${sessionScope.post.num+1}">다음글</a>
		<a class="btn btn-default pull-right" src="PostListService">목록</a>
	</div>
</body>
</html>