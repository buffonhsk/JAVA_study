$(document).ready(function(){
	//.btnMenu클릭시 모션
	$(".btnMenu").on('click', function(){
		$(this).fadeOut();
		$("section").addClass('on');
		$("nav").addClass('on');
	});
	
	//nav 안에 메뉴 선택시 모션
	$("nav li").on('click', function(){
		$(".btnMenu").fadeIn();
		$("section").removeClass("on");
		$("nav").removeClass("on");
		var i = $(this).index();
		$("section>div").removeClass("on");
		$("section>div").eq(i).addClass("on");
	});
});















