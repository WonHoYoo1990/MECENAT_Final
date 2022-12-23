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
	<jsp:include page="../common/header.jsp"/>
		<div class="outer" align="center">
			<br>
			<h3 align="center">승인 관리</h3>
			
			<table class="list-area" id="applicationList">
				<thead>
					<tr align="center">
						
						<th>신청인 ID</th>
						<th>공연홀이름</th>
						<th>대관대표자명</th>
						<th>상태</th>
						<th></th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="r" items="${rList}">
						<tr align="center">
							<td>${r.userId }</td>
							<td>${r.hallName }</td>
							<td>${r.agentName }</td>
							<td>${r.approveStatus }</td>
							
							<td><a href="approve.perf?rno=${r.rentalCode}">승인 허가</a></td>
							<!-- onclick으로 function실행=> confirm창 띄워서 승낙하면 href로 이동, 아니면 최소하기 -->
							<td><button>승인 불허</button></td>
							<td><button>상세보기</button></td>
							<!-- 팝업창으로 할까? -->
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<script>
				
			</script>
			
		</div>
		<br><br><br><br><br><br><br><br><br>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>