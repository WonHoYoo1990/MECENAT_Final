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
					<h1 align="center" style='color: white'>insertForm</h1>
					<div class="innerOuter" align="center">
						<form id="enrollForm" method="post" action="insert.perf" enctype="multipart/form-data">
							<table style='color: white'>
								<tr>
									<th><label for="title"></label>공연 제목:</th>
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
									<td><input type="number" id="runningTime" class="form-control" name="runningTime" required>
									</textarea>
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

				</div>
			</div>

		</div>




		<!-- Header Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- Header End -->
	</section>
</body>
</html>