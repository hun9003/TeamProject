/**
 * 
 */

$(document).ready(function(){
	var width = 1400;
	var introCount = 5;
	$(".intro_left").click(function(){
		$(".intro_left").css("pointer-events","none");
		$(".intro_right").css("pointer-events","none");
		
		setTimeout(function(){
			$(".intro_left").css("pointer-events","auto");
			$(".intro_right").css("pointer-events","auto");
		},1000);
		
		var intro_margin = $(".intro_content_list").css('marginLeft').replace('px','');
		if(intro_margin != 0){
			$(".intro_content_list").css('marginLeft',Number(intro_margin)+Number(width)+"px");
		} else {
			$(".intro_content_list").css('marginLeft',-width*(introCount-1)+"px");
		}
		var current = (intro_margin/-width);
		if(current == 0){
			current=5;
		}
		for(var i = 1; i <= current; i++){
			$("#intro_nav_"+i).addClass("active");
		}
		if(current<5){
			for(var i = 5; i > current; i--){
			$("#intro_nav_"+i).removeClass("active");
			}
		}
	});
	$(".intro_right").click(function(){
		var intro_margin = $(".intro_content_list").css('marginLeft').replace('px','');
		
		$(".intro_left").css("pointer-events","none");
		$(".intro_right").css("pointer-events","none");
		setTimeout(function(){
			$(".intro_left").css("pointer-events","auto");
			$(".intro_right").css("pointer-events","auto");
		},1000);
		
		if(intro_margin != width*(1-introCount)){
			$(".intro_content_list").css('marginLeft',Number(intro_margin)-Number(width)+"px");
		} else {
			$(".intro_content_list").css('marginLeft',0+"px");
		}
		var current = (intro_margin/-width)+2;
		if(current==6){
			current=1;
		}
		for(var i = 1; i <= current; i++){
			$("#intro_nav_"+i).addClass("active");
		}
		if(current<5){
			for(var i = 5; i > current; i--){
			$("#intro_nav_"+i).removeClass("active");
			}
		}
	});
	$(".intro_nav_f").click(function(){
		var nav_id = $(this).attr("id").replace("intro_nav_","");
		var intro_margin = (nav_id-1)*-width;
		$(".intro_content_list").css('marginLeft',intro_margin+"px");
		for(var i = 1; i <= nav_id; i++){
			$("#intro_nav_"+i).addClass("active");
		}
		if(nav_id<5){
			for(var i = 5; i > nav_id; i--){
			$("#intro_nav_"+i).removeClass("active");
			}
		}
	});
	
});