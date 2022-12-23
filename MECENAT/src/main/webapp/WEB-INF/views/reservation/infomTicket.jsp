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
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width">
	<meta name="google-signin-client_id" content="113025989816-nnav0npepl2lv7h086hhmrekli0bk1tt.apps.googleusercontent.com">
	<meta property="og:title" content="MECENAT">
	<title>티켓 구입방법 | 예매안내 |</title>
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
		body.hide-focus-ring *:focus {
			outline: none !important;
		}
	</style>
</head>
<body class="vsc-initialized">
	<section id="wrap">
	
		<dl class="accessibilityWrap">
			<dt class="hide"><strong>바로가기 메뉴</strong></dt>
			<dd><a href="#cont">본문 바로가기</a></dd>
			<dd><a href="#top_nav">주메뉴 바로가기</a></dd>
		</dl>
		
		<span itemscope="" itemtype="http://schema.org/Organization" style="display: none;">
			<link itemprop="url" href="https://www.sejongpac.or.kr">
			<a itemprop="sameAs" href="https://www.youtube.com/channel/UCCqaPJqI5q1kfO51qWWOjrQ"><span class="hide">유튜브</span></a>
			<a itemprop="sameAs" href="https://www.instagram.com/sejongcenter/"><span class="hide">인스타그램</span></a>
			<a itemprop="sameAs" href="https://www.facebook.com/sjcenter"><span class="hide">페이스북</span></a>
			<a itemprop="sameAs" href="https://blog.naver.com/sejongnanum"><span class="hide">블로그</span></a>
			<a itemprop="sameAs" href="https://twitter.com/SEJONG_CENTER"><span class="hide">트위터</span></a>
		</span>
		<script src="/static/portal/js/ksearch/top_apc.js"></script>
		<script src="/static/portal/js/jquery.rwdImageMaps.js"></script>
		<div id="seoul-common-gnb"></div>
	
	
	
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->
		
		<div id="depth_w" class="">
				<div class="inner">
					<ul class="clearfix dot dep1 li3">
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
							<a href="#"><span>예매안내</span></a>
							<ul class="depth">
							<li><a href="/portal/main/contents.do?menuNo=200082"><span>이용안내</span></a></li><li><a href="/portal/singl/faq/list.do?menuNo=200052"><span>고객문의</span></a></li><li><a href="/portal/main/contents.do?menuNo=200091"><span>회원혜택 안내</span></a></li><li><a href="/portal/main/contents.do?menuNo=200085"><span>예매안내</span></a></li><li><a href="/portal/main/contents.do?menuNo=200047"><span>관람예절</span></a></li>
							</ul>
							</div>
						</li>
						
						<li>
							<div class="rel">
							<a href="#"><span>티켓 구입방법</span></a>
							<ul class="depth" style="display: none;">
							
								<li><a href="/portal/main/contents.do?menuNo=200085"><span>티켓 구입방법</span></a></li>
							
								<li><a href="/portal/main/contents.do?menuNo=200222"><span>티켓 수령방법</span></a></li>
							
								<li><a href="/portal/main/contents.do?menuNo=200087"><span>예매 취소, 변경안내</span></a></li>
							
								<li><a href="/portal/main/contents.do?menuNo=200173"><span>예매약관</span></a></li>
							
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
		
		<!-- 본문 시작 -->
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
				
		<article class="ticket_com inner">
		<ul>
			<li class="group">
				<div class="tit">인터넷 예매 <span>인터넷 예매는 PC 홈페이지 및 모바일웹에서 예매가 가능합니다. </span></div>
				<div class="cont">
					<dl class="t1">
						<dt> * 예매 시간</dt>
						<dd> 24시간 예매 가능  (공연시간 2시간 전까지 인터넷 예매 가능, 일부공연 제외)</dd>
						<dt> * 예매 방법</dt>
						<dd>회원가입 및 로그인    &gt;    공연선택    &gt;    예매날짜 / 시간 / 좌석 선택    &gt;    결제선택 / 예매완료</dd>
						<dt> * 예매 수수료</dt>
						<dd> 예매 수수료 없음 </dd>
						<dt> * 결제방법 </dt>
						<dd>
							<strong class="t"> 신용카드 결제</strong>
		 카드결제를 하시면 바로 결제가 완료됩니다.
		 <div class="sect">
		<strong class="t">  가상계좌 결제</strong>
		<ol class="bul-decimal">
		<li>가상계좌는 해당 공연일로부터 3일 전까지 전화나 인터넷으로 예매 할 수 있습니다.</li>
		<li>가상계좌 결제 시, 예매완료 후 받으시는 가상계좌번호로 입금하시기 바랍니다.<br>
		    (가상계좌번호는 입장권 결제마다 개별적으로 부여되는 번호입니다. 입금처리가 되면 실시간으로 결제처리가 되기 때문에 입금 확인하실 필요가 없습니다.)</li>
		<li>가상계좌번호는 부여 받은 후&nbsp;공연일 4일 전 예매일 기준 다음날 오후 11시 59분 이전까지, 공연일 3일 전 기준 예매 당일 오후 11시 59분 이전까지 유효합니다.&nbsp;
		    그 이후에는 자동 소멸되기 때문에 입금이 되지 않습니다.</li>
		    </ol>
						</div>	
						</dd>
					</dl>
				</div>
			</li>
			<li class="group">
				<div class="tit">전화 예매</div>
				<div class="cont">
					<dl class="t1">
						<dt> * 예매 시간</dt>
						<dd>  09:00 ~ 20:00 (연중무휴)  <span class="color-purple">*연중무휴 , 공연 2시간전까지 가능, 일부 공연에 한하여 전화 예매가 불가능 할 수 있습니다. </span></dd>
						<dt>  * 예매 방법</dt>
						<dd>전화  : 02 - 399 - 1000</dd>
						<dt> * 예매 수수료</dt>
						<dd> 예매 수수료 없음 </dd>
						<dt> * 결제방법 </dt>
						<dd>
							 신용카드 , 가상계좌 결제 가능
						</dd>
					</dl>
				</div>
			</li>
			<li class="group">
				<div class="tit">서비스 플라자 현장예매</div>
				<div class="cont">
					<dl class="t1">
						<dt> * 예매 시간</dt>
						<dd>  10:00 ~ 20:00 (연중무휴) <span class="color-purple">*점심시간: 13시~14시</span></dd>
						<dt>  * 예매 방법</dt>
						<dd>서비스 플라자를 방문하시면 바로 예매하실 수 있습니다. 서비스 플라자 위치는 세종문화회관 중앙계단 위에 위치하고 있습니다.  
						<!-- <a href="#" target="_blank" title="새 창으로 이동합니다." class="btn-link"> 서비스플라자 위치보기</a> -->
						</dd>
						<dt> * 예매 수수료</dt>
						<dd> 예매 수수료 없음 </dd>
						<dt> * 결제방법 </dt>
						<dd>
							 신용카드 , 가상계좌 결제 가능
						</dd>
					</dl>
				</div>
			</li>
			<li class="group">
				<div class="tit">장애인 , 국가유공자 우대할인 예매안내</div>
				<div class="cont">
					<ul class="bul-dot t2">
						<li>
						장애인 복지카드와 국가유공자카드를 소지하고 계신 분들의 경우&nbsp;<strong class="color-navy">50% 할인혜택</strong>을 제공하고 있습니다.
							<ol class="bul-decimal color-navy">
								<li>장애인 복지카드(1급-3급) : 동반 1인까지 50%할인</li>
		<li>장애인 복지카드(4급-6급) : 본인에 한하여 50%할인</li>
		<li>국가유공자카드 : 동반 1인까지 50%할인</li>
		<li>대관공연 및 대관전시의 경우, 해당 기획사의 정책에 따라 차이가 있습니다.</li>
							</ol>
						</li>
						<li>
						장애인 · 국가유공자 우대할인 예매는 인터넷 예매와 현장예매, 전화예매가 가능합니다.(일부 공연의 경우, 전화예매로만 운영될 수 있습니다.)</li>
		<li>인터넷 예매와 현장예매, 전화예매 모두 입장권 수령(발권) 시 장애인 복지카드와 국가유공자 카드를 반드시 제시하셔야 합니다.<br>
		(미증빙시 할인을 받으실 수 없으며, 선 할인 받은 금액이 있으면 차액을 지불하셔야 합니다.)</li>
		<li class="rel"><strong class="color-navy">인터넷 예매</strong> 할인권종에서 장애인 국가유공자 할인을 선택하여 선 할인 예매 후 장애인 복지카드, 국가유공자 카드를 지참하시고 현장에서 증빙 후 입장권을 수령해 주시기 바랍니다.</li>
		<li class="rel"><strong class="color-navy">현장 예매&nbsp;</strong> 장애인 복지카드, 국가유공자 카드를 지참하시고 현장에서 증빙 후 예매와 발권을 동시에 진행하시면 됩니다.</li>
		<li class="rel"><strong class="color-navy">전화 예매&nbsp;</strong> 세종문화회관 고객센터에서 전화예매 시 장애인, 국가유공자임을 말씀해 주시고, 현장에서 장애인 복지카드, 
		                         국가유공자 카드 지참하시어 증빙 후 입장권을 수령해 주시기 바랍니다.</li>
					</ul>
				</div>
			</li>
		</ul>
		</article>
				</div>
			</div>
		</div>
		<!-- 본문 끝 -->
		
		<!-- footer Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- footer End -->
	</section>
</body>
</html>