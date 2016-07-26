<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>ajaxTestPage</h2>
		
		<ul id="review">
		</ul>
		
		<script src="/resources/js/jquery-3.0.0.min.js"></script>
	<script type="text/javascript">
		var tid = 1;

		
		$.getJSON("/reviews/all/" + tid, function(data) {
			
			$(data).each(function() {
				
				  str += "<li data-id='"+ this.id + "' class='reviewLi'>" + this.id + ":" + this.comment + "</li>"; */
				});
			$("#review").html(str);
		});
	</script>
</body>
</html>