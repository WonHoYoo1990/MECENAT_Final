<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Core -->
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> <!-- XML -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- I18N -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> <!-- Database -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <!-- Functions -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<br><br>
	<div class="content">
	<h3 align="center" style="color:white">회원 리스트</h3>
	
	<table id="memberList" align="center" style="color:white" border="1px">
		<thead>
			<tr>
				<th>회원 아이디</th>
				<th>회원 이름</th>
				<th>가입 날짜</th>
				<th>상태</th>
				<th></th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="m" items="${mList}">
				<tr>
					<td>${m.userId }</td>
					<td>${m.userName }</td>
					<td>${m.enrollDate }</td>
					<td>${m.status }</td>
					<!-- <td><button type="button" onclick="">강제탈퇴</button> -->
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	
	<script>
		
	</script>
	
	
	
	
	<br><br><br><br><br><br><br>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>