<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<style>
	*{
		padding:0;
		margin: 0px auto;
	}

    .container{
        margin-top: 150px;
        width: 800px;
        height:1000px;
    }

    .title{
        display: inline-block;
        border: 1px solid black;
        padding: 15px;
        margin-bottom: 15px;
        font-size: 30px;
    }

    .board{
        border-collapse: collapse;
        width: 800px;
        text-align: center;
    }

    .board > tr , th,  td {
        border: 1px solid black;
      
    }
    
    td {
        padding: 30px;
    }

</style>
<script>

</script>
<body>
    <div class="container">
        <div class="title">공지사항</div>
        <table class="board">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>조회수</th>
            </tr>
                   
            <tr>
                <td>${dto.noticeno}</td>
                <td>${dto.notice_title}</td>
                <td>${dto.notice_contents}</td>
                <td>${dto.notice_date}</td>
                <td>${dto.notice_hit}</td>
            </tr>
        </table>
    </div>
</body>
</html>