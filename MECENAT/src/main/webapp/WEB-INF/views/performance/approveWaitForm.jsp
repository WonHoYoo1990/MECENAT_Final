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
	.content {
        background-color:rgb(247, 245, 245);
        width:90%;
        margin:auto;
    }
	.innerOuter {
        border:1px solid lightgray;
        width:90%;
        margin:auto;
        padding:5% 10%;
		background-color:white;
	}
	#title{
		font-size: 50px;
	}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
		<div class="content">
		<br><br>
		<div class="innerOuter" style="padding:5% 10%;">
			<br>
			<h1 align="center" id="title">승인 관리</h1>
			<br><br>
			<table  class="table table-hover" id="applicationList">
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
						<c:if test="${r.approveStatus ne '미승인' }">
						<tr align="center">
							<td>${r.userId }</td>
							<td>${r.rentalPropose }</td>
							<td>${r.hallName }</td>
							<td>${r.agentName }</td>
							<td>${r.approveStatus }</td>
							
							
							<c:if test="${r.approveStatus eq '승인대기'}">
								<td><button onclick="approveApp(${r.rentalCode});">승인허가</button></td>
								<td><button onclick="nopeApp(${r.rentalCode});">승인거부</button></td><!-- 이거 미승인임 ㅇㅅaㅇ -->
							</c:if>
							<c:if test="${r.approveStatus eq '승인'}">
								<td><button onclick="cancelApp(${r.rentalCode});">승인취소</button></td>
								<td><button onclick="location.href='insertForm.perf?rno=${r.rentalCode}'">Form작성</button></td>
							</c:if>
							
						</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
			
			
			
			
			
			
			
			
			<!------------------------------------------------------------------------------------------------------------>
			
			
			
			
			
			
			
			
			
			
		</div>
		</div>
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
				function nopeApp(i){
					if(confirm("승인을 거부하시겠습니까?")){
						if(confirm("승인거부시 되돌릴 수 없으며 승인 목록에서 사라지게됩니다. \n정말로 거부하시겠습니까?")){
							nopeAppRC(i);
						}else{
							alert("승인거부를 취소합니다.");
						}
						location.reload();
					}else{
						alert("승인거부를 취소합니다.");
					}
				}
				function nopeAppRC(i){
					console.log(i);
					$.ajax({
						url:"nope.perf",
						data: {rcode: i},
						success: function(){
						},
						error: function(){
							console.log("실패");
						}
					})
				}
			</script>
			
			
		<br><br><br><br><br><br><br><br><br>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>