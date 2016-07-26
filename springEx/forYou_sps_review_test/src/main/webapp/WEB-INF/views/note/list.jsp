<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/resources/js/jquery-3.0.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/normalize.css">
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css">
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<title>QNA</title>
</head>
<body>
	<button type="submit" class="createBtn" name="create" >글작성</button>
	<c:forEach items="${list}" var="nBoardVO" varStatus="status">
		<div class="item">
			<ul class="list-unstyled product-info">
			<li>${pageMaker.totalCount - ((pageMaker.startPage - 1) + status.index)}</li>
				<a
					href="/note/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&id=${nBoardVO.id}&userid=${nBoardVO.memberVO.userid}">
					<li class="title">${nBoardVO.title}</li>
					<li class="contents">${nBoardVO.contents}</li>
					<li class="price"><span class="number">${nBoardVO.memberVO.userid}</span></li>
				</a>
			</ul>
			<div class="item-wrap"></div>
		</div>
	</c:forEach>


	<div>
		<ul class="pagiantion">
			<c:if test="${pageMaker.prev}">
				<li><a
					href="list${pageMaker.makeQuery(pageMaker.startPage - 1)}">%laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="idx">
				<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
					<a href="list${pageMaker.makeQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				<li><a
					href="list${pageMaker.makeQuery(pageMaker.endPage + 1) }">&raquo;</a></li>
			</c:if>

		</ul>

	</div>

<script>
	$(document).ready(
			function() {
				$(".createBtn").on("click", function(){
					self.location = "/note/register";
				});
		
			});
</script>
</body>
</html>