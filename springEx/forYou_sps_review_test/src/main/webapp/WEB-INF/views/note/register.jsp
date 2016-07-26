<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>재능 등록</title>
</head>
<body>
	<form action="/note/register" method="post"><!-- 파일 enctype="multipart/form-data" -->

		<input name="_method" type="hidden" value="post">
		<h1 class="title">프로필관리</h1>
		mNo: <input type="text" name="mNo" value="1" > <br>
		<table class="profile-info basic-table">
			<tbody>
				<tr>
					<th>소개제목</th>
					<td><input class="form-control input-sm" name="title"
						type="text" value=""></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea class="form-control input-sm" rows="50"
							name="contents" cols="80"></textarea></td>
				</tr>
			</tbody>
		</table>
		<div class="btn-area">
			<input class="form-control btn-sm main-btn" type="submit" value="등록하기">
		</div>


	</form>
</body>
</html>