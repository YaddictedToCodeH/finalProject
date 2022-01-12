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
	//ul -> tabs -> li�� �ִ� �� Ŭ���ϸ�
		$('ul.tabs1 li').click(function() {
			var tab_id = $(this).attr('data-tab');
	//���������� �������
			$('ul.tabs1 li').removeClass('current');
			$('.tab-content').removeClass('current');
	//Ŭ���� �������� �����. ? 
			$(this).addClass('current');
			$("#" + tab_id).addClass('current');
		})

	});
	$(document).ready(function() {
	//ul -> tabs -> li�� �ִ� �� Ŭ���ϸ�
		$('ul.tabs2 li').click(function() {
			var tab_id = $(this).attr('data-tab');
	//���������� �������
			$('ul.tabs2 li').removeClass('current');
			$('.tab-content').removeClass('current');
	//Ŭ���� �������� �����. ? 
			$(this).addClass('current');
			$("#" + tab_id).addClass('current');
		})

	});
</script>
<style>
/*����ũ��*/
.sw-introduce {
	border: solid 1px black;
	height: 1900px;
	width: 1200px;
	margin: 0 auto;
	text-align: center;
}


/*�� ������*/
ul.tabs1 {
	margin: 0px 0px 40px 0px;
	padding: 0px;
	list-style: none;
	
}

/*�� ��ư ����*/
ul.tabs1 li {
	display: inline-block;
	background: #898989;
	color: white;
	padding: 10px 15px;
	cursor: pointer;
}
/*������ ��*/
ul.tabs1 li.current {
	color: #222;
}

/*�� ������*/
ul.tabs2 {
	margin: 80px 0px 80px 0px;
	padding: 0px;
	list-style: none;
	
}

/*�� ��ư ����*/
ul.tabs2 li {
	border-radius: 15px;
	display: inline-block;
	background: #898989;
	color: white;
	padding: 10px 15px;
	cursor: pointer;
}
/*������ ��*/
ul.tabs2 li.current {
	color: #222;
}
/* �̰ž����� �� ��ɻ�� */
.tab-content {
	display: none;
	padding: 12px;
}
/* �̰ž����� ��� �Խñ� ����� */
.tab-content.current {
	display: inherit;
}

</style>
</head>
<body>
	<div class="sw-introduce">
		<ul class="tabs1">
			<li class="tab-link current" data-tab="tab-1"><!-- xxx -->��</li>
			<li class="tab-link" data-tab="tab-2">����Ʈ/����</li>
			<li class="tab-link" data-tab="tab-3">ȯ�Ұ���</li>
			<li class="tab-link" data-tab="tab-4">����/����</li>
		</ul>
		<ul class="tabs2">	
				<li class="tab-link" data-tab="tab-5">������������</li>
				<li class="tab-link" data-tab="tab-6">���ǳ���</li>
				<li class="tab-link" data-tab="tab-7">Ƽ�� ���ų���</li>
		</ul>

		<!-- ����� ùȭ�� -->
		<div id="tab-1" class="tab-content current">
			<h1>���� ������ �Դϴ�.</h1>
		</div>

		<!-- ����� ����Ʈ/���� ȭ�� -->
		<div id="tab-2" class="tab-content">
			<h1>����� ����Ʈ/���� ȭ���Դϴ�.</h1>		
		</div>
		<!-- ����� ȯ�Ұ��� ȭ�� -->
		<div id="tab-3" class="tab-content">
			<h1>����� ȯ�Ұ��� ȭ���Դϴ�.</h1>		
		
		</div>
		<!-- ����� ����/���� ȭ�� -->
		<div id="tab-4" class="tab-content">
			<h1>����� ����/���� ȭ���Դϴ�.</h1>		
		</div>
		<!-- ����� ������������ ȭ�� -->
		<div id="tab-5" class="tab-content">
			<h1>����� ������������ ȭ���Դϴ�.</h1>				
		</div>
		<!-- ����� ���ǳ��� ȭ�� -->
		<div id="tab-6" class="tab-content">
			<h1>����� ���ǳ��� ȭ���Դϴ�.</h1>						
		</div>
		<!-- ����� Ƽ�� ���� ���� ȭ�� -->
		<div id="tab-7" class="tab-content">
			<h1>����� Ƽ�� ���� ���� ȭ���Դϴ�.</h1>								
		</div>
	</div>
</body>
</html>