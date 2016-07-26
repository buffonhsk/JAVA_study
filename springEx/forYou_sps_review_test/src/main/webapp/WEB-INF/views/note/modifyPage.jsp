<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/resources/js/jquery-3.0.0.min.js"></script>
<title>재능 수정</title>
</head>
<body>

	<form role="form" method="post"><!-- 파일 enctype="multipart/form-data" -->

		<input name="_method" type="hidden" value="post">
		<input type="hidden" name="page" value="${cri.page}">
		<input type="hidden" name="perPageNum" value="${cri.perPageNum}">
		<h1 class="title">프로필관리</h1>

		<table class="profile-info basic-table">
			<tbody>
				<tr>
					<th>소개제목</th>
					<td><input class="form-control input-sm" name="title"
						type="text" value="${noteVO.title}"></td>
				</tr>
				<tr>
					<th>재능내용</th>
					<td><textarea class="form-control input-sm" rows="50"
							name="contents" cols="80">${noteVO.contents}</textarea></td>
				</tr>

			</tbody>
		</table>
		</form>
		<div class="btn-area">
			<button class="modify" type="submit" value="수정하기">수정하기</button>
			<button class="cancel" type="submit" value="돌아가기">돌아가기</button>
		</div>

<script type="text/javascript">
	$(document).ready(function() {

		var formObj = $("form[role='form']");
		console.log(formObj);

		$(".cancel").on("click", function() {
			self.location = "/note/list?page=${cri.page}&perPageNum=${cri.perPageNum}";
		});

		$(".modify").on("click", function() {
			formObj.submit();
		});

	});
</script>
	
</body>
</html>