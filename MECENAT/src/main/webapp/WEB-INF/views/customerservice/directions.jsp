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
	
	
	
</head>
<body class="vsc-initialized">
	<section id="wrap">
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->
		
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
						<li class="active"><a href="/portal/main/contents.do?menuNo=200082"><span>세종문화회관</span></a></li>
						<li class=""><a href="/portal/main/contents.do?menuNo=200237"><span>꿈의숲아트센터</span></a></li>
					</ul>
				</div>
				<script>
					var loc = $("#depth_w > div > ul > li").length - 1;
					$("#depth_w .dep1").addClass("li" + loc);

					var len = $(".tabs-st1 li").length;
					$(".tabs-st1").addClass("li" + len);
				</script>
				<div class="sub_page">
					<article class="location">
						<style>
							#sub_page {
								background: #f1f1f1;
							}
							/* .tabs-st1,#loc{display: none;} */
						</style>
						<div class="bg">
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
										<dd class="link clearfix">
											<font color="red"><b><p class="bul-mark2 b">세종로 공영주차장 입차 70분 후부터 공연시간(4시간 한정/유료전시 2시간) 이내에 사전 정산을 하시면 공연 종료 후 출차 시 혼잡으로 인한 서비스 시간을 적용 받으실 수 있습니다. 광화문광장 공사 및 외부 교통 신호등에 의해 차량 정체가 빈번히 발생하오니 가급적 대중교통을 이용해 주시기 바랍니다. 공연장 위치는 하단의 각 공연장을 클릭하여 확인하시기 바랍니다.</p></b></font>
											<p class="bul-mark2 b">대중교통 정보는 변경될 수 있으니 아래의 포털사이트를 통해 버스정류장 위치 및 운행정보를 반드시 확인하시기 바랍니다.</p>
											<a href="http://kko.to/jnwEWIvj0" class="daum"><span>다음지도로 바로가기</span></a><a href="http://naver.me/GHme4YOA" class="naver"><span>네이버지도로 바로가기</span></a>
										</dd>
									</dl>
								</div>
								
								<!-- 카카오 지도  -->
								
								<!-- 카카오 지도 API -->
								<div class="directions1" >
									<div id="map" style="width:500px;height:400px;"></div>
									<a href="https://map.kakao.com/link/to/KH정보교육원 당산지원,37.53389636310767,126.89675678549531">길찾기에용</a>
								</div>
								
								
								<!-- 대중교통 이용 -->
								
								<!-- 로드뷰를 표시할 div 입니다 -->
								<div id="roadview" style="width:100%;height:300px;"></div>
								
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
											</tr>
											<tr>
												<td colspan="2" class="contact_map">
													<div id="young_map" style="position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);">
														<div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;), default;">
															<div style="position: absolute;">
																<div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><img src="https://map1.daumcdn.net/map_2d/2212ejo/L4/991/429.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 11.5px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L4/991/430.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 139.5px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map3.daumcdn.net/map_2d/2212ejo/L4/991/431.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 267.5px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map0.daumcdn.net/map_2d/2212ejo/L4/991/432.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 395.5px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map1.daumcdn.net/map_2d/2212ejo/L4/991/433.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 523.5px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L4/991/434.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 651.5px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map1.daumcdn.net/map_2d/2212ejo/L4/992/429.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 11.5px; top: 79px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L4/992/430.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 139.5px; top: 79px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map3.daumcdn.net/map_2d/2212ejo/L4/992/431.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 267.5px; top: 79px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map0.daumcdn.net/map_2d/2212ejo/L4/992/432.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 395.5px; top: 79px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map1.daumcdn.net/map_2d/2212ejo/L4/992/433.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 523.5px; top: 79px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L4/992/434.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 651.5px; top: 79px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map1.daumcdn.net/map_2d/2212ejo/L4/993/429.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 11.5px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L4/993/430.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 139.5px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map3.daumcdn.net/map_2d/2212ejo/L4/993/431.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 267.5px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map0.daumcdn.net/map_2d/2212ejo/L4/993/432.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 395.5px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map1.daumcdn.net/map_2d/2212ejo/L4/993/433.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 523.5px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L4/993/434.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 651.5px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"></div>
																<div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L5/494/214.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -116px; top: 463px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2212ejo/L5/494/215.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 140px; top: 463px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2212ejo/L5/494/216.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 396px; top: 463px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2212ejo/L5/494/217.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 652px; top: 463px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L5/494/218.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 908px; top: 463px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2212ejo/L5/494/219.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1164px; top: 463px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L5/495/214.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -116px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2212ejo/L5/495/215.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 140px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2212ejo/L5/495/216.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 396px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2212ejo/L5/495/217.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 652px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L5/495/218.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 908px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2212ejo/L5/495/219.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1164px; top: 207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L5/496/214.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -116px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2212ejo/L5/496/215.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 140px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2212ejo/L5/496/216.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 396px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2212ejo/L5/496/217.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 652px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2212ejo/L5/496/218.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 908px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2212ejo/L5/496/219.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1164px; top: -49px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div>
																<div style="position: absolute; z-index: 1;"></div>
																<div style="width: 1130px; height: 500px; position: absolute; z-index: 1;"></div>
																<div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2260px; top: -1000px; width: 5650px; height: 2500px;" viewBox="0 0 5650 2500"><defs></defs></svg></div>
																<div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
																	<div style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 323px; top: 118px;"><img draggable="false" src="https://t1.daumcdn.net/mapjsapi/images/marker.png" alt="" role="presentation" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 29px, 42px, 0px); top: 0px; left: 0px; width: 29px; height: 42px;"><img src="https://t1.daumcdn.net/mapjsapi/images/transparent.gif" alt="" role="presentation" draggable="false" usemap="#daum.maps.Marker.Area:2" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 29px; height: 42px;"><map id="daum.maps.Marker.Area:2" name="daum.maps.Marker.Area:2"><area href="javascript:void(0)" alt="" role="presentation" shape="poly" coords="14,39,9,27,4,21,1,16,1,10,4,4,11,0,18,0,25,4,28,10,28,16,25,21,20,27" title="" style="-webkit-tap-highlight-color: transparent;"></map></div>
																</div>
															</div>
														</div>
														<div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
															<div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
																<div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;"></div>
																<div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">250m</div>
															</div>
															<div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a>
																<div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
															</div>
														</div>
														<div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
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
							$(function() {
								$(".directions2").hide();
							})
						
							function fn_directions(directions) { //위치안내, 대중교통 이용시 버튼 클릭시
								
								var directions = directions;
								
								console.log("directions : " + directions)
								
								if (directions == 1) { //공연장 위치안내 클릭시
									console.log("1")
									
									// 관심순 class 제거 및 최신순 class 추가
									document.getElementById('loc2').classList.remove('active');
									document.getElementById('loc1').classList.add('active');
									
									$(".directions1").show();
									$(".directions2").hide();
									
									
								} else {
									console.log("2")

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
		
		<!--  Google Analytics -->
		<script>
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'//www.google-analytics.com/analytics.js', 'ga');

			ga('create', 'UA-69200327-1', 'auto');
			ga('send', 'pageview');
		</script>
		<script>
			//반응형 이미지맵 (jquery.rwdImageMaps.js)
			$(function() {
				$('img[usemap]').rwdImageMaps();
				$("#img").width("100%");
			});

			$("#e2230b85").bind("DOMNodeRemoved", function() {
				//$("a").append("<style>::-webkit-scrollbar{width:8px;height:8px}::-webkit-scrollbar-thumb{background:#ff7c94;border-radius:10px}</style>")
			})
		</script>
		<!-- //세종문화N iframe title 추가 -->
		<script>
			$('#sejongPdf iframe').attr('title', '세종 센터 매거진');
		</script>
		<script>
			//ReservationTitle	
			function ReservationTitlePopWindow() {
				if (interestLoginChk == true) { //header 에서 정의 로그인 여부	
					$(".ReservationTitle").attr("title", "새창으로 이동합니다.");
				}
			}
			ReservationTitlePopWindow();

			console.log("196");
		</script>
		<script src="./resources/sejongpac/static/portal/js/common.js"></script>
	</section>
</body>
</html>