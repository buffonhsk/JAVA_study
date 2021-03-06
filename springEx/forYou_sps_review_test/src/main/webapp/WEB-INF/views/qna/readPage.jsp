<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../main/header.jsp"%>

	<form role="form" method="post" class="form-inline">
		 <input name="id" type="hidden" value="${qnaVO.id}">
		 <input name="userid" type="hidden" value="${qnaVO.memberVO.userid}">
		 <input name="page" type="hidden" value="${cri.page}">
		 <input name="perPageNum" type="hidden" value="${cri.perPageNum}">
	</form>
	
	<div class="row">
	<div class="col-lg-12 service">
		<h1 class="page-header service">Q&A</h1>
	</div>
</div>

	<div class="mypage-wrap board-wrap">
		<div class="mypage-content board-default">

			<div class="alert alert-hint article-title">${qnaVO.title}</div>

			<ul class="article-info clearfix">
				<li class="property">작성자</li>
				<li class="value">${qnaVO.memberVO.userid}</li>
				<li class="property">작성일</li>
				<li class="value">${qnaVO.regdate}</li>
			</ul>

			<div class="article-body">
				<pre>${qnaVO.contents}</pre>
			</div>

			<div class="article-menu text-right">
					<button class="modify main-btn" type="submit">수정</button>
					<button class="remove main-btn" type="submit">삭제</button>
					<button class="listAll main-btn" type="submit">목록</button>
			</div>
		</div>
	</div>
	
		<%-- <div class="product-wrap clearfix">
	
			<div class="order-info">
				<table>
					<tbody>
						<tr>
							<th>제목</th>
							<td class="highlight"><strong>${qnaVO.title}</strong>
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td class="highlight"><strong><span class="number">${qnaVO.contents}
							</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>${qnaVO.memberVO.userid}</td>
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
	

</table> --%>
	

<script type="text/javascript">
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".modify").on("click", function(){
		formObj.attr("action", "/qna/modifyPage");
		formObj.attr("method", "get");
		formObj.submit();	
	});
	
	$(".remove").on("click", function(){
		formObj.attr("action", "/qna/removePage");
		formObj.submit();
	});
	
	
	$(".listAll").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/qna/list");
		formObj.submit();
		
	});
	
	
});

</script>
</body>
</html>