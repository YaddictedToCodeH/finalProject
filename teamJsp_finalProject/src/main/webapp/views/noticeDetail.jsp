<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/noticeDetail.css" />
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

    <div class="container">
        <div class="title">KT허훈¸ 어린이날 맞아 부산지역 저소득가정에 어린이날 후원금 500만 전달</div>
        
        <div class="contents">
            <div class="datehits">
                <span>작성일  2020-08-06 15:10:55</span> |
                <span>조회 293</span>
            </div>
            <div class="news">
                ▶ 코로나19로 지쳐있는 부산지역 내 저소득가정 아이들을 위한 어린이날 선물 후원금 500만원 전달 
                KT 소닉붐 프로농구단(대표이사 남상봉, http://ktsonicboom.com)은 구단의 대표 선수인 허훈이 
                코로나 19로 지쳐있는 부산지역 내 저소득가정 아이들을 위해 어린이날 선물 후원금 500만원을 
                초록우산 어린이재단 부산지역본부에 전달했다고 4일 밝혔다. 허훈의 이번 후원은 최근 신종 코로나 바이러스 확산에 따라 
                KT소닉붐의 연고지인 부산 지역 내 저소득가정 아동들이 안전에 대한 위협과 더불어 생계까지 위태로워졌다는 안타까운 소식을 접하고, 
                어린이날을 맞아 아이들의 꿈을 응원하고자 진행하게 되었다. 아이들을 위해 제작될 어린이날 선물상자에는 식료품과 장난감, 영양제 외에서 
                코로나19 종식 이후 아이들이 밖에서 자유롭게 활동하며 건강하게 성장해 나가기를 바라는 허훈의 따뜻한 마음이 담긴 농구공이 함께 전달될 예정이다. 
                허훈은 “연고지인 부산지역 저소득가정 아이들의 안타까운 소식을 듣고 어떻게 하면 도울 수 있을지 구단과 상의하고 결정하게 되었다”며 
                “아이들은 항상 밝고 건강해야 한다. 제가 지원하는 것들이 많이 부족하겠지만 아이들에게 조금이나마 힘이 되었으면 좋겠다”고 말했다. 
                한편 KT소닉붐은 초록우산 어린이재단과 업무협약을 통해 수년간 부산지역의 아동들을 후원해오고 있다."
            </div>
            <div class="buttons">
                <div class="prev">이전글</div>
                <div class="home">목록</div>
                <div class="next">다음글</div>
            </div>
            
        </div>

    </div>
    
    <h1>${dto.noticeno } </h1>
    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>