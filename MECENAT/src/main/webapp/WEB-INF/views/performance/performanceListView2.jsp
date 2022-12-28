<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Core -->
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!-- XML -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- I18N -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!-- Database -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- Functions -->
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
.list-area {
	width: 1500px;
	margin: auto;
}

.thumbnail {
	border: 1px solid white;
	width: 220px;
	display: inline-block;
	margin: 15px;
}

.thumbnail:hover {
	cursor: pointer;
	opacity: 0.7;
}
</style>



</head>
<body>

	<jsp:include page="../common/header.jsp" />

	<br>
	<br>
	<div class="content" align="center">
		<h1>공연 목록</h1>
		<c:if test="${loginUser.userId eq 'admin2'}">
			<form action="insertForm.perf">
				<input type="submit" value="관리자용: 등록하기">
			</form>

		</c:if>
		<br>
		<br>
		<!-- <h1 align="center"  style='color:white' >테스트 줄</h1> -->
		<div class="list-area">
			<c:forEach var="p" items="${pList}">
				<div class="thumbnail" align="center" >
					<!-- 수정중 -->
					<input type="hidden" value="${p.rentalCode }">
					<c:choose>
						<c:when test="${not empty p.originName}">
							<img src="${p.changeName}" width="150px" height="200px">
						</c:when>
						<c:otherwise>
							<img src="resources/performanceFiles/nocover.png" width="150px"
								height="200px">
						</c:otherwise>
					</c:choose>

					<p>${p.rentalCode } ${p.perfoTitle }</p>
					
					<%-- <c:if test="${loginUser.userId eq 'admin'}"> --%>
					<!-- <button type="button" onclick="deletePerfList()">삭제</button> -->
					<%-- </c:if> --%>

				</div>
			</c:forEach>
		</div>
	</div>
	
	<!-- detail이동하는 script -->
	<script>
		$(function(){
			$(".thumbnail").click(function(){
				location.href="detail.perf?rno="+$(this).children().eq(0).val();
			})
		})
	</script>
	
	
	
	


	<br><br><br><br><br><br><br><br>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>