<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Core -->
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!-- XML -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- I18N -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!-- Database -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	.content {
        background-color:rgb(247, 245, 245);
        width:90%;
        margin:auto;
    }
	.innerOuter {
        border:1px solid lightgray;
        width:90%;
        margin:10%;
        padding:5% 30% 5% 30%;
		background-color:white;
	}
	#title{
		font-size: 50px;
	}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div class="content" align="center">
	<div class="innerOuter">
		<br><br>
		<p id="title">환불 요청 페이지</p>
		<br><br>
		<div align="left">
		은행을 선택해주세요:
		<select>
			<option>NH</option>
			<option>우리은행</option>
			<option>신한은행</option>
			<option>국민은행</option>
			<option>수협</option>
			<option>기타</option>
		</select>
		<br><br><br>
		계좌번호를 입력해 주세요: 
		<input type="text" name="accountNum" required>
		<br><br><br>
		환불 사유(선택)
		<textarea></textarea>
		</div>
		<br><br>
		<input type="submit" value="환불요청">
		<input type="submit" onclick="location.href='myPage.me'" value="돌아가기">
		
		</div>
	</div>
	
	
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>