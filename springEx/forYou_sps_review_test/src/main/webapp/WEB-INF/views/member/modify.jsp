<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/resources/js/jquery-3.0.0.min.js"></script>
<title>회원 수정</title>
</head>
<body>
	<section>
		<div class="join_form">
			<form role="form" method="post">
				<input name="mNo" type="hidden" value="${memberVO.mNo}">
				<fieldset>
					<legend>회원 수정</legend>
					<div>
						<!-- input onkeyup="chkMbId();"  -->
						<label> 이름 <input value="${memberVO.username}" name="username"
							readonly="readonly" />
						</label>
					</div>
					<div>
						<label> 아이디 <input value="${memberVO.userid}" name="userid"
							readonly="readonly" />
						</label>
					</div>
					<div>
						<label> 비밀번호 <input value="${memberVO.userpw}" name="userpw"/>
						</label>
					</div>
					<div>
						<label> 이메일 <input value="${memberVO.email}" name="email"/>
						</label>
					</div>
					<div>
						<label> 연락처 <input value="${memberVO.contactNum}" name="contactNum"/>
						</label>
					</div>

				</fieldset>
			</form>
			<div class="btn-area">
				<button class="modify" type="submit" value="수정하기">수정하기</button>
				<button class="cancel" type="submit" value="메인페이지">메인페이지</button>
			</div>

			<!-- </form> -->
		</div>
	</section>
	<script type="text/javascript">
		$(document).ready(function() {

			var formObj = $("form[role='form']");
			console.log(formObj);

			$(".cancel").on("click", function() {
				self.location = "/main/mainPage";
			});

			$(".modify").on("click", function() {
				formObj.submit();
			});

		});
	</script>
</body>
</html>