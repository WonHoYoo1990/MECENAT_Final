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
<title>setInfom</title>

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
		<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>

		<div id="depth_w" class="">
			<div class="inner">
				<ul class="clearfix dot dep1 li3">
					<li class="home"><span><span>HOME</span></span></li>
					<li>
						<div class="rel">
							<a href="#"><span>공연·전시·강좌</span></a>
							<ul class="depth" style="display: none;">

								<li><a href="/portal/subMain/perform.do?menuNo=200001">공연·전시·강좌</a></li>
								<li><a href="/portal/bbs/B0000002/list.do?menuNo=200012">대관안내</a></li>
								<li><a href="/portal/qestnar/qustnr/list.do?status=T&amp;menuNo=200027">참여공간</a></li>
								<li><a href="/portal/bbs/B0000001/list.do?menuNo=200042">뉴스·소식</a></li>
								<li><a href="/portal/main/contents.do?menuNo=200082">고객센터</a></li>
								<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/main.do" target="_blank" title="새창 열림">서울시예술단</a></li>
							</ul>
						</div>
				</li>

					<li>
						<div class="rel">
							<a href="#"><span>좌석배치도</span></a>
							<ul class="depth" style="display: none;">
								<li><a href="/portal/bbs/B0000033/list.do?menuNo=200003"><span>세종시즌</span></a></li>
								<li><a href="/portal/performance/performance/performList.do?menuNo=200004"><span>공연일정</span></a></li>
								<li><a href="/portal/performance/performance/performList.do?searchPackage=P&amp;menuNo=200214"><span>패키지</span></a></li>
								<li><a href="/portal/performance/exhibit/performList.do?menuNo=200005"><span>전시일정</span></a></li>
								<li><a href="http://academy.sejongpac.or.kr/academy/singl/academyProgram/list.do?menuNo=800003" target="_blank" title="새창 열림"><span>강좌일정</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200094"><span>좌석배치도</span></a></li>
							</ul>
						</div>
				</li>

					<li>
						<div class="rel">
							<a href="#"><span>세종대극장</span></a>
							<ul class="depth" style="display: none;">

								<li><a href="/portal/main/contents.do?menuNo=200094"><span>세종대극장</span></a></li>

								<li><a href="/portal/main/contents.do?menuNo=200095"><span>세종M씨어터</span></a></li>

								<li><a href="/portal/main/contents.do?menuNo=200096"><span>세종 체임버홀</span></a></li>

								<li><a href="https://www.sejongpac.or.kr/upload/vr/vr2/tour.html" target="_blank" title="새창 열림"><span>세종S씨어터</span></a></li>

								<li><a href="/portal/main/contents.do?menuNo=200221"><span>꿈의숲 퍼포먼스홀</span></a></li>

								<li><a href="/portal/main/contents.do?menuNo=200224"><span>꿈의숲 콘서트홀</span></a></li>

							</ul>
						</div>
				</li>


				</ul>
			</div>
		</div>
		<script>
			$(window).resize(function() {
				if ($(window).width() > 1024) {
					$("#depth_w .rel").hover(function() {
						$(this).closest("#depth_w").addClass("on")
						$(this).find(".depth").show();
					}, function() {
						$(this).closest("#depth_w").removeClass("on")
						$(this).find(".depth").hide();
					})
					$("#depth_w .rel > a").focus(function() {
						$(this).closest("#depth_w").addClass("on")
						$(this).next(".depth").show();
					})
					$("#depth_w .depth > li:last-child a").focusout(function() {
						$(this).closest("#depth_w").removeClass("on")
						$("#depth_w .depth").stop(true, true).slideUp(150);
					})
				} else {
					$("#depth_w .rel").click(function() {
						$(this).closest("#depth_w").toggleClass("on")
						$(this).find(".depth").toggle();
					})
				}
			}).resize();
		</script>
		<div id="cont">
			<div id="sub_page">
				<div class="inner"></div>

				<script>
					var loc = $("#depth_w > div > ul > li").length - 1;
					$("#depth_w .dep1").addClass("li" + loc);

					var len = $(".tabs-st1 li").length;
					$(".tabs-st1").addClass("li" + len);
				</script>

				<div class="sub_page">


					<br>
					<br>
					<div class="content">
						<h1 align="center">공연 목록</h1>
						<!-- <form action="insertForm.perf" align="center"> -->
							<input type="submit" value="관리자용: 등록하기">
						<!-- </form> -->
						<br>
						<br>

						<table id="performanceList" align="center" border="1px">
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
										<td><c:choose>
												<c:when test="${not empty p.originName}">
													<img src="${p.changeName}" width="150px" height="200px">
													<%-- <a href="${p.changeName}" download="${p.originName}">${p.originName}</a> --%>
												</c:when>
												<c:otherwise>
													<img src="resources/performanceFiles/nocover.png" } width="150px" height="200px">
												</c:otherwise>
											</c:choose></td>
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


					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>


				</div>

			</div>




			<!-- Header Section Begin -->
			<jsp:include page="../common/footer.jsp" />
			<!-- Header End -->
	</section>
</body>
</html>