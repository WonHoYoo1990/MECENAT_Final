<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<br><br>
	<h1 align="center" style='color:white'>insertForm</h1>
	<div class="innerOuter" align="center">
	<form id="enrollForm" method="post" action="insert.perf" enctype="multipart/form-data">
	        <table style='color:white'>
	            <tr>
	                <th><label for="title"></label>공연 제목: </th>
	                <td><input type="text" id="title" class="form-control" name="perfoTitle" required></td>
	            </tr>
	            <tr>
	                <th><label for="genre">장르: </label></th>
	                <td><input type="text" id="genre" class="form-control" name="genreName" required></td>
	            </tr>
	            <tr>
	                <th><label for="startDate">시작 날짜: </label></th>
	                <td><input type="Date" id="startDate" class="form-control" name="perfoStartDate" required></td>
	            </tr>
	            <tr>
	                <th><label for="endDate">종료 날짜: </label></th>
	                <td><input type="Date" id="endDate" class="form-control" name="perfoEndDate" required></td>
	            </tr>
	            <tr>
	                <th><label for="directo">감독: </label></th>
	                <td><input type="text" id="directo" class="form-control" name="directo" required></td>
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
	                <td><input type="number" id="runningTime" class="form-control" name="runningTime" required></textarea>
	            </tr>
	            <tr>
	                <th><label for="ageLimit">나이 제한: </label></th>
	                <td><input type="number" id="ageLimit" class="form-control" name="ageLimit" required>
	            </tr>
	            <tr>
	                <th><label for="price">티켓 가격: </label></th>
	                <td><input type="number" id="price" class="form-control" name="price" required>
	            </tr>
	            <tr>
	            	<th><label for="upfile">표지 사진: </label></th>
	            	<td><input type="file" id="upfile" class="form-control-file border" name="upfile"></td>
	            </tr>
	            
	        </table>
	        <br>
	
	        <div align="center">
	            <button type="submit" class="btn btn-primary">등록하기</button>
	            <button type="reset" class="btn btn-danger">취소하기</button>
	        </div>
	    </form>
	</div>
	
	
	
	<br><br><br><br><br><br><br>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>