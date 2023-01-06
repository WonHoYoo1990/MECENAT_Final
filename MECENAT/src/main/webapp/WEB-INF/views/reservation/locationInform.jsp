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
		padding : 50px;
	}
	
	#informToCome{
		font-size:16px;
		float: right; 

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

<div id="depth_w" class="">
		<div class="inner">
			<ul class="clearfix dot dep1 li4">
				<li class="home">
					<span><span>HOME</span></span>
				</li>
				<li>
					<div class="rel">
					<a href="#"><span>고객센터</span></a>
					<ul class="depth">
						
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
					<a href="#"><span>이용안내</span></a>
					<ul class="depth" style="display: none;">
					<li><a href="/portal/main/contents.do?menuNo=200082"><span>이용안내</span></a></li><li><a href="/portal/singl/faq/list.do?menuNo=200052"><span>고객문의</span></a></li><li><a href="/portal/main/contents.do?menuNo=200091"><span>회원혜택 안내</span></a></li><li><a href="/portal/main/contents.do?menuNo=200085"><span>예매안내</span></a></li><li><a href="/portal/main/contents.do?menuNo=200047"><span>관람예절</span></a></li>
					</ul>
					</div>
				</li>
				
				<li>
					<div class="rel">
					<a href="#"><span>오시는길</span></a>
					<ul class="depth">
					
						<li><a href="/portal/main/contents.do?menuNo=200082"><span>오시는길</span></a></li>
					
						<li><a href="/portal/main/contents.do?menuNo=200049"><span>편의시설</span></a></li>
					
						<li><a href="/portal/main/contents.do?menuNo=200050"><span>장애인해피콜서비스</span></a></li>
					
						<li><a href="/portal/main/contents.do?menuNo=200051"><span>분실물찾기</span></a></li>
					
						</ul>
					</div>
				</li>
				
				<li>
					<div class="rel">
					<a href="#"><span>꿈의숲아트센터</span></a>
					<ul class="depth">
						<li><a href="#"><span>꿈의숲아트센터</span></a></li>
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

		<div class="sub_page">
		
<article class="location">
<style>
#sub_page{background: #f1f1f1;}
/* .tabs-st1,#loc{display: none;} */
</style>
	<div class="tit inner">
		<div class="t">
			<ul class="loc_tabs clearfix">
				<li class="loc1 active"><a href="/portal/main/contents.do?menuNo=200237"><span>서문주차장</span></a></li>
				<li class="loc2"><a href="/portal/main/contents.do?menuNo=200238"><span>동문주차장</span></a></li>
				<li class="loc3"><a href="/portal/main/contents.do?menuNo=200239"><span>대중교통 이용시</span></a></li>
			</ul>
			<dl>
				<dt class="color-navy">서문주차장 <span>위치안내</span></dt>
				<dd class="">서울특별시 강북구 월계로 173 (번동)</dd>
				<dd class="">02-399-1000(오전 9시 ~ 오후 8시) </dd>
				<dd class="link clearfix">
					<p class="bul-mark2 b">꿈의숲 아트센터 주차장은        ‘방문자 센터주차장’과 별개로         운영됩니다</p>
					<a href="http://kko.to/gnEb9psDB" target="_blank" title="새창 열림" class="daum"><span>다음지도로 바로가기</span></a>
					<a href="http://naver.me/5zHdwIRZ" target="_blank" title="새창 열림" class="naver"><span>네이버지도로 바로가기</span></a>
				</dd>
			</dl>
		</div>
		<div class="area loc-map">
			<img src="/resources/img/location/d1_west1.png" alt="꿈의숲 아트센터 서문주차장 지도" style="margin: 0 auto;">
			<a href="#" title="상상톡톡미술관"><img src="/resources/img/location/sub_map_2_201123_03.jpg" alt="상상톡톡미술관 이미지"></a>
			<a href="#" title="라포레스타"><img src="/resources/img/location/sub_map_3_201123_03.jpg" alt="드림갤러리 이미지"></a>
			<a href="#" title="전망대"><img src="/resources/img/location/sub_map_4_201123_03.jpg" alt="전망대 이미지"></a>
			<a href="#" title="퍼포먼스홀"><img src="/resources/img/location/sub_map_5_201123_03.jpg" alt="퍼포먼스홀 이미지"></a>
			<a href="#" title="콘서트홀"><img src="/resources/img/location/sub_map_1_201123_03.jpg" alt="콘서트홀 이미지"></a>
		</div>
	</div>
</article></div>
		

<div class="cont_w inner">
		<ul class="tbl-st2">
			<li class="item">
				<strong class="t">구분</strong>
				<div class="cont">
					<ul class="bul-dot">
						<li><strong>주차위치 :</strong> 북서울꿈의숲 (공원) 서문 주차장 (꿈의숲아트센터 주차장)</li>
						<li><strong>주차규모 :</strong> 총 74대 (일반 35대, 장애인 9대, 여성전용 24대, 전기차전용 2대, 경차전용 4대)</li>
						<li><strong>기본요금 :</strong> 10분당 300원 (2009년 11월 01일부터 적용)</li>
						<li><strong>특이사항</strong>
							<ul class="bul-dash">
								<li>공연 일에는 주차장 이용자가 많으니 가급적 대중교통을 이용해주시기 바랍니다.</li>
								<li>본 주차장은 차량번호를 자동으로 인식하는 무인주차 시스템 방식으로 주차권을 발행하지 않습니다.</li>
								<li>꿈의숲아트센터 주차장은 대형버스 주차가 불가합니다.(정문 방문자 주차장 가능합니다.)</li>
                                                                <li><font color="red"><b>동문(방문자센터) 주차장 이용시 꿈의숲아트센터 관련 각종 주차할인 적용을 받지 못합니다.</b></font></li>
							</ul>
						</li>
					</ul>
				</div>
			</li>
			<li class="item">
				<strong class="t">주차할인</strong>
				
				<div class="tbl clearfix">
					<table>
						<caption>장소, 할인적용 방법, 할인시간으로 구성된 주차할인 안내 테이블</caption>
						<thead>
							<tr>
								<th scope="col" style="width:33.333333%">장소</th>
								<th scope="col" style="width:33.333333%">할인적용 방법</th>
								<th scope="col" style="width:33.333333%">할인시간</th>
							</tr>
							<tr>
								<td>공연장</td>
								<td>공연관람 할인권 제시</td>
								<td>1시간 20분 무료</td>
							</tr>
							<tr>
								<td>상상톡톡 미술관</td>
								<td>미술관관람 할인권 제시</td>
								<td>1시간 20분 무료</td>
							</tr>
						</thead>
					</table>
				
				<div class="cont border">
					<ul class="bul-dot">
						<li>
							<strong>공연관람할인권</strong><br>
							공연관람 할인권은 꿈의숲아트센터 안내데스크에서 공연티켓에 확인 도장을 받으신 후 수령하실 수 있습니다. (차량당 1개)
						</li>
						<li>
							<strong>수령방법</strong><br>
							또한 공연 당일 마지막 공연이 끝나고 10분이 지난 후에는 공연관람 할인권을 받으실 수 없으니 공연시작 전에 미리 공연관람 할인권을 수령하시면 더욱 편안한 공연시간이 되실 수 있습니다.
						</li>
					</ul>
				</div>
				</div>
			</li>
			<li class="item">
				<strong class="t">기타 주차요금 할인  </strong>
				<div class="cont">
					<ul class="bul-dot">
						<li>
							<strong>장애인 및 국가유공자 <strong class="color-gold">80% 할인</strong></strong><br>
							차량에 장애인 및 국가유공자 표지를 차량에 부착하고 복지카드, 국가유공자증서를 소지하고 본인이 탑승한 차량에 한하여 주차요금 할인이 적용되며, 그 외에는 주차요금 할인이 적용되지 않습니다.
						</li>
						<li>
							<strong>경차 <strong class="color-gold">50% 할인</strong></strong> <br>
							경차는 배기량1,000cc 미만으로 길이 3.6m, 너비 1.6m,높이 2.0m 이하인 자동차
						</li>
						<li>
							<strong>승용차 요일제 참여차량 <strong class="color-gold">30% 할인</strong></strong> <br>
							요일제 전자스티커(RFID)를 부착하고 요일제 참여 차량에 한합니다.
						</li>
						<li>
							<strong>기타</strong>
							<ul class="bul-dash">
								<li>기타 주차요금 할인율은 법률 및 조례에 따릅니다.<br> 2개 이상 적용되는 주차요금 감면사유에 해당하는 때에는 그 중 감면율이 높은 하나만 적용합니다.</li>
								<li>주차장에 관한 자세한 내용은 꿈의숲 아트센터 주차관제실<span class="color-gold">(02. 2289. 5478)</span>로 문의해 주시기 바랍니다.</li>
							</ul>
						</li>
					</ul>
				</div>
			</li>
		</ul>
	</div>

		</div>
	</div>

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