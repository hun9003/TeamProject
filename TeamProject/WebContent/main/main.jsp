<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eddict</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/front.css" rel="stylesheet" type="text/css">
<script src="../js/jquery-3.5.1.js"></script>
<script type="text/javascript">
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
</script>
</head>
<body>
<div id="wrap">
<header>
<div id="top">
	<div id="top_title">
		<h1 id="main_title" class="font_white no_margin" onclick="location.href='../index.html'">Eddict</h1>
	</div>
	<div id="top_menu">
		<ul class="menu_col menu_main">
			<li><a href="#" class="btn_link btn_main font_white">사이트소개</a></li>
			<li><a href="#" class="btn_link btn_main font_white">프로젝트찾기</a></li>
			<li><a href="#" class="btn_link btn_main font_white">편집자찾기</a></li>
			<li><a href="#" class="btn_link btn_main font_white">채용공고</a></li>
		</ul>
	</div>
	<div id="top_member_menu">
		<ul class="menu_col menu_member">
			<li><a href="#" class="btn_link btn_main font_white">로그인</a></li>
			<li><a href="#" class="btn_link btn_main font_white">회원가입</a></li>
		</ul>
	</div>
</div>
</header>
<main>
<div id="main_banner">

</div>
<div id="main_menu">

<div class="main_menu_circle">
<a href="#"><img src="../img/creator.svg"></a>
<div class="main_menu_text font_bold">크리에이터</div>
</div>

<div class="main_menu_circle">
<a href="#"><img src="../img/editor.svg"></a>
<div class="main_menu_text font_bold">편집자</div>
</div>

<div class="main_menu_circle">
<a href="#"><img src="../img/job.svg"></a>
<div class="main_menu_text font_bold">채용공고</div>
</div>

</div>

<div id="main_editors">
<div id="main_editors_title"><h2 class="no_margin"><font class="font_red">HOT</font> EDITORS</h2></div>
	<div class="main_editors_form">
		<div class="main_editors_table">
		<div class="editors_profile"><img alt="profile" src="../img/customer-service-2-fill.svg"></div>
		<div class="editors_title">"최선을 다해 편집하겠습니다."</div>
		<div class="editors_name">test1234</div>
		<div class="clear"></div>
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
	<div class="main_editors_form">
		<div class="main_editors_table">
		<div class="editors_profile"><img alt="profile" src="../img/customer-service-2-fill.svg"></div>
		<div class="editors_title">"최선을 다해 편집하겠습니다."</div>
		<div class="editors_name">test1234</div>
		<div class="clear"></div>
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
	<div class="main_editors_form">
		<div class="main_editors_table">
		<div class="editors_profile"><img alt="profile" src="../img/customer-service-2-fill.svg"></div>
		<div class="editors_title">"최선을 다해 편집하겠습니다."</div>
		<div class="editors_name">test1234</div>
		<div class="clear"></div>
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

<div id="main_project">
<div id="main_project_title"><h2 class="no_margin"><font class="font_green">NEW</font> Project</h2></div>
<div class="main_project_form bg_pink"></div>
<div class="main_project_form bg_pink"></div>
<div class="main_project_form bg_pink"></div>
</div>

<div id="main_job" class="bg_yellow"></div>

<div id="main_guide" class="bg_lightblue"></div>

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
<footer>
<table>
<tr><td class="footer_title font_bold">Eddict</td><td class="footer_content">
주식회사 위시켓 (대표이사: 박우범) / 서울특별시 강남구 테헤란로 211 한국고등교육재단빌딩 3층 (주)위시켓 <br>
사업자등록번호: 209-81-57303 / 통신판매업신고: 제2018-서울강남-02337 호 / 직업정보제공사업 신고번호: J1200020180019<br>
© 2013 Wishket Corp.</td>
<td class="footer_sms">
<img src="../img/facebook-box-fill.svg"> <img src="../img/instagram-fill.svg">
</td>
</tr>
</table>
</footer>
</div>

</body>
</html>