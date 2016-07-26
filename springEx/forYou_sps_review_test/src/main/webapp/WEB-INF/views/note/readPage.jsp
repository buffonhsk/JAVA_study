<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/resources/js/jQuery-2.1.4.min.js"></script>
<title>Insert title here</title>
</head>
<body>


	<form role="form" method="post" class="form-inline">
		 <input name="id" type="hidden" value="${noteVO.id}">
		 <input name="userid" type="hidden" value="${noteVO.memberVO.userid}">
		 <input name="page" type="hidden" value="${cri.page}">
		 <input name="perPageNum" type="hidden" value="${cri.perPageNum}">
	</form>
		<div class="product-wrap clearfix">
	
			<div class="order-info">
				<table>
					<tbody>
						<tr>
							<th>제목</th>
							<td class="highlight"><strong>${noteVO.title}</strong>
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td class="highlight"><strong><span class="number">${noteVO.contents}
							</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>${noteVO.memberVO.userid}</td>
						</tr>
					</tbody>
				</table>
				<div class="btn-area">
					<button class="modify" type="submit">수정</button>
					<button class="remove" type="submit">삭제</button>
					<button class="listAll" type="submit">뒤로 가기</button>
				</div>
			</div>
		</div>

	
	<table id="reviews" class="table table-bordered">
	

</table>
	

<script type="text/javascript">
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".modify").on("click", function(){
		formObj.attr("action", "/note/modifyPage");
		formObj.attr("method", "get");
		formObj.submit();	
	});
	
	$(".remove").on("click", function(){
		formObj.attr("action", "/note/removePage");
		formObj.submit();
	});
	
	
	$(".listAll").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/note/list");
		formObj.submit();
		
	});
	
	
});

</script>
</body>
</html>