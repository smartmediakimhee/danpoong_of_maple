<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
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
	<%
		String id = (String) session.getAttribute("id");
	%>
	<div class="container-board">
		<form action="PostInsertService?id=<%=id%>" method="post"
			encType="multiplart/form-data">
			<table class="table table-bordered">
				<thead>
				<caption>글쓰기</caption>
				</thead>
				<tbody>
					<tr>
						<th>제목</th>
						<td><input type="text" placeholder="제목을 입력하세요. "
							name="subject" class="form-control"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea cols="10" placeholder="내용을 입력하세요. "
								name="content" class="form-control"></textarea></td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td><div class="filebox">
								<input class="upload-name" value="파일선택" disabled="disabled">
								<label for="ex_file">업로드</label> <input type="file" name="ex_file">
							</div></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" placeholder="비밀번호를 입력하세요"
							class="form-control"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="등록"
							onclick="sendData()" class="pull-right"> <input
							type="button" value="취소" class="pull-left" onclick="move()">
							<!-- <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='Community.jsp'"> -->
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	
	<script type="text/javascript">
		$(document).ready(
				function() {
					var fileTarget = $('.filebox .upload-hidden');
					fileTarget.on('change', function() { // 값이 변경되면 
						if (window.FileReader) { // modern browser 
							var filename = $(this)[0].files[0].name;
						} else { // old IE 
							var filename = $(this).val().split('/').pop()
									.split('\\').pop(); // 파일명만 추출 
						}
						// 추출한 파일명 삽입 
						$(this).siblings('.upload-name').val(filename);
					});
				});
	</script>
	
</body>
</html>