<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<link rel="stylesheet" href="../resources/css/map.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=6ousy1ju6n"></script>

<jsp:include page="./header.jsp" />
	<div class="sw-map">
		<div class="placebg">
			<h1>���� KT �Ҵк� �Ʒ���</h1>
			<div class="place1">
				<h1>
					<img class="minilogo" src="../resources/images/kt-emblem-img.png" />�����ܺ�
				</h1>
			</div>
			<img class="img-stadium" src="../resources/images/kt-stadium.png" />
		</div>
		<div class="seatbg">
			<div class="seat1">
				<h1>
					<img class="minilogo" src="../resources/images/kt-emblem-img.png" />���� �¼�
				</h1>
			</div>
			<img class="img-seat" src="../resources/images/kt-stadium-seat.png" />
		</div>

		<div class="map1">
			<h1>
				<img class="minilogo" src="../resources/images/kt-emblem-img.png" />ã�ƿ��� ��
			</h1>
		</div>
		<div class="movemap">
			<div id="map"></div>
		</div>

		<script>
			var HOME_PATH = window.HOME_PATH || '.';

			var cityhall = new naver.maps.LatLng(37.276464600289756,
					126.94828752591712), map = new naver.maps.Map('map', {
				center : cityhall.destinationPoint(180, 1800),
				zoom : 18
			}), marker = new naver.maps.Marker({
				map : map,
				position : cityhall
			});
			var contentString = [ '<div class="iw_inner">',
					'   <h3>��⵵ ������</h3>',
					'   <p>��� ������ �Ǽ��� ��������577���� 171<br />',   
					'       <a href="https://map.naver.com/v5/entry/place/1666718582?c=14131356.1445660,4477689.3198165,15,0,0,0,dh" target="_blank">���̹� ������ �̵��ϱ�</a>',
					' </p>', 
					'</div>' 
				].join('');

			var infowindow = new naver.maps.InfoWindow({
				content : contentString
			});

			naver.maps.Event.addListener(marker, "click", function(e) {
				if (infowindow.getMap()) {
					infowindow.close();
				} else {
					infowindow.open(map, marker);
				}
			});

			infowindow.open(map, marker);
			var map = new naver.maps.Map('map', mapOptions);
		</script>

	</div>
<jsp:include page="./footer.jsp"></jsp:include>
