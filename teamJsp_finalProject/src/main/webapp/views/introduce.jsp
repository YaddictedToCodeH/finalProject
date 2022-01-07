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
		$('ul.tabs li').click(function() {
			var tab_id = $(this).attr('data-tab');
	//���������� �������
			$('ul.tabs li').removeClass('current');
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
}

/*�� ������*/
ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

/*�� ��ư ����*/
ul.tabs li {
	display: inline-block;
	background: #898989;
	color: white;
	padding: 10px 15px;
	cursor: pointer;
}
/*������ ��*/
ul.tabs li.current {
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
/*  tab-1�� �ִ� ���� ����� ���̰���*/
#tab-1 {
	text-align: center;
}

/* p�� �ִ� ���� ����*/
#tab-1 p {
	text-align: center;
	font-size: 20px;
	margin: 0 auto;
	font-weight: 800;
	width: 1100px;
	height: 150px;
	line-height: 38px;
}

/* h1�������� */
h1 {
	color: red;
}

/* ������� ���� */
.imglogo {
	width: 350px;
	height: 250px;
}

.imgmem {
	margin: 0 auto;
	height: 400px;
	width: 1100px;
	height: 500px;
	padding: 50px;
}
.logostory{
	height: 300px;
	width: 400px;
	text-align: left;
}

.history div{
	font-size: 20px;
	margin: 0 auto;
	font-weight: 800;
	line-height: 38px;
}
.gamehistory p{
	padding: 70px;
	text-align: right;
	font-size: 40px;
	margin: 0 auto;
	font-weight: 1000;
	line-height: 78px;
}
.gamelogohistory{
	position: absolute;
	height: 550px;
	width: 600px;
	top: 1000px;
	
}
.history p{
	font-weight: 900;
	font-size: 20px;
}
</style>
</head>
<body>
	<div class="sw-introduce">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">���ܼҰ�</li>
			<li class="tab-link" data-tab="tab-2">���ܿ���</li>
		</ul>

		<div id="tab-1" class="tab-content current">
			<img class="imglogo" src="../images/kt logo.png" />

			<h1>�ź�Ӱ� ������ ��, ����� �� ����</h1>
			<p>
				kt �Ҵк��� 2013��, �� 10���ܿ� ���� ���ε��� ���� ���� KT�׷��� �߰ſ� ��ġ �������� ������ �Ҵ�!<br>
				�Ҵ��̶�� �̸����� �ź�Ӱ� ������ ������ ����� �󱸸� �����ϰڴٴ� ������ ������ ���Ӱ� ����Ͽ����ϴ�.<br>
			</p>
			<!-------------------------------------------------------------------------------------->
			<h1>�������� ���� ö���� �÷�!</h1>
			<p>
				�������� �Ǳ� ���� ö���� ����� �÷��� ���� kt �Ҵ� ���� ���� �� ��Ī ������, �������� �����ϰ� �ֽ��ϴ�!<br>
				���� ������ �Բ� �����Ʒ��� �����ϰ� �ⷮ�� ���� ��, kt �Ҵ� �� �̸� �״�� �Ҵа� ���� �󱸸� ���ĺ��̱� ����<br>
				����� ���ϰ� �ֽ��ϴ�!<br>
			</p>
			<!-------------------------------------------------------------------------------------->
			<h1>���� ��ȭ������ ÷�� ����!</h1>
			<p>
				kt�׷��� ����� ICT����� Ȱ���� ���� ���θ�Ʈ(BIC Tainment)�� ����� ���� Ȱ���Ͽ�<br> �󱸸�
				����ϴ� �� �����в� ����ȭ�� �� �������� �����ϰ� ������ ������ ��̰� ���ϰ� �󱸸� ��� �� �ִ�<br>
				���� ��ȭ������ ÷�� ������ ���� �����Դϴ�!<br>
			</p>
			<!-------------------------------------------------------------------------------------->
			<h1>��̿� ��ſ��� �߱��ϴ� �ټ� �ִ� ����!</h1>
			<p>
				â�� �������� ��⵵�ΰ� �����ùε��� �����ֽ� ������ ��뿡 �����ϱ� ���� �����ε� �󱸸� ����<br> ��ſ�
				������ȭ�� ������ ���̸� �ҵ�� �Բ� �� �� �ִ� ���Ӱ� �پ��� �������� ������ ���ư�<br> ����̿� ��ſ���
				�߱��ϴ� �ټ��ִ� ���ܡ��̶�� kt sports�� Ȯ���� ������ �����ϰ� �ٳⰣ ����<br> ������ ���� �
				���Ͽ�� �׶��� ���ƿ��� �� ���� ���� ���ο� �󱸸� kt �Ҵк��� �̷�� ���ڽ��ϴ�!<br>
			</p>
			<!-------------------------------------------------------------------------------------->
			<img class="imgmem" src="../images/kt member.png">
		</div>

		<div id="tab-2" class="tab-content">
				<table class="history" width="1400">
					<tr>
						<td><img class="logostory" src="../images/���� ���� �ö����.gif"/></td>
						<td><img class="logostory" src="../images/�ڸ����ٴ�.png"/></td>
					</tr>
					<tr>
						<td><p>&nbsp&nbsp&nbsp&nbsp&nbsp���� ���� �ö����(1997��~2001��)</p></td>
						<td><p>&nbsp&nbsp&nbsp&nbsp&nbsp�λ� �ڸ����ٴ�(2001��~2003��)</p></td>
					</tr>
					<tr>
						<td><img class="logostory" src="../images/KTF.png"/></td> 
						<td><img class="logostory" src="../images/�λ� kt.jpg"/></td>		
					</tr>	
					<tr>
						<td><p>&nbsp&nbsp&nbsp&nbsp&nbsp�λ� KTF �������� (2003��~2009��)</p></td>
						<td><p>&nbsp&nbsp&nbsp&nbsp&nbsp�λ� kt �Ҵк�(2009��~2021��)</p></td>	
					</tr>
				</table>
							
			<div class="gamehistory">
				<img class="gamelogohistory" src="../images/kt logo.png"/>
				<p>
				���� ����&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br>
				2009-10 ���� �ؿ��<br>
				2010-11  ���� ���<br>
				2011-12  ���� 3��<br>
				2012-13 ���� 9��<br>
				2013-14 ���� 5��<br>
				2014-15 ���� 7��<br>
				2015-16 ���� 7��<br>
				2016-17 ���� 9��<br>
				2017-18 ���� 10��<br>
				2018-19 ���� 6��<br>
				2019-20 ���� 6��<br>
				2020-21 ���� 6��<br>
				</p>
			</div>

		</div>
	</div>
	</div>
</body>
</html>