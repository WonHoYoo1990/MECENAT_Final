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
	<title>공연장 위치 | MECENAT |</title>
	<!-- 인터넷 -->
	<link rel="apple-touch-icon" sizes="180x180" href="/static/commons/img/favicon_180.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/static/commons/img/favicon_32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/static/commons/img/favicon_16.png">

	<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/style.css">
	<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/layout_new.css">
	<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/sub_new.css">
	<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/bbs_new.css">
	<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/responsive_new.css">
	<link rel="stylesheet" type="text/css" href="./resources/sejongpac/static/portal/css/pop_all.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script async="" src="//www.google-analytics.com/analytics.js"></script>
	<script src="./resources/sejongpac/static/commons/js/jquery-3.6.0.min.js"></script>
	<script src="./resources/sejongpac/static/commons/js/jquery-ui.1.12.1.min.js"></script>
	<script src="./resources/sejongpac/static/portal/js/slider.js"></script>
	
	<!-- 카카오 지도API  -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b5f1ae6395582aedbeea93a4779638a"></script>
	<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b5f1ae6395582aedbeea93a4779638a&libraries=services,clusterer,drawing"></script>
	

		
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
	<!-- Popper JS -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	
	
	
	
</head>
<body class="vsc-initialized">
	<section id="wrap">
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End 06-->
		
		<div id="depth_w" class="">
			<div class="inner">
				<ul class="clearfix dot dep1 li4">
					<li class="home"><span><span>HOME</span></span></li>
					<li>
						<div class="rel">
							<a href="#"><span>고객센터</span></a>
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
							<a href="#"><span>이용안내</span></a>
							<ul class="depth" style="display: none;">
								<li><a href="/portal/main/contents.do?menuNo=200082"><span>이용안내</span></a></li>
								<li><a href="/portal/singl/faq/list.do?menuNo=200052"><span>고객문의</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200091"><span>회원혜택 안내</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200085"><span>예매안내</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200047"><span>관람예절</span></a></li>
							</ul>
						</div>
					</li>
					<li>
						<div class="rel">
							<a href="#"><span>오시는길</span></a>
							<ul class="depth" style="display: none;">
								<li><a href="/portal/main/contents.do?menuNo=200082"><span>오시는길</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200049"><span>편의시설</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200050"><span>장애인해피콜서비스</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200051"><span>분실물찾기</span></a></li>
							</ul>
						</div>
					</li>
					<li>
						<div class="rel">
							<a href="#"><span>세종문화회관</span></a>
							<ul class="depth" style="display: none;">
								<li><a href="/portal/main/contents.do?menuNo=200082"><span>세종문화회관</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200237"><span>꿈의숲아트센터</span></a></li>
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
				<div class="inner">
					<ul class="tabs-st1 clearfix li2">
						<a href="#" style="background-color: #0e0e71;" onclick="return false;"><span><b style="font-size: 50px; color: white;">MECENAT</b></span></a>
					</ul>
				</div>
				
				<div class="sub_page">
					<article class="location">
						<style>
							#sub_page {
								background: #f1f1f1;
							}
							/* .tabs-st1,#loc{display: none;} */
						</style>
						<div class="bg" align="center">
							<div class="tit inner">
								<div class="t">
								
									<ul class="loc_tabs clearfix">
										<li class="loc1 active" id="loc1" onclick="fn_directions('1');" style="height: 60px;"><span style="font-size:x-large; font-weight: bold; line-height: 60px;">공연장 위치안내</span></li>
										<li class="loc2" id="loc2" onclick="fn_directions('2');" style="height: 60px;"><span style="font-size:x-large; font-weight: bold; line-height: 60px;">대중교통 이용시</span></li>
									</ul>
									
									<dl>
										<dt class="color-navy">공연장 <span>위치안내</span></dt>
										<dd class="add">서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F, 20F</dd>
										<dd class="tel">T: 1544-9970 / F: 02-2163-8560</dd>
									</dl>
								</div>
								
								<!-- 카카오 지도  -->
								
								<!-- 카카오 지도 API -->
								<div class="directions1" >
									<div id="map" style="width:yy00px;height:400px;"></div> <br>
									<button type="button" class="btn btn-warning" onclick="location.href = 'http://kko.to/MwZ_5Yf9cK';">다음지도로 바로가기</button>
									<button type="button" class="btn btn-success" onclick="location.href = 'https://naver.me/F8KbXAzo';">네이버지도로 바로가기</button>
								</div>
								
								
								<!-- 대중교통 이용 -->
								<div class="directions2">
									<table class="contact" cellpadding="0" cellspacing="0" style="display: table;">
										<tbody>
											<tr style="border-bottom: 1px solid #E0E0E0;">
												<th style="border-top:1px solid #222; width: 200px; padding-left: 9%;">주소</th>
												<td style="border-top:1px solid #222; "> 서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F, 20F (T: 1544-9970 / F: 02-2163-8560)</td>
											</tr>
											<tr colspan="2" style="border-bottom: 1px solid #E0E0E0;">
												<th style="width: 200px; padding-left: 9%;">버스</th>
												<td class="young_bus"> - 선유고등학교/(구)강서세무서 -
													<div class="young_01">
														<img src="/mecenat/resources/sejongpac/static/portal/img/customer/sub01_06_busB.jpg" alt="지선">7612  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<img src="/mecenat/resources/sejongpac/static/portal/img/customer/sub01_06_busR.jpg" alt="간선">1000 / 1200 / 1300 / 1301 / 1302 / 1400 / 1500 / 1601 / M6628 / M6724
													</div> - 당산역 -
													<div class="young_02">
														<img src="/mecenat/resources/sejongpac/static/portal/img/customer/sub01_06_busB.jpg" alt="지선">602 / 760 / 5620 / 5714 / 6514 / 6623 / 6631
													</div>
												</td>
											</tr>
											<tr>
												<th style="border-bottom:1px solid #222; width: 200px; padding-left: 8%;">지하철</th>
												<td style="border-bottom:1px solid #222">지하철 2, 9호선 당산역 12번 출구 400m</td>
												<td>
													<div class="directions2" >
														
													</div>
												</td>
											</tr>
										</tbody>
									</table> 
									<br>
									<button type="button" class="btn btn-primary" onclick="location.href = 'https://map.kakao.com/link/to/KH정보교육원 당산지원,37.53389636310767,126.89675678549531';">길찾기 바로가기</button>
								</div>
							</div>
						</div>
						<script>
							//카카오 지도 API
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						    mapOption = { 
						        center: new kakao.maps.LatLng(37.53389636310767,126.89675678549531), // 지도의 중심좌표
						        level: 2 // 지도의 확대 레벨
						    };
	
							var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
							// 마커가 표시될 위치입니다 
							var markerPosition  = new kakao.maps.LatLng(37.53399638410767,126.89675678549531); 
		
							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
							    position: markerPosition
							});
		
							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);
		
							// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
							// marker.setMap(null); 
						</script>
						
						<script type="text/javascript">
							$(()=>{$(".directions2").hide();})
						
							function fn_directions(directions) { //위치안내, 대중교통 이용시 버튼 클릭시
								
								var directions = directions;
								
								if (directions == 1) { //공연장 위치안내 클릭시
									console.log("1")
									
									// 관심순 class 제거 및 최신순 class 추가
									document.getElementById('loc2').classList.remove('active');
									document.getElementById('loc1').classList.add('active');
									
									$(".directions1").show();
									$(".directions2").hide();
								} else {
									// 관심순 class 제거 및 최신순 class 추가
									document.getElementById('loc1').classList.remove('active');
									document.getElementById('loc2').classList.add('active');

									$(".directions2").show();
									$(".directions1").hide();
								}
							}
						</script>
					</article>
				</div>
			</div>
		</div>
		
		<!-- footer Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- footer End -->
	</section>
</body>
</html> 