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
    font-size: 16px;
    font-family: 'Noto Sans KR', sans-serif;
    line-height: 1.5;
    color: #111;
    font-weight: 400;
    letter-spacing: -0.03em;
    -webkit-box-sizing: border-box;
    margin: 0;
    padding: 0;
    border: 0;
    display: block;
    width: 100%;
</style>

</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<%-- 
	<h1 align="center">detailForm</h1>

	<div align="center">
		<p>${pList. rentalCode}</p>
		<p>${pList. perfoTitle}</p>
		<p>${pList. genreName}</p>
		<p>${pList. director}</p>
		<p>${pList. cast}</p>
		<p>${pList. perfoContent}</p>
		<p>${pList. startTime}</p>
		<p>${pList. runningTime}</p>
		<p>${pList. ageLimit}</p>
		<p>${pList. price}</p>
		<p>${pList. originName}</p>
		<p>${pList. changeName}</p>
		<p>${pList. eventDate}</p>
		<p>${pList. eventTime}</p>	
		
	</div>
	--%>



	<div id="cont">
		<div id="sub_page">
			<div class="inner"></div>



			<div class="sub_page">
				<article class="bbs-view_schedule">
					<div class="inner">
						<div class="sv_top">
							<div class="in">
								<div class="poster">
									<c:choose>
										<c:when test="${not empty pList.changeName}">
											<img src="${pList.changeName}">
										</c:when>
										<c:otherwise>
											<img src="resources/performanceFiles/nocover.png">
										</c:otherwise>
									</c:choose>
									
									
									
									
								</div>
								<div class="txt">
									<div class="tit">
										<h2 class="t">${pList. perfoTitle}</h2>
									</div>
									<ul class="detail">
										<li><span class="dt">기간</span><p id="date"></p></li>
										<li><span class="dt">장소</span> 세종대극장</li>
										<li><span class="dt">연령</span>${pList. ageLimit}</li>
										<li><span class="dt">티켓</span>${pList. price}</li>
										<li><span class="dt">시간</span><p id="time"></p></li>
										<li><span class="dt">문의</span>KH교육 당산지원 1234-4567</li>
										
									</ul>
									
									
									<div class="schedule_btn2 clearfix mt20">
 										<form action="testrCode.con" method="post">
 											<input type="hidden" value="${pList. rentalCode}" name="rCode">
											<button type="submit" class="btn-st2 bg-yellow">예매하기</button>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="schedule_cont new">
							<ul class="tabs-st4 clearfix li3">
								<li class="active"><a href="#" title="선택됨"><span>작품소개</span></a></li>
								<li><a href="#"><span>할인정보 및 이벤트</span></a></li>
								<li><a href="#"><span>주차·입장안내/취소·환불안내</span></a></li>
							</ul>
							

							<ul class="tab_cont2 w">
							<li class="tab_detail on">
									<div class="editor">
										<p
											style="line-height: 180%; text-align: left; font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; Malgun Gothic&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;"
											malgun="" gothic";="" font-size:="" 16px;="" margin-top:=""
											0px;="" margin-bottom:="" 0px;"="">
										</p>
										<p style="line-height: 180%; text-align: left; font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; Malgun Gothic&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;"
											malgun="" gothic";="" font-size:="" 16px;="" margin-top:=""
											0px;="" margin-bottom:="" 0px;"="">
											<img
												src="https://www.sejongpac.or.kr:443/upload/2022/12/20221214_090656943_29755.jpg" border="0"
												style="width: 950px; height: 4337px; border: 0px solid;"><br>
										</p>
									</div>
								</li>
							</ul>
						</div>
						<!-- //schedule_cont -->
					</div>
					<!-- //inner -->
				</article>
				

			</div>
		</div>

	</div>
	
	<!-- 문자열(date, time)분할->배열에 넣어주는 script -->
	<script>
        
		var eventD="${pList. eventDate}";
		var eventT="${pList. eventTime}";
		
		var arrD = eventD.split(",");
		var arrT = eventT.split(",");
		
		var str1 = "";
		
		var element1 = document.getElementById("time");
		
		for(var i=0; i<arrD.length; i++){
			str1 += arrD[i]+ " / " + arrT[i] + "\n";
		}
		element1.innerText = str1;
		
		var element2 = document.getElementById("date");
		
		if(arrD[0] != arrD[arrD.length-1]){
			element2.innerText = arrD[0] + " ~ " + arrD[arrD.length-1];
		} else{
			element2.innerText = arrD[0];
		}
		
		
    </script>
	
	
	<jsp:include page="../common/footer.jsp" />
	</body>
</html>