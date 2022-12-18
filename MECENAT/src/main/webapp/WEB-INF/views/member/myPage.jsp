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
</head>
<body>

	<c:if test="${not empty errorMsg}">
		<script type="text/javascript">
			alert("${errorMsg}");
		</script>
	</c:if>
	<h1 style="font-weight:bold; color: white;">${errorMsg}</h1>

	<h1>여기는 마이페이지</h1>
	<jsp:include page="../common/header.jsp"/>
	
	<div>
		<form action="delete.me" method="post">
			<label for="userPwd" class="mr-sm-2">Password : </label>
			<input type="text" class="form-control mb-2 mr-sm-2" placeholder="Enter Password" id="userPwd" name="userPwd"> <br>
			<button type="submit">회원 탈퇴 버튼</button>
		</form>
	
	</div>
	
	
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>