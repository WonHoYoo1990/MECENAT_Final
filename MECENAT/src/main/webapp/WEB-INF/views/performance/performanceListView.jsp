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
	<h1 align="center" style='color:white'>공연 목록</h1>
		<form action="insertForm.perf" align="center">
			<input type="submit" value="관리자용: 등록하기">
		</form>
		<br><br>
		
		<table id="performanceList" align="center"  style='color:white' align="center" border="1px">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>장르</th>
					<th>시작날짜</th>
					<th>끝날짜</th>
					<th>김독</th>
					<th>출연진</th>
					<th>내용</th>
					<th>러닝타임</th>
					<th>리밋나이</th>
					<th>가격</th>
					<th>첨부파일</th>
				</tr>
			</thead>
			
			<tbody>
				
				<c:forEach var="p" items="${pList}">
					<tr>
						<td>${p.perfoNo }</td>
						<td>${p.perfoTitle }</td>
						<td>${p.genreName }</td>
						<td>${p.perfoStartDate }</td>
						<td>${p.perfoEndDate }</td>
						<td>${p.directo }</td>
						<td>${p.cast }</td>
						<td>${p.perfoContent }</td>
						<td>${p.runningTime }</td>
						<td>${p.ageLimit }</td>
						<td>${p.price }</td>
						<td>
							<c:choose>
								<c:when test="${not empty p.originName}">
									<img src="${p.changeName}" width="150px" height="200px">
									<%-- <a href="${p.changeName}" download="${p.originName}">${p.originName}</a> --%>
								</c:when>
								<c:otherwise>
									<img src="resources/performanceFiles/nocover.png" } width="150px" height="200px">
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					
					<tr>
			           	<th></th>
						<td><button type="button" onclick="deletePerfList()">삭제</button></td>
					</tr>
						
				
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<script>
		$(function(){
			deletePerfList();
		});
		
		function deletePerfList(){
			$.ajax({
				url:"delete.perf",
				data: {pno: ${perfoNo}},
				success: function(){
					console.log("통신 성공");
				},
				error: function(){
					console.log("통신 실패");
				}
			})
		}
		
	</script>
	
	
	<br><br><br><br><br><br><br>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>