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
	
	<style>
		.sit {
			background-color: black;
			height: 26px;
			width: 32px;
			margin: 3px;
			font-size: 50px;
			border-top-left-radius: 10px;
			border-top-right-radius: 10px;
		}
		
		.sit.sold {
			background-color: lightgray;
		}
		
		.sit:nth-of-type(6) {
			margin-right: 18px;
		}
		
		.sit:nth-last-of-type(6) {
			margin-left: 18px;
		}
		
		.row {
			display: flex;
			margin: 0px 15px;
		}
		
		.circle {
			width: 100px;
			height: 100px;
			display: inline-block;
			background-color: #ccc;
			border: 0px solid #ccc;
			border-radius: 50px;
			line-height: 100px;
			color: #fff;
		}
	</style>
</head>
<body class="hide-focus-ring">
	<section id="wrap">
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->
		
		<div id="cont">
			<div id="sub_page" style="padding-left: 25%">
				<div class="inner"></div>
				<script>
					var loc = $("#depth_w > div > ul > li").length - 1;
					$("#depth_w .dep1").addClass("li" + loc);

					var len = $(".tabs-st1 li").length;
					$(".tabs-st1").addClass("li" + len);
				</script>
				<div class="sub_page">
					<link rel="stylesheet" type="text/css" href="/static/portal/css/seat.css">
					<article class="seat inner">
						<h3 class="tit f24">MECENAT극장</h3>
						<p class="txt f18">MECENAT 공연장의 좌석배치도입니다. 관람을 원하시는 공연장의 좌석을 선택하시면 해당 구역의 무대 시각선을 확인 하실 수 있습니다.</p>
						<div class="rel">
							<div class="seats ie7s">
								<button class="circle" id="show1">A홀</button>
								<button class="circle" id="show2">B홀</button>
								<ol class="floorList">
									<li class="active">
										<div class="seatThumb box">
											<!-- A관좌석 -->
											<div class="a" id="a">
												<c:forEach begin="1" end="2">
													<div class="row">
														<c:forEach begin="1" end="22">
															<div class="sit sold"></div>
														</c:forEach>
													</div>
												</c:forEach>
												<div class="row">
													<c:forEach begin="1" end="11">
														<div class="sit sold"></div>
													</c:forEach>
													<div class="sit" id="a12"></div>
													<c:forEach begin="1" end="10">
														<div class="sit sold"></div>
													</c:forEach>
												</div>
												<div class="row">
													<c:forEach begin="1" end="4">
														<div class="sit sold"></div>
													</c:forEach>
													<div class="sit" id="a5"></div>
													<c:forEach begin="1" end="17">
														<div class="sit sold"></div>
													</c:forEach>
												</div>
												<c:forEach begin="1" end="2">
													<div class="row">
														<c:forEach begin="1" end="22">
															<div class="sit sold"></div>
														</c:forEach>
													</div>
												</c:forEach>
												<div class="row">
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit" id="a11"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit" id="a20"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
												</div>
												<c:forEach begin="1" end="2">
													<div class="row">
														<c:forEach begin="1" end="22">
															<div class="sit sold"></div>
														</c:forEach>
													</div>
												</c:forEach>
												<div class="row">
													<div class="sit sold"></div>
													<div class="sit" id="a2"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit" id="a7"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit" id="a16"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
												</div>
												<c:forEach begin="1" end="2">
													<div class="row">
														<c:forEach begin="1" end="22">
															<div class="sit sold"></div>
														</c:forEach>
													</div>
												</c:forEach>
												<div class="row">
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit" id="a17"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
												</div>
											</div>
											<!-------------------------------------------절취선------------------------------------------->
											<!-- B관좌석 -->
											<div class="b" id="b" style="display: none;">
												<c:forEach begin="1" end="2">
													<div class="row">
														<c:forEach begin="1" end="22">
															<div class="sit sold"></div>
														</c:forEach>
													</div>
												</c:forEach>
												<div class="row">
													<c:forEach begin="1" end="10">
														<div class="sit sold"></div>
													</c:forEach>
													<div class="sit" id="b11"></div>
													<c:forEach begin="1" end="11">
														<div class="sit sold"></div>
													</c:forEach>
												</div>
												<div class="row">
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit" id="b5"></div>
													<c:forEach begin="1" end="17">
														<div class="sit sold"></div>
													</c:forEach>
												</div>
												<c:forEach begin="1" end="2">
													<div class="row">
														<c:forEach begin="1" end="22">
															<div class="sit sold"></div>
														</c:forEach>
													</div>
												</c:forEach>
												<div class="row">
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit" id="b9"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit" id="b18"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
												</div>
												<div class="row">
													<c:forEach begin="1" end="22">
														<div class="sit sold"></div>
													</c:forEach>
												</div>
												<div class="row">
													<div class="sit sold"></div>
													<div class="sit" id="b2"></div>
													<c:forEach begin="1" end="20">
														<div class="sit sold"></div>
													</c:forEach>
												</div>
												<div class="row">
													<c:forEach begin="1" end="22">
														<div class="sit sold"></div>
													</c:forEach>
												</div>
												<div class="row">
													<c:forEach begin="1" end="21">
														<div class="sit sold"></div>
													</c:forEach>
													<div class="sit" id="b20"></div>
												</div>
												<div class="row">
													<c:forEach begin="1" end="14">
														<div class="sit sold"></div>
													</c:forEach>
													<div class="sit" id="b13"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
												</div>
												<div class="row">
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<div class="sit" id="b4"></div>
													<c:forEach begin="1" end="18">
														<div class="sit sold"></div>
													</c:forEach>
												</div>
												<c:forEach begin="1" end="2">
													<div class="row">
														<c:forEach begin="1" end="22">
															<div class="sit sold"></div>
														</c:forEach>
													</div>
												</c:forEach>
												<div class="row">
													<div class="sit sold"></div>
													<div class="sit sold"></div>
													<c:forEach begin="1" end="18">
														<div class="sit sold" style="visibility: hidden;"></div>
													</c:forEach>
													<div class="sit sold"></div>
													<div class="sit sold"></div>
												</div>
											</div>
											<div class="img" style="padding-left: 11%">
												<img id="img" alt="" src="./resources/img/seat/a7.png">
											</div>
										</div>
									</li>
								</ol>
							</div>
						</div>
					</article>
					<script src="/static/portal/js/seat.js"></script>
				</div>
			</div>
		</div>
		<script>
			$(function() {
				$("#show1").on("click",function() {
					this.style.backgroundColor = "gray";
					document.getElementById("show2").style.backgroundColor = "lightgray";

					$("#b").hide();
					$("#a").show();
				})

				$("#show2").on("click",function() {
					this.style.backgroundColor = "gray";
					document.getElementById("show1").style.backgroundColor = "lightgray";

					$("#a").hide();
					$("#b").show();
				})
				
				$("#a11").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/a11.png";
				})
				$("#a12").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/a12.png";
				})
				$("#a16").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/a16.png";
				})
				$("#a17").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/a17.png";
				})
				$("#a2").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/a2.png";
				})
				$("#a20").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/a20.png";
				})
				$("#a5").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/a5.png";
				})
				$("#a7").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/a7.png";
				})

				$("#b11").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/11.png";
				})
				$("#b5").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/5.png";
				})
				$("#b9").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/9.png";
				})
				$("#b18").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/18.png";
				})
				$("#b2").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/2.png";
				})
				$("#b20").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/20.png";
				})
				$("#b13").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/13.png";
				})
				$("#b4").css("cursor", "pointer").on("click",function() {
					document.getElementById("img").src = "./resources/img/seat/4.png";
				})
			})
		</script>
		
		<!-- footer Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- footer End -->
		<script src="./resources/sejongpac/static/portal/js/common.js"></script>
	</section>
</body>
</html>