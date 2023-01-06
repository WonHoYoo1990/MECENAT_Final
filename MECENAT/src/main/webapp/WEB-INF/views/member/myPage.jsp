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

<!DOCTYPE html>
<html>
<head>
<title></title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<!--[if lt IE 9]>
<script src="/static/portal/js/html5.js"></script>
<![endif]-->
<style>
		.topContent {
	        background-color:rgb(247, 245, 245);
	        width:80%;
	        margin:auto;
	    }
		.content {
	        background-color:rgb(247, 245, 245);
	        width:80%;
	        margin:auto;
	    }
	    .innerOuter {
	        border:1px solid lightgray;
	        width:80%;
	        margin:auto;
	        padding:5% 10%;
	        background-color:white;
	    }
	    .topInnerOuter{
	    	width:80%;
	        margin:auto;
	        padding:5% 10%;
	    }
</style>
</head>
<body class="hide-focus-ring">
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->
	
	<c:if test="${not empty errorMsg}">
		<script type="text/javascript">
			alert("${errorMsg}");
			<%session.removeAttribute("errorMsg"); %>
		</script>
	</c:if>
	<c:if test="${not empty alertMsg}">
		<script type="text/javascript">
			alert("${alertMsg}");
			<%session.removeAttribute("alertMsg"); %>
		</script>
	</c:if>
	
	<br><br><br>
	<div class="topContent">
		<div class="topInnerOuter" style="font-size:50px">
			<h1>${loginUser.userName }님 환영합니다</h1>
			<a href="updateMemberForm.me" class="btn">회원정보 수정</a> 
		</div>
	</div>
	
	<div class="" >
	
	</div>
	
	<div class="content">
		<br><br>
		<div class="innerOuter" style="padding:5% 10%;">
			<br>
			<p id="title">내 공연 조회</p>
			<br>
			
			<div onchange="searchDateChange();">
				<input type="date" id="myListFirstDate" name="myListFirstDate">
				<input type="date" id="myListLastDate" name="myListLastDate">
			</div>
			
			<br>
			
			<table  class="table table-hover" id="applicationList">
				<thead>
					<tr align="center">
						<th>1</th>
						<th>2</th>
						<th>3</th>
					</tr>
				</thead>
				
				<tbody>
					<tr align="center">
						<td>ㅇㅇ</td>
						<td>ㄴㄴ</td>
						<td>ㅇㅇ</td>
					</tr>
				</tbody>
			</table>
		</div>
		<br><br>
	</div>
	<script>
		var d = new Date();
		var year = d.getFullYear(); // 년
		var month = d.getMonth();   // 월
		var day = d.getDate();      // 일
		
		var dd11 = new Date(year, month, day - 7).toLocaleDateString();
		
		var dd1 = new Date(year,month, day-7);
		
		var year2 = dd1.getFullYear();
		var month2 = dd1.getMonth()+1;
		var day2 = dd1.getDate();
		
		if(month2<10){
			if(day2<10){
				var dd2 = year2 + '-' +0 + month2  + '-' + 0 + day2;
			}else{
				var dd2 = year2 + '-' +0 + month2  + '-' + day;
			}
		}else{
			if(day2<10){
				var dd2 = year2 + '-' + month2  + '-' +0 + day2;
			}else{
				var dd2 = year2 + '-' + month2  + '-' + day2;
			}
		}
		document.getElementById('myListFirstDate').value = dd2;
		document.getElementById('myListLastDate').value = new Date().toISOString().substring(0, 10);
		
		/* onchange하기 전에는 기본값으로 search해오기  */
		
		searchDateChange();//처음에 서칭되는 값은 1주일 전 값
		
		function searchDateChange(){
			/* ajax로 넘어온 날짜 값 대로 search해주기 */
			var FirstDate = document.getElementById('myListFirstDate').value;
			var LastDate = document.getElementById('myListLastDate').value;
			console.log(FirstDate + "~" + LastDate);
			
			/* 아작스로 first, last Date값 서칭해주기 url값이랑  */
			
			$.ajax({
				url: "searchList.perf",
				data: {
					FirstDate:FirstDate,
					LastDate:LastDate
				},
				success : function(){
				},
				error: function(){
					console.log("실패");
				}
			});
		}
		
		
		
	</script>
	

	<br><br><br>
	<!-- footer Section Begin -->
	<jsp:include page="../common/footer.jsp" />
	<!-- footer End -->


</body>
</html>