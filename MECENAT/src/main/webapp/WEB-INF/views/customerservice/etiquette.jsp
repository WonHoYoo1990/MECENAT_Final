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
	<title>관람 예절| 고객센터 |</title>
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
<body class="vsc-initialized hide-focus-ring">
	<section id="wrap">
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End 08-->
		
		<div id="depth_w" class="">
			<div class="inner">
				<ul class="clearfix dot dep1 li2">
					<li class="home">
						<span><span>HOME</span></span>
					</li>
					<li>
						<div class="rel">
						<a href="#"><span>고객센터</span></a>
						<ul class="depth" style="display: none;">
							
							<li><a href="/portal/subMain/perform.do?menuNo=200001">공연·전시·강좌</a>
							
							</li><li><a href="/portal/bbs/B0000002/list.do?menuNo=200012">대관안내</a>
							
							</li><li><a href="/portal/qestnar/qustnr/list.do?status=T&amp;menuNo=200027">참여공간</a>
							
							</li><li><a href="/portal/bbs/B0000001/list.do?menuNo=200042">뉴스·소식</a>
							
							</li><li><a href="/portal/main/contents.do?menuNo=200082">고객센터</a>
							
							</li><li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/main.do" target="_blank" title="새창 열림">서울시예술단</a>
							
						</li></ul>
						</div>
					</li>
					
					<li>
						<div class="rel">
						<a href="#"><span>관람예절</span></a>
						<ul class="depth" style="display: none;">
						<li><a href="/portal/main/contents.do?menuNo=200082"><span>이용안내</span></a></li><li><a href="/portal/singl/faq/list.do?menuNo=200052"><span>고객문의</span></a></li><li><a href="/portal/main/contents.do?menuNo=200091"><span>회원혜택 안내</span></a></li><li><a href="/portal/main/contents.do?menuNo=200085"><span>예매안내</span></a></li><li><a href="/portal/main/contents.do?menuNo=200047"><span>관람예절</span></a></li>
						</ul>
						</div>
					</li>
					
	
				</ul>
			</div>
		</div>
		<script>
			$(window).resize(function(){
				if ( $(window).width() > 1024 ){
					$("#depth_w .rel").hover(function(){
						$(this).closest("#depth_w").addClass("on")
						$(this).find(".depth").show();
					},function(){
						$(this).closest("#depth_w").removeClass("on")
						$(this).find(".depth").hide();
					})
					$("#depth_w .rel > a").focus(function(){
						$(this).closest("#depth_w").addClass("on")
						$(this).next(".depth").show();
					})
					$("#depth_w .depth > li:last-child a").focusout(function(){
						$(this).closest("#depth_w").removeClass("on")
						$("#depth_w .depth").stop(true,true).slideUp(150);
					})
				}else {
					$("#depth_w .rel").click(function(){
						$(this).closest("#depth_w").toggleClass("on")
						$(this).find(".depth").toggle();
					})
				}
			}).resize();
		</script>
		
		
		<div id="cont">
			<div id="sub_page">
				<div class="inner">
					
				</div>
		
				<script>
				var loc = $("#depth_w > div > ul > li").length - 1;
				$("#depth_w .dep1").addClass("li"+loc);
		
				var len = $(".tabs-st1 li").length;
				$(".tabs-st1").addClass("li"+len);
				</script>
		
				<div class="sub_page">
				
		<article class="etq inner">
			<header class="tit">
				<strong class="color-purple">공연관람예절 이것만은 지키자 !! </strong>
				<p>많은 사람들이 모이는 곳, 그 곳이 더군다나 예술작품을 함께 감상해야 하는 장소라면 더군다나 서로 지켜야 할 기본적인 예절을 지켜야 서로의 작품 감상에 방해가 되지 않을 것입니다.</p>
			</header>
			<ul class="clearfix">
				<li class="item clearfix">
					<div class="ico"><img src="/static/portal/img/customer/ee1.gif" alt="01"></div>
					<div class="cont">
						<strong class="t">감상을 방해할 만한 행동</strong>
						<ul class="bul-dot">
							<li>객석 내 음식물 반입 및 섭취 </li>
							<li>공연 중 옆사람과의 대화</li>
							<li>공연 중 서서 관람하는 행위 </li>
							<li>지정석 이외의 자리에 앉는 행위</li>
							<li>음주 후 공연 관람</li>
						</ul>
					</div>
				</li>
				<li class="item clearfix">
					<div class="ico"><img src="/static/portal/img/customer/ee2.gif" alt="02"></div>
					<div class="cont">
						<strong class="t">사진 촬영은 절대 금물</strong>
						<ul class="bul-dot">
							<li>공연 중에는 사전 허가를 받은 전문인만 사진을 촬영 할 수 있습니다. </li>
						</ul>
					</div>
				</li>
				<li class="item clearfix">
					<div class="ico"><img src="/static/portal/img/customer/ee3.gif" alt="03"></div>
					<div class="cont">
						<strong class="t">어린이 동행 시 출입 가능한 나이를
		 사전에 체크하셔야 합니다. </strong>
						<ul class="bul-dot">
							<li>공연 내용에 따라 5세이상, 7세 이상, 12세 이상 관람가능 연령이 나누어져 있으며 관람 연령에 따라 입장이 불가한 경우 어린이 놀이방을 이용하여 주시기 바랍니다. </li>
						</ul>
					</div>
				</li>
				<li class="item clearfix">
					<div class="ico"><img src="/static/portal/img/customer/ee4.gif" alt="04"></div>
					<div class="cont">
						<strong class="t">공연장 도착은 20분전, 
		객석 입장은 10분 전 </strong>
						<ul class="bul-dot">
							<li>원칙적으로 공연 시작 이후 공연장 입장은 금지이나 지연 관객을 위한 입장이 있다면 안내원의 안내에 따라 빈 좌석에 착석하여 주시고 휴식시간에 본 좌석으로 이동하여 주시기 바랍니다.</li>
						</ul>
					</div>
				</li>
				<li class="item clearfix">
					<div class="ico"><img src="/static/portal/img/customer/ee5.gif" alt="05"></div>
					<div class="cont">
						<strong class="t">음식물은 휴게실에서 공연장에선 공연감상만 </strong>
						<ul class="bul-dot">
							<li>모든 일체의 음식물은 공연장 안으로 가져갈 수 없습니다. 
		      자신의 조그만 부주의가 공연자는 물론 객석의 관람자에게도 큰 피해를
		     주어 공연장 분위기를 망칠 수 있는 것을 양해 해 주시고, 음식물은 꼭 
		     드신 후 입장해 주시기 바랍니다. </li>
						</ul>
					</div>
				</li>
				<li class="item clearfix">
					<div class="ico"><img src="/static/portal/img/customer/ee6.gif" alt="06"></div>
					<div class="cont">
						<strong class="t">공연장에서 조심해야 할 물건들 </strong>
						<ul class="bul-dot">
							<li>소리가 많이 나는 비닐제품이나 꽃다발, 음식물 등은 물품보관소에 맡겨주시고, 휴대폰 전원은 종료 후에 입장 해주시기 바랍니다.  </li>
						</ul>
					</div>
				</li>
			</ul>
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