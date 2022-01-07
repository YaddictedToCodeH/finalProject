<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../resources/css/find.css" />
<jsp:include page="./header.jsp" />
	<div id="FindPage">
        <div class="FindWrap">
            <div class="findHeader">
                <div class="findHeaderLogo">
                    <img src="../resources/images/blacklogo_lg.png" alt="로고">
                </div>
            </div>
            <div class="findTextWrap">
                <h1 class="findText">아이디 찾기</h1>
            </div>
            <div class="findContentsWrap">
                <div class="findContents">
                    <form action="" method="post">
                        <table class="findInput">
                            <tr>
                                <td>이름</td>
                                <td><input type="text" name="name" id="name"></td>
                            </tr>
                            <tr>
                                <td>이메일</td>
                                <td><input type="text" name="emailId" id="emailId"></td>
                                <td>@</td>
                                <td><input type="text" name="emailAddr" id="emailAddr"></td>
                                <td>
                                    <select name="select_email" onChange="selectEmail(this)">
                                        <option value="" selected>선택하세요</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="nate.com">nate.com</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hanmail.com">hanmail.com</option>
                                        <option value="icloud.com">icloud.com</option>
                                        <option value="1">직접입력</option> 
                                    </select>
                                </td>
                                <td>
                                    <input type="button" value="인증요청">
                                </td>
                            </tr>
                            <tr>
                                <td>인증번호</td>
                                <td><input type="text" name="certificationNum" id="certificationNum"></td>
                                <td></td>
                                <td class="left"><input type="button" value="인증하기"></td>
                            </tr>
                            <tr>
                                <td colspan="6" class="left errorMsg">&nbsp;* 이메일 주소를 입력 후 '인증 요청' 버튼을 선택해 주세요</td>
                            </tr>
                            <tr>
                                <td colspan="6">
                                    <button type="button" class="idFindBtn">아이디 찾기</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="./footer.jsp" />