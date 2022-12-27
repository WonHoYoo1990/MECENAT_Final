<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>performanceInsert2</title>

<!-- 인터넷 -->
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/aos.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/bbs_new.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/fonts.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/layout_new.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/main_new.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/pop_all.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/reset.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/responsive_new.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/sitemap.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/slider.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/style.css">
<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/sub.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="./resources/sejongpac/static/commons/js/jquery-3.6.0.min.js"></script>
<script src="./resources/sejongpac/static/commons/js/jquery-ui.1.12.1.min.js"></script>
<script src="./resources/sejongpac/static/portal/js/slider.js"></script>
<script src="./resources/sejongpac/static/ticket/ticket.js"></script>
<link rel="stylesheet" href="./resources/sejongpac/static/portal/css/aos.css">
<script src="./resources/sejongpac/static/portal/inc/netfunnel.js" charset="UTF-8"></script>

</head>
<body class="hide-focus-ring">
	<section id="wrap">
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->

		<div id="cont">
			<div id="sub_page">
				<div class="inner"></div>

				<div class="sub_page">

					<br>
					<br>
					<h1 align="center">insertForm</h1>
					<div class="innerOuter" align="center">
						<form id="enrollForm" method="post" action="insert.perf" enctype="multipart/form-data">
							<table>
					            <tr>
					                <th><label for="title"></label>공연 제목: </th>
					                <td><input type="text" id="title" class="form-control" name="perfoTitle" value="${rList.rentalPropose }" required></td>
					            </tr>
					            <tr>
					                <th><label for="genre">장르: </label></th>
					                <td><input type="text" id="genre" class="form-control" name="genreName" required></td>
					            </tr>
					            <tr>
					               <th><label for="startDate">날짜/시간: </label></th>
					               
					               <td><p id="time"></p></td>
					                
					            </tr>
					            <tr>
					                <th><label for="director">감독: </label></th>
					                <td><input type="text" id="director" class="form-control" name="director" required></td>
					            </tr>
					            <tr>
					                <th><label for="cast">출연진: </label></th>
					                <td><input type="text" id="cast" class="form-control" name="cast" required></td>
					            </tr>
					            <tr>
					                <th><label for="content">내용: </label></th>
					                <td><textarea id="content" class="form-control" name="perfoContent" required></textarea>
					            </tr>
					            <tr>
					                <th><label for="runningTime">러닝타임: </label></th>
					                <td><input type="number" id="runningTime" class="form-control" name="runningTime" required></td>
					            </tr>
					            <tr>
					                <th><label for="ageLimit">나이 제한: </label></th>
					                <td><input type="number" id="ageLimit" class="form-control" name="ageLimit" required>
					            </tr>
					            <tr>
					            	<th><label for="upfile">상태: </label></th>
					            	<!-- <td><input type="String" id="upfile" class="form-control-file border" name="perfoStatus"></td> -->
					            	<td>
					            		<select name="perfoStatus">
					            			<option value="공연예정" selected>공연예정</option>
					            			<option value="공연중">공연중</option>
					            			<option value="공연종료">공연종료</option>
					            		</select>
					            	</td>
					            </tr>
					            <tr>
					                <th><label for="price">티켓 가격: </label></th>
					                <td><input type="number" id="price" class="form-control" name="price" required>
					            </tr>
					            <tr>
					            	<th><label for="upfile">표지 사진: </label></th>
					            	<td><input type="file" id="upfile" class="form-control-file border" name="upfile"></td>
					            </tr>
					            <input type="text" name="rcode" value="${rList.rentalCode }">
					            <input type="hidden" name="eDate" value="${rList. eventDate}">
					            <input type="hidden" name="eTime" value="${rList. eventTime}">
					        </table>
					        <br>

							<div align="center">
								<button type="submit" class="btn btn-primary">등록하기</button>
								<button type="reset" class="btn btn-danger">취소하기</button>
								
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>

		
		<script>
			var eventD="${rList. eventDate}";
			var eventT="${rList. eventTime}";
			
			var arrD = eventD.split(",");
			var arrT = eventT.split(",");
			
			var str1 = "";
			
			var element1 = document.getElementById("time");
			
			for(var i=0; i<arrD.length; i++){
				str1 += arrD[i]+ " / " + arrT[i] + "\n";
				
			}
			element1.innerText = str1;
    	</script>
		
		<script>
			
		</script>
	
		
		
		
		
		
		
		
		<!-- Header Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- Header End -->
	</section>
</body>
</html>