<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Core -->
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> <!-- XML -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- I18N -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> <!-- Database -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <!-- Functions -->
<!-- 대관 가능한 공연장 세부내용 소개페이지 + 대관신청 버튼 // 심혜원ing -->
<!DOCTYPE html>
<html lang="zxx">
<title>공연홀 안내</title>

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
	#mapppppp{
		width:100%;
		height:500px;
		padding-top:50px;
	}
	
	#informToCome{
		font-size:16px;
		float: left; 
		width:35%; 
		padding-left:30px;
	}
	.site-a {
		font-weight: 700;
		text-decoration:none;
		color:black;
	}
	.site-a:hover {
		cursor : pointer; 
		text-decoration:default;
		color:default;
	}
	.tabs-st1 > li:before {
    position: absolute;
    left: -1px;
    top: 50%;
    width: 1px;
    height: 1.833em;
    margin-top: -0.918em;
    content: '';
}
</style>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
	<jsp:include page="../common/header.jsp"/>
	<!-- Header End -->

    <!-- Blog Details Section Begin -->
    <secion id="cont" tabindex="0">
	<div id="sub_page">
		<div class="inner">
			<div class="sub-t">
				<h2 class="t">시설소개</h2>
				<div id="loc">
					<ul class="inner dot clearfix">
						<li class="home"><span class="hide">home</span></li>
						<li>시설소개</li>
						
						<li>세종문화회관</li>
						
						<li>세종대극장</li>
						
					</ul>
				</div>
			</div>

			<ul class="tabs-st1 clearfix li2">
				<li style="position: absolute;    left: -1px;
    top: 50%;
    width: 1px;
    height: 1.833em;
    margin-top: -0.918em;
    content: '';"><a href=""><span style="height:50px; background-color:#111111; color:#FFFFFF">Concert Hall</span></a></li>
				<li><a href="information.hl?hallName=Dreaming Hall"><span style="height:50px;">Dreaming Hall</span></a></li>
			</ul>
		</div>
	
	<article class="sub_page">
			
	<div class="f18 facility">
		<div class="cont">
			<div class="bg">
				<ul class="s slick-initialized slick-slider">
					<div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 778px;"><li class="item slick-slide slick-current slick-active" style="background-image: url(&quot;/static/organization/img/facility/1/bg.jpg&quot;); width: 389px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;" data-slick-index="0" aria-hidden="false" role="option" tabindex="-1"><span class="hide">대극장 정면 이미지</span></li><li class="item slick-slide" style="background-image: url(&quot;/static/organization/img/facility/1/bg2.jpg&quot;); width: 389px; position: relative; left: -389px; top: 0px; z-index: 998; opacity: 0;" data-slick-index="1" aria-hidden="true" role="option" tabindex="-1"><span class="hide">대극장 측면 이미지</span></li></div></div>
					
				</ul>
				<div class="in inner">				
					<h4 class="tit-st2">꿈의숲아트센터 <strong class="color-purple">${hallName} 콘서트홀</strong>은</h4>
					<p>음악회 전문 공연장으로 최대 잔향시간을 확보하였으며 적정 확산-반사 마감으로 음향의 왜곡과 장애를 제어하여 어쿠스틱 음악회에 가장 걸맞은 명료하고 음악성이 풍부한 음향 공간이 형성되어 있습니다. 또한 음향 반사판의 높이와 각도 변형으로 다양한 음을 조절할 수 있으며, 음향 사석이 없는 홀이기도 합니다. 특히 무대 뒤편 천창이 있어 자연 속에 위치한 공연장의 풍부한 감성과 여유를 느낄 수 있습니다</p>
				</div>
				<div class="in inner">						
					<img src="resources/img/reserve/concerthall_info.jpg" style="width:80%; height:auto;"/>
					<h4 class="t">모든 장르의 공연을 담아낼 수 있는 <strong class="color-purple">종합 예술 공간</strong>입니다. </h4>
					<p>세종대극장은 첨단 시설을 갖춘 세계적 수준의 공연장으로 1, 2, 3층에 걸쳐 3,022석의 객석을 갖추고 있으며 1, 2층 객석의자와 3층 벽면에 부착된 국내 유일의 LCD 모니터를 통해 공연자막과 동영상 서비스를 제공하고 있습니다. 특히 최신 음향 장치를 설치하여 객석 구석구석까지 소리가 잘 전달되는 탁월한 음향 수준을 구현했습니다. 또한 무대 전환을 도와주는 배튼이 총 102개로 전환 속도가 빨라 역동적인 무대를 만들어 낼 수 있습니다. 클래식뿐만 아니라 다양한 장르를 소화해 낼 수  있는 다목적홀로 해외 유명 연주자들도 찬사를 보내는 세계적 수준의 공연장입니다.</p>
					<div class="btn clearfix">
<!-- 							<a href="/portal/main/contents.do?menuNo=200119" target="_blank" title="새창 열림" class="btn-down2 long">대관 무대기술자료 다운로드</a> -->
					</div>
				</div>
			</div>
	
			<div class="group_w inner">
				<ul class="group clearfix com_s">
					<li class="img l">
						<ul class="s1 slick-initialized slick-slider">
							<div aria-live="polite" class="slick-list draggable">
								<div class="slick-track" style="opacity: 1; width: 1388px; height:195px; transform: translate3d(-347px, 0px, 0px);">
									<li class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 347px; height:195px;">
										<img src="resources/img/reserve/concerthall_info2.jpg" alt="대극장 기둥 밤사진" style=" height:195px;">
									</li>
									<li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" role="option" tabindex="-1" style="width: 347px;">
										<img src="resources/img/reserve/concerthall_info3.jpg" alt="대극장 기둥 낮사진">
									</li>
									<li class="slick-slide" data-slick-index="1" aria-hidden="true" role="option" tabindex="-1" style="width: 347px; height:100%;">
										<img src="resources/img/reserve/concerthall_info4.jpg" alt="대극장 기둥 밤사진">
									</li>
									<li class="slick-slide slick-cloned" data-slick-index="2" aria-hidden="true" tabindex="-1" style="width: 347px;">
										<img src="resources/img/reserve/concerthall_info5.jpg" alt="대극장 기둥 낮사진" >
									</li>
								</div>
							</div>
							
					</li>
					<li class="txt r">
						<strong class="t">비천상</strong>
						<p>세종대극장 전면 기둥 좌우 벽면에 위치하고 있는 부조작품인 비천상은 김영중이 1년 3개월에 거쳐 만든 작품입니다. 1978년 세종문화회관의 개관과 함께 일반인에 선보인 이 작품은, 전체 높이 11m, 폭은 6.75m, 부조의 두께는 45cm이며, 90cm X 70cm X 45cm짜리 화강석 324조각을 붙여서 완성하였습니다. <br><br>비천상은 세종문화회관이 고전을 현대화한 양식으로 설계되었다는 점에서 건물과 가장 잘 어울리는 예술작품이라고 평가 받고 있습니다. 
						</p>
					</li>
				</ul>

			<div id="mapppppp">
			<h4>${hallName} 찾아오시는 길</h4><br>
			<div>
			<!-- * 카카오맵 - 지도퍼가기 -->
				<!-- 1. 지도 노드 -->
				<div id="daumRoughmapContainer1672928582695" class="root_daum_roughmap root_daum_roughmap_landing" align="right" style="width:65%; float: left;">
				</div>
				<div id="informToCome" align="left">
					<table>
						<tr>
							<th>지하철 이용시</th>
						</tr>
						<tr>
							<td>4호선 미아사거리역 하차 후 버스 환승</td>
						</tr>
						<tr>
							<th>버스 이용시</th>
						</tr>
						<tr>
							<td>1124, 강북05 하차시 도보 5분</td>
						</tr>
						<tr>
							<td>100, 111, 147, N51(심야), 6011, 강북09, 강북11, 성북14-1 하차시 꿈의 숲 정문하차 도보 15분</td>
						</tr>
						<tr>
							<th>자가용 이용시&nbsp;&nbsp;<a href="howToCome.hl" style="color:blue; font-weight:bold; text-decoration-line:none;">자세히 알아보기</a></th>
						</tr>
					</table>
				</div>
				</div>
			</div>
			<div style="width:100%;height:500px;">
			<h4>${hallName} 꿈의숲 내부위치 안내</h4>
				<div id="inner_map" style="width:100%;height:500px;" align="left">
				<img alt="위치 이미지" src="resources/img/reserve/concertHallMap.jpg" style="width:80%;height:auto;">
				</div>
				
				<h3>${hallName}에서 새로운 작품으로 감동을 선사할 아티스트이신가요? &nbsp; <a href="application.rv?hallName=${hallName}" id="site-a">Book a ${hallName}</a></h3>			
			</div>
			</div>	
			</div>
		</div><!-- .facility -->
		</article>
	
		</div><!-- #sub_page -->


				<!--
					2. 설치 스크립트
					* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
				-->
				<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
				
				<!-- 3. 실행 스크립트 -->
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1672928582695",
						"key" : "2dbaa",
						"mapWidth" : "600",
						"mapHeight" : "360"
					}).render();
				</script>
	<!--  Google Analytics -->
	<script type="text/javascript">
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	
	  ga('create', 'UA-69200327-1', 'auto');
	  ga('send', 'pageview');
	
	</script>
		<script src="/static/organization/js/common.js"></script>
	
	</secion>
       
         <!-- footer Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- footer End -->
		<script src="./resources/sejongpac/static/portal/js/common.js"></script>
		
        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/player.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

    </body>

    </html>