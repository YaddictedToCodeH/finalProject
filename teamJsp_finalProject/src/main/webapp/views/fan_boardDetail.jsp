<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팬게시판</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fan_boardDetail.css" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
	        <div class="title">객관적인 이번시즌 KT 농구선수 활약 등급 알려준다 필독
	        </div>
	      
	        <div class="contents">
	            <div class="datehits">
	                <span>작성자  YJ542	</span> |
	                <span>작성일  2020-08-06 15:10:55</span> |
	                <span>조회 293</span> |
	                <span>좋아요 0</span>
	            </div>
	            <div class="news">
	                허훈이 낳냐 허웅이 낳냐?
	            </div>
	
	            <div class="like">
	                <button class="likebtn">
	                    <img src="${pageContext.request.contextPath}/resources/images/like.png" alt=""><br>
	                    <span>좋아요</span>
	                </button>
	            </div>
	
	            <div class="buttons">
	                <span class="prev">목록</span>
	                <span class="home">수정</span>
	                <span class="next">삭제</span>
	            </div>
	            
	        </div>
	
	        <div class="comment">
	            <div class="commentbox">
	                <div class="cbtitle">작성자 <span>2022-01-01</span></div>
	                <div class="commenttext">댓글내용</div>
	            </div>
	            <br>
	            <div class="commentbox">
	                <div class="cbtitle">작성자 <span>2022-01-01</span></div>
	                <div class="commenttext">댓글내용</div>
	            </div>
	            <br>
	            <div class="writecomment">댓글작성</div>
	            <div class="writebox"><input type="text">
	                <button class="writebtn">작성</button>
	            </div>
	
	        </div>
	
	</div>
	   
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>