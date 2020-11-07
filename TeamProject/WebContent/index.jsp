<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eddict</title>
<link href="css/default.css" rel="stylesheet" type="text/css">
<link href="css/front.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
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

</script>
<script type="text/javascript">

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
</script>

</head>
<body>
<div id="wrap">
<jsp:include page="inc/top.jsp"/>
<main>
<div id="main_banner">

</div>
<div id="main_menu">

<div class="main_menu_circle">
<a href="#"><img src="img/creator.svg" class="circle_img"></a>
<div class="main_menu_text font_bold">크리에이터</div>
</div>

<div class="main_menu_circle">
<a href="#"><img src="img/editor.svg" class="circle_img"></a>
<div class="main_menu_text font_bold">편집자</div>
</div>

<div class="main_menu_circle">
<a href="#"><img src="img/job.svg" class="circle_img"></a>
<div class="main_menu_text font_bold">채용공고</div>
</div>

</div>

<div id="main_editors">
<div class="main_title"><h2 class="no_margin h2red"><font class="font_white">HOT</font> Editor<span class="f_right"><a href="#">+더보기</a></span></h2></div>
	<div class="main_editors_form">
		<div class="main_editors_table">
		<div class="pullRight_red">		
		<div class="editors_profile"><img alt="profile" src="img/customer-service-2-fill.svg"></div>
		<div class="editors_title">"최선을 다해 편집하겠습니다."</div>
		<div class="editors_name">test1234</div>
		<div class="clear form_red_hr"></div>
		<div class="editors_score_detail">
			<div class="editors_score_detail_text">전문성 <progress value="7" max="10"></progress></div>
			<div class="editors_score_detail_text">만족도 <progress value="8" max="10"></progress></div>
			<div class="editors_score_detail_text">적극성 <progress value="7" max="10"></progress></div>
			<div class="editors_score_detail_text">소통 <progress value="9" max="10"></progress></div>
		</div>
		<div class="editors_content">
			<div class="editors_content_text">평균점수
			<span class="f_right">
				<span class="starR on">별1</span>
	 	 		<span class="starR on">별2</span>
	  			<span class="starR on">별3</span>
	  			<span class="starR on">별4</span>
	  			<span class="starR on">별5</span>
	  		</span></div>
			<div class="editors_content_text">포트폴리오<span class="f_right">0개</span></div>
			<div class="editors_content_text">평균단가<span class="f_right">5만원~10만원</span></div>
		</div>
		</div>
	</div>
</div>
	<div class="main_editors_form">
		<div class="main_editors_table">
		<div class="pullRight_red">
		<div class="editors_profile"><img alt="profile" src="img/customer-service-2-fill.svg"></div>
		<div class="editors_title">"최선을 다해 편집하겠습니다."</div>
		<div class="editors_name">test1234</div>
		<div class="clear form_red_hr"></div>
		<div class="editors_score_detail">
			<div class="editors_score_detail_text">전문성 <progress value="7" max="10"></progress></div>
			<div class="editors_score_detail_text">만족도 <progress value="8" max="10"></progress></div>
			<div class="editors_score_detail_text">적극성 <progress value="7" max="10"></progress></div>
			<div class="editors_score_detail_text">소통 <progress value="9" max="10"></progress></div>
		</div>
		<div class="editors_content">
			<div class="editors_content_text">평균점수
			<span class="f_right">
				<span class="starR on">별1</span>
	 	 		<span class="starR on">별2</span>
	  			<span class="starR on">별3</span>
	  			<span class="starR on">별4</span>
	  			<span class="starR">별5</span>
	  		</span></div>
			<div class="editors_content_text">포트폴리오<span class="f_right">0개</span></div>
			<div class="editors_content_text">평균단가<span class="f_right">5만원~10만원</span></div>
		</div>
		</div>
	</div>
</div>
	<div class="main_editors_form">
		<div class="main_editors_table">
		<div class="pullRight_red">
		<div class="editors_profile"><img alt="profile" src="img/customer-service-2-fill.svg"></div>
		<div class="editors_title">"최선을 다해 편집하겠습니다."</div>
		<div class="editors_name">test1234</div>
		<div class="clear form_red_hr"></div>
		<div class="editors_score_detail">
			<div class="editors_score_detail_text">전문성 <progress value="7" max="10"></progress></div>
			<div class="editors_score_detail_text">만족도 <progress value="8" max="10"></progress></div>
			<div class="editors_score_detail_text">적극성 <progress value="7" max="10"></progress></div>
			<div class="editors_score_detail_text">소통 <progress value="9" max="10"></progress></div>
		</div>
		<div class="editors_content">
			<div class="editors_content_text">평균점수
			<span class="f_right">
				<span class="starR on">별1</span>
	 	 		<span class="starR">별2</span>
	  			<span class="starR">별3</span>
	  			<span class="starR">별4</span>
	  			<span class="starR">별5</span>
	  		</span></div>
			<div class="editors_content_text">포트폴리오<span class="f_right">0개</span></div>
			<div class="editors_content_text">평균단가<span class="f_right">5만원~10만원</span></div>
		</div>
		</div>
	</div>
</div>

</div>

<div id="main_project">
<div class="main_title"><h2 class="no_margin h2green"><font class="font_white">NEW</font> Project<span class="f_right"><a href="#">+더보기</a></span></h2></div>
<div class="main_project_form">
	<div class="main_project_table">
	<div class="pullRight_green">
	<div class="project_profile"><img alt="profile" src="img/creator.svg"></div>
	<div class="project_title">"실력있는 편집자 구합니다."</div>
	<div class="project_name">test1234</div>
	<div class="clear form_green_hr"></div>
	<div class="project_detail">
		<div class="project_detail_text">분야 <span class="f_right">광고</span></div>
		<div class="project_detail_text">편집전 런타임 <span class="f_right">2시간</span></div>
		<div class="project_detail_text">편집후 런타임 <span class="f_right">5분</span></div>
	</div>
	<div class="project_content">
		<div class="project_content_text">평균단가<span class="f_right">5만원~10만원</span></div>
		<div class="project_content_text">영상클립<span class="f_right">4개</span></div>
		<div class="project_content_text">0명의 지원자가 있습니다.</div>
	</div>
	</div>
</div>
</div>
<div class="main_project_form">
	<div class="main_project_table">
	<div class="pullRight_green">
	<div class="project_profile"><img alt="profile" src="img/creator.svg"></div>
	<div class="project_title">"실력있는 편집자 구합니다."</div>
	<div class="project_name">test1234</div>
	<div class="clear form_green_hr"></div>
	<div class="project_detail">
		<div class="project_detail_text">분야 <span class="f_right">광고</span></div>
		<div class="project_detail_text">편집전 런타임 <span class="f_right">2시간</span></div>
		<div class="project_detail_text">편집후 런타임 <span class="f_right">5분</span></div>
	</div>
	<div class="project_content">
		<div class="project_content_text">평균단가<span class="f_right">5만원~10만원</span></div>
		<div class="project_content_text">영상클립<span class="f_right">4개</span></div>
		<div class="project_content_text">0명의 지원자가 있습니다.</div>
	</div>
	</div>
</div>
</div>
<div class="main_project_form">
	<div class="main_project_table">
	<div class="pullRight_green">
	<div class="project_profile"><img alt="profile" src="img/creator.svg"></div>
	<div class="project_title">"실력있는 편집자 구합니다."</div>
	<div class="project_name">test1234</div>
	<div class="clear form_green_hr"></div>
	<div class="project_detail">
		<div class="project_detail_text">분야 <span class="f_right">광고</span></div>
		<div class="project_detail_text">편집전 런타임 <span class="f_right">2시간</span></div>
		<div class="project_detail_text">편집후 런타임 <span class="f_right">5분</span></div>
	</div>
	<div class="project_content">
		<div class="project_content_text">평균단가<span class="f_right">5만원~10만원</span></div>
		<div class="project_content_text">영상클립<span class="f_right">4개</span></div>
		<div class="project_content_text">0명의 지원자가 있습니다.</div>
	</div>
	</div>
</div>
</div>
</div>

<div id="main_job">
<input type="radio" name="job_pos" id="job_pos1" checked>
<input type="radio" name="job_pos" id="job_pos2">
<input type="radio" name="job_pos" id="job_pos3">
<ul class="main_job_form no_margin no_padding" style="margin-left:0px;">
<li>
<div class="main_job_table">
<div class="main_job_top">
<div class="main_job_logo"><img src="https://blog.kakaocdn.net/dn/bgbn4B/btqwQkVHqgl/h1te0fy07UbzgMgt5AUkFK/img.jpg"></div>
<div class="main_job_title">
<div class="main_job_name">현대자동차(주)</div>
<div class="main_job_subject">비싼차 출시 광고 제작자 모집</div>
</div>
</div>
<div class="clear form_brown_hr"></div>
<div class="main_job_mid">
<div class="main_job_detail1">
<div class="main_job_detail_text">업무내용 :<span class="f_right">영상 편집자 및 광고 제작 실력자 모집 학력무관 신입환영</span></div>
<div class="main_job_detail_text">근무지 :<span class="f_right">부산광역시 진구 도라에몽 퉁퉁이 204-1번지 202호</span></div>
<div class="main_job_detail_text">고용형태 :<span class="f_right">프리미어, 에프터, 이펙트</span></div>
</div>
<div class="main_job_detail2">
<div class="main_job_detail_text">근무요일 :<span class="f_right">월 ~ 금</span></div>
<div class="main_job_detail_text">출퇴근시간 :<span class="f_right">09:00 ~ 18:00</span></div>
<div class="main_job_detail_text">연봉 :<span class="f_right">2억 2천만원</span></div>
</div>
</div>
<div class="clear"></div>
<div class="main_job_bottom">
<div class="main_job_tetail_text">
<span>신입 &amp; 경력직</span>
</div>
</div>
</div>
</li>
<li>
<div class="main_job_table">
<div class="main_job_top">
<div class="main_job_logo"><img src="https://lh3.googleusercontent.com/proxy/EwXngw4uqSVcbJ7KxkrYXcWOKlnBg1eCGG5RJV7FnheeKRKEduVt2bbnjhIh_3WEC0Zoei4uQolMTKaY2Ow57BZLe9Z1-8BZRJi83m4bJCQ6VLZyXrqow1jd6QY9VEpQVwdwPKmO9nAY0pPpfRaFVaxPQ7q5MXnQclkV1u9qhcZxBaKq_0YqKZPrIezdvBy5aavDvMQF9Bp56Sx6XuTM_u9hRZWANX9myEBZ-BqURhIfDyQqcsXujNsTcr0QZYlP0RAcl6npyHR1G9lmPgAXWZK4klL_1pzVfUWnaLKKKdsydEnsyoQrgp8qRK7HUnV6"></div>
<div class="main_job_title">
<div class="main_job_name">삼성플랜(주)</div>
<div class="main_job_subject">갤럭시S60 출시 광고 제작자 모집</div>
</div>
</div>
<div class="clear"></div>
<div class="main_job_mid">
<div class="main_job_detail1">
<div class="main_job_detail_text">업무내용 :<span class="f_right">영상 편집자 및 광고 제작 실력자 모집 학력무관 신입환영</span></div>
<div class="main_job_detail_text">근무지 :<span class="f_right">부산광역시 진구 도라에몽 퉁퉁이 204-1번지 202호</span></div>
<div class="main_job_detail_text">고용형태 :<span class="f_right">프리미어, 에프터, 이펙트</span></div>
</div>
<div class="main_job_detail2">
<div class="main_job_detail_text">근무요일 :<span class="f_right">월 ~ 금</span></div>
<div class="main_job_detail_text">출퇴근시간 :<span class="f_right">09:00 ~ 18:00</span></div>
<div class="main_job_detail_text">연봉 :<span class="f_right">2억 2천만원</span></div>
</div>
</div>
<div class="clear"></div>
<div class="main_job_bottom">
<div class="main_job_tetail_text">
<span>신입 &amp; 경력직</span>
</div>
</div>
</div>
</li>
<li>
<div class="main_job_table">
<div class="main_job_top">
<div class="main_job_logo"><img src="https://img.hankyung.com/photo/201908/01.20349359.1.jpg"></div>
<div class="main_job_title">
<div class="main_job_name">(주)네이버</div>
<div class="main_job_subject">포털사이트 광고 제작자 모집</div>
</div>
</div>
<div class="clear"></div>
<div class="main_job_mid">
<div class="main_job_detail1">
<div class="main_job_detail_text">업무내용 :<span class="f_right">영상 편집자 및 광고 제작 실력자 모집 학력무관 신입환영</span></div>
<div class="main_job_detail_text">근무지 :<span class="f_right">부산광역시 진구 도라에몽 퉁퉁이 204-1번지 202호</span></div>
<div class="main_job_detail_text">고용형태 :<span class="f_right">프리미어, 에프터, 이펙트</span></div>
</div>
<div class="main_job_detail2">
<div class="main_job_detail_text">근무요일 :<span class="f_right">월 ~ 금</span></div>
<div class="main_job_detail_text">출퇴근시간 :<span class="f_right">09:00 ~ 18:00</span></div>
<div class="main_job_detail_text">연봉 :<span class="f_right">2억 2천만원</span></div>
</div>
</div>
<div class="clear"></div>
<div class="main_job_bottom">
<div class="main_job_tetail_text">
<span>신입 &amp; 경력직</span>
</div>
</div>
</div>
</li>
</ul>
<p class="job_bullet">
	<label for="job_pos1">1</label>
	<label for="job_pos2">2</label>
	<label for="job_pos3">3</label>
</p>
<a class="job_left"><img class="job_arrow_btn" alt="왼쪽" src="img/arrow-left-s-line.png"></a>
<a class="job_right"><img class="job_arrow_btn" alt="오른쪽" src="img/arrow-right-s-line.png"></a>
</div>

<!-- <div id="main_guide" class="bg_lightblue"></div> -->

<div id="main_site_info">
<div class="main_info">
<div class="main_info_status font_bold">0 개</div>
<div class="main_info_text font_bold">등록된 프로젝트 수</div>
</div>

<div class="main_info">
<div class="main_info_status font_bold">0 명</div>
<div class="main_info_text font_bold">등록한 편집자 수</div>
</div>

<div class="main_info">
<div class="main_info_status font_bold">0 개</div>
<div class="main_info_text font_bold">채용 공고 갯수</div>
</div>

</div>
</main>

<jsp:include page="inc/bottom.jsp"/>
</div>

</body>
</html>