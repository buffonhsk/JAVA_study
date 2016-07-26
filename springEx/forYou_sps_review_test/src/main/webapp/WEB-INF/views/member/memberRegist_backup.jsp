<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/normalize.css">
<script type="text/javascript" src="/resources/js/jquery-3.0.0.min.js"></script>
<title>회원 가입</title>
<script type="text/javascript">

	function chkMbId() {
		$.ajax({
			url : "/member/chkMbId",
			type : "post",
			data : {
				userid : $("#userid").val()
			},
			dataType : "json",
			success : function(data) {
				alert(data.resultMsg);
			}
		});
	};
</script>
</head>
<body>

	<header> </header>

	<section>
		<div class="join_form">
		<form role="form" method="post" id="join_form">
				<fieldset>
					<legend>회원 가입</legend>
					<div>
						
						<label for="userid">아이디</label> <input type="text" name="userid" 
						id="userid" placeholder="아이디를 입력하세요."><input				
							type="button" value="ID 중복체크" onclick="chkMbId();"/>
							<span class="id_chk" style="color: red"></span>
					</div>
					<div>
						<label for="userpw">비밀번호</label> <input type="password"
							name="userpw" id="userpw" placeholder="비밀번호를 입력하세요.">
					</div>
					<div>
						<label for="userpw_check">비밀번호 확인</label> <input type="password"
							name="userpw_check" id="userpw_check" placeholder="비밀번호 확인입니다.">
					</div>
					<div>
						<label for="username">이름</label> <input type="text"
							name="username" id="username" placeholder="이름을 입력하세요.">
					</div>
					<div>
						<label for="email">이메일</label> <input type="text" name="email"
							id="email" placeholder="이메일을 입력해주세요.">
					</div>
					<div>
						<label for="contactNum">연락처</label> <input type="text"
							name="contactNum" id="contactNum" placeholder="연락처를 입력하세요.">
					</div>
					
				</fieldset>
				<span class="btn_join"><input type="submit" value="가입하기"></span>
			</form>
		</div>
	</section>

	<footer> </footer>
</body>
</html>