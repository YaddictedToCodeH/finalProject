<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
	//ul -> tabs -> li에 있는 걸 클릭하면
		$('ul.tabs1 li').click(function() {
			var tab_id = $(this).attr('data-tab');
	//현페이지가 사라지고
			$('ul.tabs1 li').removeClass('current');
			$('.tab-content').removeClass('current');
	//클릭한 페이지가 생긴다. ? 
			$(this).addClass('current');
			$("#" + tab_id).addClass('current');
		})

	});
	$(document).ready(function() {
	//ul -> tabs -> li에 있는 걸 클릭하면
		$('ul.tabs2 li').click(function() {
			var tab_id = $(this).attr('data-tab');
	//현페이지가 사라지고
			$('ul.tabs2 li').removeClass('current');
			$('.tab-content').removeClass('current');
	//클릭한 페이지가 생긴다. ? 
			$(this).addClass('current');
			$("#" + tab_id).addClass('current');
		})

	});
</script>
<style>
/*메인크기*/
.sw-introduce {
	border: solid 1px black;
	height: 1900px;
	width: 1200px;
	margin: 0 auto;
	text-align: center;
}


/*탭 사이즈*/
ul.tabs1 {
	margin: 0px 0px 40px 0px;
	padding: 0px;
	list-style: none;
	
}

/*탭 버튼 설정*/
ul.tabs1 li {
	display: inline-block;
	background: #898989;
	color: white;
	padding: 10px 15px;
	cursor: pointer;
}
/*누르는 색*/
ul.tabs1 li.current {
	color: #222;
}

/*탭 사이즈*/
ul.tabs2 {
	margin: 80px 0px 80px 0px;
	padding: 0px;
	list-style: none;
	
}

/*탭 버튼 설정*/
ul.tabs2 li {
	border-radius: 15px;
	display: inline-block;
	background: #898989;
	color: white;
	padding: 10px 15px;
	cursor: pointer;
}
/*누르는 색*/
ul.tabs2 li.current {
	color: #222;
}
/* 이거없으면 탭 기능상실 */
.tab-content {
	display: none;
	padding: 12px;
}
/* 이거없으면 모든 게시글 사라짐 */
.tab-content.current {
	display: inherit;
}

</style>
</head>
<body>
	<div class="sw-introduce">
		<ul class="tabs1">
			<li class="tab-link current" data-tab="tab-1"><!-- xxx -->님</li>
			<li class="tab-link" data-tab="tab-2">포인트/쿠폰</li>
			<li class="tab-link" data-tab="tab-3">환불계좌</li>
			<li class="tab-link" data-tab="tab-4">문의/제안</li>
		</ul>
		<ul class="tabs2">	
				<li class="tab-link" data-tab="tab-5">개인정보관리</li>
				<li class="tab-link" data-tab="tab-6">문의내역</li>
				<li class="tab-link" data-tab="tab-7">티켓 예매내역</li>
		</ul>

		<!-- 사용자 첫화면 -->
		<div id="tab-1" class="tab-content current">
			<h1>마이 페이지 입니다.</h1>
		</div>

		<!-- 사용자 포인트/쿠폰 화면 -->
		<div id="tab-2" class="tab-content">
			<h1>사용자 포인트/쿠폰 화면입니다.</h1>		
		</div>
		<!-- 사용자 환불계좌 화면 -->
		<div id="tab-3" class="tab-content">
			<h1>사용자 환불계좌 화면입니다.</h1>		
		
		</div>
		<!-- 사용자 문의/제안 화면 -->
		<div id="tab-4" class="tab-content">
			<h1>사용자 문의/제안 화면입니다.</h1>		
		</div>
		<!-- 사용자 개인정보관리 화면 -->
		<div id="tab-5" class="tab-content">
			<h1>사용자 개인정보관리 화면입니다.</h1>				
		</div>
		<!-- 사용자 문의내역 화면 -->
		<div id="tab-6" class="tab-content">
			<h1>사용자 문의내역 화면입니다.</h1>						
		</div>
		<!-- 사용자 티켓 예매 내역 화면 -->
		<div id="tab-7" class="tab-content">
			<h1>사용자 티켓 예매 내역 화면입니다.</h1>								
		</div>
	</div>
</body>
</html>