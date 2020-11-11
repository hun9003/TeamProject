/**
 * 
 */

$(document).ready(function(){
	$(".job_bullet label:nth-child(1)").css('background','#666');
	var width = 1400;
	var jobCount = $("input[name=job_pos]").length;
	$(".job_left").click(function(){
		$(".job_left").css("pointer-events","none");
		$(".job_right").css("pointer-events","none");
		
		setTimeout(function(){
			$(".job_left").css("pointer-events","auto");
			$(".job_right").css("pointer-events","auto");
		},1000);
		
		var job_margin = $(".main_job_form").css('marginLeft').replace('px','');
		if(job_margin != 0){
			var job_pos = Number(job_margin / -1400) + Number(0);
			var job_pos_next = Number(job_margin / -1400) + Number(1);
			$(".main_job_form").css('marginLeft',Number(job_margin)+Number(width)+"px");
			$(".job_bullet label:nth-child("+job_pos_next+")").css('background','#fff');
			$(".job_bullet label:nth-child("+job_pos+")").css('background','#666');
		} else {
			$(".main_job_form").css('marginLeft',-width*(jobCount-1)+"px");
			$(".job_bullet label:nth-child(1)").css('background','#fff');
			$(".job_bullet label:nth-child("+jobCount+")").css('background','#666');
		}
	});
	$(".job_right").click(function(){
		var job_margin = $(".main_job_form").css('marginLeft').replace('px','');
		
		$(".job_left").css("pointer-events","none");
		$(".job_right").css("pointer-events","none");
		setTimeout(function(){
			$(".job_left").css("pointer-events","auto");
			$(".job_right").css("pointer-events","auto");
		},1000);
		
		if(job_margin != width*(1-jobCount)){
			var job_pos = Number(job_margin / -1400) + Number(1);
			var job_pos_next = Number(job_margin / -1400) + Number(2);
			$(".main_job_form").css('marginLeft',Number(job_margin)-Number(width)+"px");
			$(".job_bullet label:nth-child("+job_pos_next+")").css('background','#666');
			$(".job_bullet label:nth-child("+job_pos+")").css('background','#fff');
		} else {
			$(".main_job_form").css('marginLeft',0+"px");
			$(".job_bullet label:nth-child(1)").css('background','#666');
			$(".job_bullet label:nth-child("+jobCount+")").css('background','#fff');
		}
	});
});