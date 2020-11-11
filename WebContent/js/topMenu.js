/**
 * 
 */
$(document).ready(function(){
	$("#menuBtn").click(function(){
		var navHeight = $("#myNav").css("height").replace("px","");
		if(navHeight > 0){
			$("#myNav").css("height","0px");
			$("#myNav").css("border","0px solid #c60000");
		} else {
			var ulHeight = $(".overlay_content").css("height").replace("px","");
			$("#myNav").css("height",ulHeight);
			$("#myNav").css("border","2px solid #c60000");
		}
	});
	$("#noticeBtn").click(function(){
		var navHeight = $("#myNotice").css("height").replace("px","");
		if(navHeight > 0){
			$("#myNotice").css("height","0px");
			$("#myNotice").css("border","0px solid #c60000");
		} else {
			var ulHeight = $("#notice_list").css("height").replace("px","");
			$("#myNotice").css("border","2px solid #c60000");
			$("#myNotice").css("height",ulHeight);
		}
	});
	$('html').click(function(e) {
		var navHeight = $("#myNav").css("height").replace("px","");
		var noticeHeight = $("#myNotice").css("height").replace("px","");
		if(navHeight > 0){
			if(!$(e.target).hasClass("menu_user_content")) {
					$("#myNav").css("height","0px");
					$("#myNav").css("border","0px solid #c60000");
				} 
		}
		if(noticeHeight > 0){
			if(!$(e.target).hasClass("menu_user_notice")) {
				$("#myNotice").css("height","0px");
				$("#myNotice").css("border","0px solid #c60000");
			} 
		}
	});
	
	$(window).scroll(function() {
		var scroll = $(window).scrollTop();
		//console.log(scroll);
		if (scroll >= 50) {
			//console.log('a');
			$("header").addClass("fx_header");
		} else {
			//console.log('a');
			$("header").removeClass("fx_header");
			
		}
	});
});