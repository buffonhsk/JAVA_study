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
<title>Insert title here</title>
</head>
<body>
			<div class='box-body'>

						<select name="searchType" class="selectbox">
							<option value="t"
								<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
								전체</option>
							<option value="g"
								<c:out value="${cri.searchType eq 'g'?'selected':''}"/>>
								게임</option>
							<option value="d"
								<c:out value="${cri.searchType eq 'd'?'selected':''}"/>>
								디자인</option>
							<option value="s" class="collaboSel"
								<c:out value="${cri.searchType eq 's'?'selected':''}"/>>
								스터디</option>
								<option value="c"
								<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
								요리</option>
							<option value="m"
								<c:out value="${cri.searchType eq 'm'?'selected':''}"/>>
								음악</option>

						</select> <input type="text" name='keyword' id="keywordInput"
							value='${cri.keyword}'>
						<button id='searchBtn'>Search</button>
		

					</div>
	
	<div class="searchFailed" style="display: none;"><p>검색 조건이 없습니다.</p></div>
	<c:forEach items="${list}" var="tBoardVO">
		<div class="item">
			<ul class="list-unstyled product-info">
				<a
					href="/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&id=${tBoardVO.id}&userid=${tBoardVO.memberVO.userid}">
					<li class="image">
						<div class="badge-plus"></div> <!-- 우수 재능 뱃지 넣기?  --> <img
						src="${tBoardVO.image}">
				</li>
					<li class="title">${tBoardVO.title}</li>
					<li class="price"><span class="number">${tBoardVO.price}${tBoardVO.memberVO.userid}</span>
						<span class="unit">원</span></li>
				</a>
				<li class="info"><span class="pull-left user-id"></span> <span
					class="pull-right score"> <img
						src="http://www.otwojob.com/images/icons/star01.jpg"><img
						src="http://www.otwojob.com/images/icons/star01.jpg"><img
						src="http://www.otwojob.com/images/icons/star01.jpg"><img
						src="http://www.otwojob.com/images/icons/star01.jpg"><img
						src="http://www.otwojob.com/images/icons/star01.jpg"><span
						class="txt"></span>
				</span></li>
			</ul>
			<div class="item-wrap"></div>
		</div>
	</c:forEach>


	<div>
		<ul class="pagiantion">
			<c:if test="${pageMaker.prev}">
				<li><a
					href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">%laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="idx">
				<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
					<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				<li><a
					href="list${pageMaker.makeSearch(pageMaker.endPage + 1) }">&raquo;</a></li>
			</c:if>

		</ul>

	</div>

<script>
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				var searchResult = '${failed}';
				
				if (searchResult == 'searchFailed') {
					$('.searchFailed').css('display', 'block');
				} else {
					$('.searchFailed').css('display', 'none');
				}
				
			
			});
</script>
</body>
</html>