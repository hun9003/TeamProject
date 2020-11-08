<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한줌에디터</title>
<link href="css/default.css" rel="stylesheet" type="text/css">
<link href="css/intro.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.5.1.js"></script>
<script src="js/topMenu.js"></script>
<script src="js/rollingintro.js"></script>
</head>
<body>
<div id="wrap">
<jsp:include page="../inc/top.jsp"/>
<main>
<div class="intro_main"></div>
<div class="intro_content">
<h1>한줌에디터의 빠르고 편리한 프로세스를 경험해보세요.</h1>
<div class="intro_nav">
<div id="intro_nav_1" class="intro_nav_f active"><span>1. 프로젝트 등록</span></div>
<div id="intro_nav_2" class="intro_nav_f"><span>2. 편집자 모집 및 선택</span></div>
<div id="intro_nav_3" class="intro_nav_f"><span>3. 프로젝트 계약</span></div>
<div id="intro_nav_4" class="intro_nav_f"><span>4. 프로젝트 미팅</span></div>
<div id="intro_nav_5" class="intro_nav_f"><span>5. 프로젝트 진행 및 완료</span></div>
</div>
<div class="clear"></div>
<ul class="intro_content_list no_margin no_padding">
<li><div class="intro_content_1 intro_content_item"></div></li>
<li><div class="intro_content_2 intro_content_item"></div></li>
<li><div class="intro_content_3 intro_content_item"></div></li>
<li><div class="intro_content_4 intro_content_item"></div></li>
<li><div class="intro_content_5 intro_content_item"></div></li>
</ul>
<a class="intro_left"><img class="intro_arrow_btn" alt="왼쪽" src="img/arrow-left-s-line.png"></a>
<a class="intro_right"><img class="intro_arrow_btn" alt="오른쪽" src="img/arrow-right-s-line.png"></a>
</div>
<div id="QnA" class="intro_QnA">
<h1>자주 묻는 질문</h1>
<div class="intro_QnA_table">
<div class="intro_QnA_list">
<ul class="no_padding">
<li>메인페이지에 인기편집자의 기준이 무엇인가요?</li>
<li>프로필 사진은 얼굴이 나온 사진만 가능한가요?</li>
<li>평균 편집 단가는 어떻게 정하나요?</li>
<li>중간에 계약을 취소할 수 있나요?</li>
<li>프로젝트 결과물은 어디로 받을 수 있나요?</li>
</ul>
</div>
<div class="intro_QnA_content">
<div class="intro_QnA_question">
<h1>Q. 메인페이지에 인기편집자의 기준이 무엇인가요?</h1>
</div>
<div class="intro_QnA_answer">
<h2>A.</h2>
<div class="intro_QnA_answer_content">
아주 잘 하면 됩니다.
</div>
</div>
</div>
</div>
<div class="clear"></div>
</div>
</main>
<jsp:include page="../inc/bottom.jsp"/>
</div>
</body>
</html>