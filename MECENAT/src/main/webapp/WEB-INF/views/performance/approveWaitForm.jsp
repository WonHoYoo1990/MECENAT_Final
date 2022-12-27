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
						<th>공연이름</th>
						<th>공연홀이름</th>
						<th>대관대표자명</th>
						<th>상태</th>
						<th></th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="r" items="${rList}" varStatus="status">
						
						<tr align="center">
							<td>${r.userId }</td>
							<td>${r.rentalPropose }</td>
							<td>${r.hallName }</td>
							<td>${r.agentName }</td>
							<td>${r.approveStatus }</td>
							<c:choose>
								<c:when test="${r.approveStatus eq '승인대기'}">
									<td><button onclick="approveApp(${r.rentalCode});">승인허가</button></td>
								</c:when>
								<c:when test="${r.approveStatus eq '승인'}">
									<td><button onclick="cancelApp(${r.rentalCode});">승인취소</button></td>
									<td><button onclick="location.href='insertForm.perf?rno=${r.rentalCode}'">Form작성</button></td>
								</c:when>
							</c:choose>
							<!-- Form작성이 완료되면 공연 관리페이지로 넘어가기 -->
							
							<!-- 미승인=> 삭제해버리기 -->
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<script>
				
				function approveApp(i){
					if(confirm("승인을 하시겠습니까?")){
						approveAppRC(i);
						alert("승인하였습니다");
						location.reload();
					}else{
						alert("승인을 취소합니다.");
					}
				}
				
				function cancelApp(i){
					if(confirm("승인을 취소하시겠습니까?")){
						cancelAppRC(i);
						alert("승인취소하였습니다. 승인대기로 전환됩니다.");
						location.reload();
					}else{
						alert("승인취소를 하지 않습니다.");
					}
				}
				
				function approveAppRC(i){
					console.log(i);
					$.ajax({
						url: "approve.perf",
						data: {rcode: i},
						success : function(){
						},
						error: function(){
							console.log("실패");
						}
					});
				}
				function cancelAppRC(i){
					console.log(i);
					$.ajax({
						url: "cancel.perf",
						data: {rcode: i},
						success : function(){
						},
						error: function(){
							console.log("실패");
						}
					});
				}
				
			</script>
			
			
			
			
			
			
			
			
			
			
			
			
			
		</div>
		<br><br><br><br><br><br><br><br><br>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>