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
<style>
</style>
</head>
<body>
	<jsp:include page="../common/header2.jsp"/>
		<div class="outer" align="center">
			<br>
			<h3 align="center">승인 관리</h3>
			
			<table class="list-area" id="applicationList">
				<thead>
					<tr>
						
						<th>신청인 ID</th>
						<th>공연홀이름</th>
						<th>대관대표자명</th>
						<th>상태</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="r" items="${rList}">
						<tr>
							<td>${r.userId }</td>
							<td>${r.hallName }</td>
							<td>${r.agentName }</td>
							<td>${r.approveStatus }</td>
							<td><a href="approve.perf?rno=${r.rentalCode}">승인 허가</a></td>
							<td><button>승인 불허</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<script>
				
			
				/* $(function() {
					$("#approveBtn").click(function() {
						location.href="approve.perf?rno="+$(this).children().eq(0).children().val();
					})
				}) */
			</script>
			
		</div>
		<br><br><br><br><br><br><br><br><br>
	<jsp:include page="../common/footer2.jsp"/>
</body>
</html>