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
	        <div class="title">${dto.fan_title}
	        </div>
	      
	        <div class="contents">
	            <div class="datehits">
	                <span>작성자  ${dto.id}	</span> |
	                <span>작성일  ${dto.fan_date}</span> |
	                <span>조회 ${dto.fan_hit}</span> |
	                <span>좋아요 0</span>
	            </div>
	            <div class="fcontents">
	                ${dto.fan_contents}
	            </div>
	
	            <div class="like">
	                <button class="likebtn">
	                    <img src="${pageContext.request.contextPath}/resources/images/like.png" alt=""><br>
	                    <span>좋아요</span>
	                </button>
	            </div>
	
	            <div class="buttons">
	                <span class="list"><a href="fan_board">목록</a></span>
	                <span class="modify"><a href="fan_boardModify?fanno=${dto.fanno }">수정</a></span>
	                <span class="delete"><a href="fan_boardDelete?fanno=${dto.fanno }">삭제</a></span>
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