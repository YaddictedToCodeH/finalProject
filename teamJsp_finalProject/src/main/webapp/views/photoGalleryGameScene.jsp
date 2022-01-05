<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수원 KT 소닉붐</title>
<link rel="stylesheet" href="./resources/css/photoGallery.css" type="text/css" />
</head>
<body>

		<h3>${map.currentPage }</h3>
		
		<h3>리스트: ${list}</h3>

 <div id="container">
        <div id="menu">
            <h1>포토 갤러리</h1>
            <span>
                <a href="./GameScene">경기장면</a>
                <span>|</span>
                <a href="">응원장면</a>
                <span>|</span>
                <a href="">이모저모</a>
            </span>
        </div>
        
        <div id="selectBox">
            <form action="" method="">
                <select name="">    
                    <option disabled >정렬</option>
                    <option value="최신순">최신순</option>
                    <option value="오래된순">오래된순</option>
                    <option value="좋아요순">좋아요순</option>
                </select>
            </form>
        </div>

        <!------------------------------------------------------------>
        <c:forEach var="list" items="${list}">
	        <div class="photoZone">
	        	<a href="detail?galleryno=${list.galleryno}"> 
	                <div class="contents">
	                    <div><img src="https://kbl.or.kr/files/kt/article/static/hgw_6206.jpg" alt="img"></div>
	                    <div><span class="category">경기장면</span></div>            
	                    <div><span class="title" title="${list.gallery_title}">${list.gallery_title}</span></div>
	                    <div><span class="date">${list.gallery_date }</span></div>
	                </div>          
	        	</a>
	        </div>  
        </c:forEach>
      
        <!-- (clear:both용)-->
      	<div class="clearfixed"></div>

 		<div class="paging">
 			<ul>
 			 <c:if test="${map.prev}">
 				<li><a href="GameScene?currentPage=${map.currentPage - 5}">Previous</a></li> 					
 			</c:if>
 					
 			<c:forEach begin="${map.startPageNo}" end="${map.endPageNo}" var="i">
 				<li><a href="GameScene?currentPage=${i}">${i}</a></li>
 			</c:forEach>
 					
 			<c:if test="${map.next}">
 				<li><a href="GameScene?currentPage=${map.currentPage + 5}">Next</a></li>
 			</c:if>
 			</ul>
 		</div>
        
        
        
    </div>
</body>
</html>