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

<meta property="og:title" content="세종문화회관">
<meta property="og:image" content="./resources/sejongpac/static/portal/img/main/201105_mtimg.jpg">

<title>세종문화회관</title>



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


<script>
	//<![CDATA[

	$(document).ready(function() {
		$('.pop_c').bind('click', function() {
			$(this).closest('.pop_l').hide();
			return false;
		});
		cookiedata = document.cookie;

	});

	$(function() {
		NetFunnel_Complete(); //넷퍼넬로 넘어온 페이지면 종료 처리
	})

	//웃는남자 예매 타이머
	var nowDate = "java.text.SimpleDateFormat@e863f5a0";
	//var stDate = new Date().getTime();
	var stDate = new Date().getTime(nowDate.replace(/-/g, '/').replace(
			/[a-z]+/gi, ' '));//사파리 처리
	//var edDate = new Date('2022-06-23 09:23:00').getTime(); // TODO 웃는남자 오픈시간 수정필요
	var edDate = Date.parse('2022-06-23 17:12:00'.replace(/-/g, '/').replace(
			/[a-z]+/gi, ' ')); // TODO 웃는남자 오픈시간 수정필요 //사파리
	var RemainDate = edDate - stDate;
	tid = setInterval('msg_time()', 1000);// 타이머 1초간격으로 수행

	function msg_time() {
		//var hours = addZeros(Math.floor((RemainDate % (1000 * 60 * 60 * 24)) / (10006060)),2);
		var hours = addZeros(Math.floor((RemainDate) / (1000 * 60 * 60)), 2);
		var miniutes = addZeros(Math.floor((RemainDate % (1000 * 60 * 60))
				/ (1000 * 60)), 2);
		var seconds = addZeros(Math.floor((RemainDate % (1000 * 60)) / 1000), 2);

		var openTime = hours + ":" + miniutes + ":" + seconds; // 남은 시간 text형태로 변경

		if (RemainDate < 0) {
			// 시간이 종료 되었으면..
			clearInterval(tid); // 타이머 해제
			$("#clock1").html("예매하기"); //날짜를 출력해 줌
			$(".clockChk").attr("onclick",
					"showPerformPop2('grpm2204131016a01');return false;");
			$(".clockChk").removeAttr("style");
		} else {
			$("#clock1").html("남은시간 " + openTime); //날짜를 출력해 줌
			RemainDate = RemainDate - 1000; // 남은시간 -1초
			$(".clockChk").removeAttr("onclick");
			$(".clockChk").attr("style", "background-color:gray;");
		}
	}

	function addZeros(num, digit) { // 자릿수 맞춰주기
		var zero = '';
		num = num.toString();
		if (num.length < digit) {
			for (i = 0; i < digit - num.length; i++) {
				zero += '0';
			}
		}
		return zero + num;
	}
	//]]>
</script>


<!--[if lt IE 9]>
<script src="/static/portal/js/html5.js"></script>
<![endif]-->
<style>
body.hide-focus-ring *:focus {
	outline: none !important;
}
</style>
</head>



<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0" class="vsc-initialized hide-focus-ring">

	<section id="wrap">
		<div class="open_bg"></div>
		<dl class="accessibilityWrap">
			<dt class="hide">
				<strong>바로가기 메뉴</strong>
			</dt>
			<dd>
				<a href="#cont">본문 바로가기</a>
			</dd>
			<dd>
				<a href="#top_nav">주메뉴 바로가기</a>
			</dd>
		</dl>



		<div class="wrap" style="opacity: 1;">
			<!-- 헤더부분은 기존 소스 살림  -->

			<!-- // -->

			<span itemscope="" itemtype="http://schema.org/Organization" style="display: none;">
				<link itemprop="url" href="https://www.sejongpac.or.kr"> <a itemprop="sameAs" href="https://www.youtube.com/channel/UCCqaPJqI5q1kfO51qWWOjrQ"><span class="hide">유튜브</span></a> <a itemprop="sameAs" href="https://www.instagram.com/sejongcenter/"><span class="hide">인스타그램</span></a> <a itemprop="sameAs" href="https://www.facebook.com/sjcenter"><span class="hide">페이스북</span></a> <a itemprop="sameAs" href="https://blog.naver.com/sejongnanum"><span class="hide">블로그</span></a> <a itemprop="sameAs" href="https://twitter.com/SEJONG_CENTER"><span class="hide">트위터</span></a>
			</span>

			<script src="/static/portal/js/ksearch/top_apc.js"></script>
			<script src="/static/portal/js/jquery.rwdImageMaps.js"></script>


			<div id="seoul-common-gnb"></div>
			<header id="header" class="clearfix">
				<h1 id="logo">
					<a href="/portal/main/main.do">서울특별시 세종문화회관</a>
				</h1>
				<div id="top_nav">
					<ul class="clearfix">

						<li><a href="/portal/subMain/perform.do?menuNo=200001">공연·전시·강좌</a>

							<ul class="depth2">

								<li><a href="/portal/bbs/B0000033/list.do?menuNo=200003">세종시즌</a></li>

								<li><a href="/portal/performance/performance/performList.do?menuNo=200004">공연일정</a></li>

								<li><a href="/portal/performance/performance/performList.do?searchPackage=P&amp;menuNo=200214">패키지</a></li>

								<li><a href="/portal/performance/exhibit/performList.do?menuNo=200005">전시일정</a></li>

								<li><a href="http://academy.sejongpac.or.kr/academy/singl/academyProgram/list.do?menuNo=800003" target="_blank" title="새창으로 열립니다.">강좌일정</a></li>

								<li class="arrow"><a href="/portal/main/contents.do?menuNo=200094">좌석배치도</a>

									<ul class="depth3">

										<li><a href="/portal/main/contents.do?menuNo=200094">세종대극장</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200095">세종M씨어터</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200096">세종 체임버홀</a></li>

										<li><a href="https://www.sejongpac.or.kr/upload/vr/vr2/tour.html" target="_blank" title="새창으로 열립니다.">세종S씨어터</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200221">꿈의숲 퍼포먼스홀</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200224">꿈의숲 콘서트홀</a></li>

								</ul></li>

						</ul></li>

						<li><a href="/portal/bbs/B0000002/list.do?menuNo=200012">대관안내</a>

							<ul class="depth2">

								<li><a href="https://www.sejongpac.or.kr/portal/bbs/B0000002/list.do?menuNo=200012">대관공고</a></li>

								<li><a href="/portal/main/contents.do?menuNo=200018">대관신청</a></li>

								<li class="arrow"><a href="/portal/main/contents.do?menuNo=200119">세종문화회관 대관</a>

									<ul class="depth3">

										<li><a href="/portal/main/contents.do?menuNo=200119">공연대관</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200126">전시대관</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200134">대여안내</a></li>

								</ul></li>

								<li class="arrow"><a href="/portal/main/contents.do?menuNo=200226">꿈의숲아트센터 대관</a>

									<ul class="depth3">

										<li><a href="/portal/main/contents.do?menuNo=200226">공연대관</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200228">전시대관</a></li>

								</ul></li>

								<li class="arrow"><a href="/portal/main/contents.do?menuNo=200142">기타대관</a>

									<ul class="depth3">

										<li><a href="/portal/main/contents.do?menuNo=200142">야외공간 대관</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200257">강의실 대여</a></li>

								</ul></li>

								<li><a href="/portal/main/contents.do?menuNo=200016">홈페이지 배너신청</a></li>

								<li><a href="/portal/main/contents.do?menuNo=200172">티켓판매절차</a></li>

						</ul></li>

						<li><a href="/portal/qestnar/qustnr/list.do?status=T&amp;menuNo=200027">참여공간</a>

							<ul class="depth2">

								<li class="arrow"><a href="/portal/qestnar/qustnr/list.do?status=T&amp;menuNo=200027">이벤트</a>

									<ul class="depth3">

										<li><a href="/portal/qestnar/qustnr/list.do?status=T&amp;menuNo=200027">진행중 이벤트</a></li>

										<li><a href="/portal/qestnar/qustnr/list.do?status=F&amp;menuNo=200028">종료된 이벤트</a></li>

										<li><a href="/portal/bbs/B0000012/list.do?menuNo=200029">당첨자 발표</a></li>

								</ul></li>

								<li><a href="/portal/main/contents.do?menuNo=200025">세종투어</a></li>

						</ul></li>

						<li><a href="/portal/bbs/B0000001/list.do?menuNo=200042">뉴스·소식</a>

							<ul class="depth2">

								<li class="arrow"><a href="/portal/bbs/B0000001/list.do?menuNo=200042">새소식</a>

									<ul class="depth3">

										<li><a href="/portal/bbs/B0000001/list.do?menuNo=200042">세종소식</a></li>

										<li><a href="/portal/bbs/B0000003/list.do?menuNo=200088">입찰공고</a></li>

								</ul></li>

								<li><a href="/portal/bbs/B0000017/list.do?menuNo=200040">뉴스레터</a></li>

								<li><a href="/portal/bbs/B0000040/list.do?menuNo=200199">세종문화N</a></li>

						</ul></li>

						<li><a href="/portal/main/contents.do?menuNo=200082">고객센터</a>

							<ul class="depth2">

								<li class="arrow"><a href="/portal/main/contents.do?menuNo=200082">이용안내</a>

									<ul class="depth3">

										<li><a href="/portal/main/contents.do?menuNo=200082">오시는길</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200049">편의시설</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200050">장애인해피콜서비스</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200051">분실물찾기</a></li>

								</ul></li>

								<li class="arrow"><a href="/portal/singl/faq/list.do?menuNo=200052">고객문의</a>

									<ul class="depth3">

										<li><a href="/portal/singl/faq/list.do?menuNo=200052">FAQ</a></li>

										<li><a href="/portal/singl/sound/list.do?menuNo=200170">고객의 소리</a></li>

								</ul></li>

								<li class="arrow"><a href="/portal/main/contents.do?menuNo=200091">회원혜택 안내</a>

									<ul class="depth3">

										<li><a href="/portal/main/contents.do?menuNo=200091">회원제 소개</a></li>

										<li><a href="/portal/singl/restaurant/list.do?menuNo=200093">제휴업체</a></li>

								</ul></li>

								<li class="arrow"><a href="/portal/main/contents.do?menuNo=200085">예매안내</a>

									<ul class="depth3">

										<li><a href="/portal/main/contents.do?menuNo=200085">티켓 구입방법</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200222">티켓 수령방법</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200087">예매 취소, 변경안내</a></li>

										<li><a href="/portal/main/contents.do?menuNo=200173">예매약관</a></li>

								</ul></li>

								<li><a href="/portal/main/contents.do?menuNo=200047">관람예절</a></li>

						</ul></li>

						<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/main.do" target="_blank" title="새창으로 열립니다.">서울시예술단</a>

							<ul class="depth2">

								<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300008" target="_blank" title="새창으로 열립니다.">서울시국악관현악단</a></li>

								<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300013" target="_blank" title="새창으로 열립니다.">서울시무용단</a></li>

								<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300019" target="_blank" title="새창으로 열립니다.">서울시합창단</a></li>

								<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300025" target="_blank" title="새창으로 열립니다.">서울시뮤지컬단</a></li>

								<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300030" target="_blank" title="새창으로 열립니다.">서울시극단</a></li>

								<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300035" target="_blank" title="새창으로 열립니다.">서울시오페라단</a></li>

								<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300040" target="_blank" title="새창으로 열립니다.">서울시유스오케스트라단</a></li>

								<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300047" target="_blank" title="새창으로 열립니다.">서울시소년소녀합창단</a></li>

								<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300051" target="_blank" title="새창으로 열립니다.">서울시청소년국악단</a></li>

						</ul></li>

						<li><a href="/organization/main/main.do" target="_blank" title="새창으로 열립니다.">기관소개</a>

							<ul class="depth2">

								<li class="arrow"><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500150" target="_blank" title="새창으로 열립니다.">세종문화회관 소개</a>

									<ul class="depth3">

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500150" target="_blank" title="새창으로 열립니다.">개요</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500078" target="_blank" title="새창으로 열립니다.">CEO인사말</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500131" target="_blank" title="새창으로 열립니다.">CI소개</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500080" target="_blank" title="새창으로 열립니다.">조직도</a></li>

								</ul></li>

								<li class="arrow"><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500137" target="_blank" title="새창으로 열립니다.">시설소개</a>

									<ul class="depth3">

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500137" target="_blank" title="새창으로 열립니다.">세종문화회관</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500172" target="_blank" title="새창으로 열립니다.">꿈의숲아트센터</a></li>

								</ul></li>

								<li class="arrow"><a href="https://www.sejongpac.or.kr/portal/subMain/dreamTree.do" target="_blank" title="새창으로 열립니다.">사회공헌</a>

									<ul class="depth3">

										<li><a href="https://www.sejongpac.or.kr/portal/subMain/dreamTree.do" target="_blank" title="새창으로 열립니다.">꿈나무오케스트라</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500161" target="_blank" title="새창으로 열립니다.">우리동네프로젝트</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500073" target="_blank" title="새창으로 열립니다.">1사1촌자매결연</a></li>

										<li><a href="http://happy1000.sejongpac.or.kr" target="_blank" title="새창으로 열립니다.">천원의행복</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500074" target="_blank" title="새창으로 열립니다.">예술로 동행</a></li>

								</ul></li>

								<li><a href="https://www.sejongpac.or.kr/portal/subMain/donation.do?menuNo=500060" target="_blank" title="새창으로 열립니다.">후원‧협찬</a></li>

								<li class="arrow"><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500101" target="_blank" title="새창으로 열립니다.">CLEAN 세종</a>

									<ul class="depth3">

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500101" target="_blank" title="새창으로 열립니다.">세종민원</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500105" target="_blank" title="새창으로 열립니다.">윤리경영</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500168" target="_blank" title="새창으로 열립니다.">인권경영</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/bbs/B0000035/list.do?menuNo=500108" target="_blank" title="새창으로 열립니다.">정보공개</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500122" target="_blank" title="새창으로 열립니다.">윤리규범</a></li>

										<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500066" target="_blank" title="새창으로 열립니다.">청탁금지법 공무수행사인</a></li>

								</ul></li>

						</ul></li>

					</ul>
				</div>


				<ul id="gnb" class="clearfix">

					<li class="li login_N" style=""><a href="/portal/member/user/forLogin.do?menuNo=200100">LOGIN</a></li>

					<li class="li link login_Y" style="display: none;"><a href="#" class="t">MYPAGE</a>
						<ul class="depth">
							<li><a href="/portal/myPage/individual/list.do?menuNo=200153">MYPAGE</a></li>
							<li><a href="/portal/member/user/logout.do">LOGOUT</a></li>
					</ul></li>

					<li class="li"><a href="/eng/main/main.do" target="_blank" title="새창으로 열립니다.">ENG</a></li>
					<li class="ticket tablet"><a href="javascript:checkList();" class="btn-ticket btn">TICKET</a></li>
					<li class="pc_only"><a href="javascript:checkList();" title="새창으로 열립니다.">TICKET</a></li>
					<!-- //웃는남자 일때 주석 달력,검색 주석 -->
					<li><a href="/portal/performance/scheduleMng/performanceSchedule.do?menuNo=200272" class="btn-book btn">전체일정</a></li>
					<li><a href="#" class="btn-sch btn">검색</a></li>
				</ul>

				<button type="button" id="btn-menu">메뉴 열기</button>
				<div class="allmenu">
					<div class="in">
						<div class="top">

							<ul id="gnb_m" class="clearfix">
								<li class="login_N" style="display: none;"><a href="/portal/member/user/forLogin.do?menuNo=200100">LOGIN</a></li>

								<li class="login_Y" style="display: none;"><a href="/portal/member/user/logout.do">LOGOUT</a></li>
								<li class="login_Y" style="display: none;"><a href="/portal/myPage/individual/list.do?menuNo=200153">MYPAGE</a></li>

								<li><a href="/eng/main/main.do" target="_blank" title="새창으로 열립니다.">ENG</a></li>
								<li><a href="/portal/performance/scheduleMng/performanceSchedule.do?menuNo=200272" class="btn-book btn">전체일정</a></li>
							</ul>
							<!-- -->
							<button type="button" class="btn-close_m">닫기</button>
						</div>
						<ul class="clearfix" id="lnb_m">

							<li><a href="/portal/subMain/perform.do?menuNo=200001">공연·전시·강좌</a>

								<ul class="depth2">

									<li><a href="/portal/bbs/B0000033/list.do?menuNo=200003"><span>세종시즌</span></a></li>

									<li><a href="/portal/performance/performance/performList.do?menuNo=200004"><span>공연일정</span></a></li>

									<li><a href="/portal/performance/performance/performList.do?searchPackage=P&amp;menuNo=200214"><span>패키지</span></a></li>

									<li><a href="/portal/performance/exhibit/performList.do?menuNo=200005"><span>전시일정</span></a></li>

									<li><a href="http://academy.sejongpac.or.kr/academy/singl/academyProgram/list.do?menuNo=800003" target="_blank" title="새창으로 열립니다."><span>강좌일정</span></a></li>

									<li><a href="/portal/main/contents.do?menuNo=200094"><span>좌석배치도</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="/portal/main/contents.do?menuNo=200094">세종대극장</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200095">세종M씨어터</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200096">세종 체임버홀</a></li>

											<li><a href="https://www.sejongpac.or.kr/upload/vr/vr2/tour.html" target="_blank" title="새창으로 열립니다.">세종S씨어터</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200221">꿈의숲 퍼포먼스홀</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200224">꿈의숲 콘서트홀</a></li>

									</ul></li>

							</ul></li>

							<li><a href="/portal/bbs/B0000002/list.do?menuNo=200012">대관안내</a>

								<ul class="depth2">

									<li><a href="https://www.sejongpac.or.kr/portal/bbs/B0000002/list.do?menuNo=200012"><span>대관공고</span></a></li>

									<li><a href="/portal/main/contents.do?menuNo=200018"><span>대관신청</span></a></li>

									<li><a href="/portal/main/contents.do?menuNo=200119"><span>세종문화회관 대관</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="/portal/main/contents.do?menuNo=200119">공연대관</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200126">전시대관</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200134">대여안내</a></li>

									</ul></li>

									<li><a href="/portal/main/contents.do?menuNo=200226"><span>꿈의숲아트센터 대관</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="/portal/main/contents.do?menuNo=200226">공연대관</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200228">전시대관</a></li>

									</ul></li>

									<li><a href="/portal/main/contents.do?menuNo=200142"><span>기타대관</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="/portal/main/contents.do?menuNo=200142">야외공간 대관</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200257">강의실 대여</a></li>

									</ul></li>

									<li><a href="/portal/main/contents.do?menuNo=200016"><span>홈페이지 배너신청</span></a></li>

									<li><a href="/portal/main/contents.do?menuNo=200172"><span>티켓판매절차</span></a></li>

							</ul></li>

							<li><a href="/portal/qestnar/qustnr/list.do?status=T&amp;menuNo=200027">참여공간</a>

								<ul class="depth2">

									<li><a href="/portal/qestnar/qustnr/list.do?status=T&amp;menuNo=200027"><span>이벤트</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="/portal/qestnar/qustnr/list.do?status=T&amp;menuNo=200027">진행중 이벤트</a></li>

											<li><a href="/portal/qestnar/qustnr/list.do?status=F&amp;menuNo=200028">종료된 이벤트</a></li>

											<li><a href="/portal/bbs/B0000012/list.do?menuNo=200029">당첨자 발표</a></li>

									</ul></li>

									<li><a href="/portal/main/contents.do?menuNo=200025"><span>세종투어</span></a></li>

							</ul></li>

							<li><a href="/portal/bbs/B0000001/list.do?menuNo=200042">뉴스·소식</a>

								<ul class="depth2">

									<li><a href="/portal/bbs/B0000001/list.do?menuNo=200042"><span>새소식</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="/portal/bbs/B0000001/list.do?menuNo=200042">세종소식</a></li>

											<li><a href="/portal/bbs/B0000003/list.do?menuNo=200088">입찰공고</a></li>

									</ul></li>

									<li><a href="/portal/bbs/B0000017/list.do?menuNo=200040"><span>뉴스레터</span></a></li>

									<li><a href="/portal/bbs/B0000040/list.do?menuNo=200199"><span>세종문화N</span></a></li>

							</ul></li>

							<li><a href="/portal/main/contents.do?menuNo=200082">고객센터</a>

								<ul class="depth2">

									<li><a href="/portal/main/contents.do?menuNo=200082"><span>이용안내</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="/portal/main/contents.do?menuNo=200082">오시는길</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200049">편의시설</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200050">장애인해피콜서비스</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200051">분실물찾기</a></li>

									</ul></li>

									<li><a href="/portal/singl/faq/list.do?menuNo=200052"><span>고객문의</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="/portal/singl/faq/list.do?menuNo=200052">FAQ</a></li>

											<li><a href="/portal/singl/sound/list.do?menuNo=200170">고객의 소리</a></li>

									</ul></li>

									<li><a href="/portal/main/contents.do?menuNo=200091"><span>회원혜택 안내</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="/portal/main/contents.do?menuNo=200091">회원제 소개</a></li>

											<li><a href="/portal/singl/restaurant/list.do?menuNo=200093">제휴업체</a></li>

									</ul></li>

									<li><a href="/portal/main/contents.do?menuNo=200085"><span>예매안내</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="/portal/main/contents.do?menuNo=200085">티켓 구입방법</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200222">티켓 수령방법</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200087">예매 취소, 변경안내</a></li>

											<li><a href="/portal/main/contents.do?menuNo=200173">예매약관</a></li>

									</ul></li>

									<li><a href="/portal/main/contents.do?menuNo=200047"><span>관람예절</span></a></li>

							</ul></li>

							<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/main.do" target="_blank" title="새창으로 열립니다.">서울시예술단</a>

								<ul class="depth2">

									<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300008" target="_blank" title="새창으로 열립니다."><span>서울시국악관현악단</span></a></li>

									<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300013" target="_blank" title="새창으로 열립니다."><span>서울시무용단</span></a></li>

									<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300019" target="_blank" title="새창으로 열립니다."><span>서울시합창단</span></a></li>

									<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300025" target="_blank" title="새창으로 열립니다."><span>서울시뮤지컬단</span></a></li>

									<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300030" target="_blank" title="새창으로 열립니다."><span>서울시극단</span></a></li>

									<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300035" target="_blank" title="새창으로 열립니다."><span>서울시오페라단</span></a></li>

									<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300040" target="_blank" title="새창으로 열립니다."><span>서울시유스오케스트라단</span></a></li>

									<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300047" target="_blank" title="새창으로 열립니다."><span>서울시소년소녀합창단</span></a></li>

									<li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300051" target="_blank" title="새창으로 열립니다."><span>서울시청소년국악단</span></a></li>

							</ul></li>

							<li><a href="/organization/main/main.do" target="_blank" title="새창으로 열립니다.">기관소개</a>

								<ul class="depth2">

									<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500150" target="_blank" title="새창으로 열립니다."><span>세종문화회관 소개</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500150" target="_blank" title="새창으로 열립니다.">개요</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500078" target="_blank" title="새창으로 열립니다.">CEO인사말</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500131" target="_blank" title="새창으로 열립니다.">CI소개</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500080" target="_blank" title="새창으로 열립니다.">조직도</a></li>

									</ul></li>

									<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500137" target="_blank" title="새창으로 열립니다."><span>시설소개</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500137" target="_blank" title="새창으로 열립니다.">세종문화회관</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500172" target="_blank" title="새창으로 열립니다.">꿈의숲아트센터</a></li>

									</ul></li>

									<li><a href="https://www.sejongpac.or.kr/portal/subMain/dreamTree.do" target="_blank" title="새창으로 열립니다."><span>사회공헌</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="https://www.sejongpac.or.kr/portal/subMain/dreamTree.do" target="_blank" title="새창으로 열립니다.">꿈나무오케스트라</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500161" target="_blank" title="새창으로 열립니다.">우리동네프로젝트</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500073" target="_blank" title="새창으로 열립니다.">1사1촌자매결연</a></li>

											<li><a href="http://happy1000.sejongpac.or.kr" target="_blank" title="새창으로 열립니다.">천원의행복</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500074" target="_blank" title="새창으로 열립니다.">예술로 동행</a></li>

									</ul></li>

									<li><a href="https://www.sejongpac.or.kr/portal/subMain/donation.do?menuNo=500060" target="_blank" title="새창으로 열립니다."><span>후원‧협찬</span></a></li>

									<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500101" target="_blank" title="새창으로 열립니다."><span>CLEAN 세종</span></a>

										<ul class="depth3 bul-dot">

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500101" target="_blank" title="새창으로 열립니다.">세종민원</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500105" target="_blank" title="새창으로 열립니다.">윤리경영</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500168" target="_blank" title="새창으로 열립니다.">인권경영</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/bbs/B0000035/list.do?menuNo=500108" target="_blank" title="새창으로 열립니다.">정보공개</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500122" target="_blank" title="새창으로 열립니다.">윤리규범</a></li>

											<li><a href="https://www.sejongpac.or.kr/organization/main/contents.do?menuNo=500066" target="_blank" title="새창으로 열립니다.">청탁금지법 공무수행사인</a></li>

									</ul></li>

							</ul></li>

						</ul>
						<div class="bot">
							<div class="sns">
								<!-- <span><a href="http://vt.tiktok.com/JX2o3Q/" target="_blank" title="새창으로 열립니다."><img src="/static/portal/img/common/m/sns_t.gif" alt="틱톡" /></a></span> -->
								<span><a href="https://twitter.com/SEJONG_CENTER​" target="_blank" title="새창으로 열립니다."><img src="/static/portal/img/common/m/sns_t2.gif" alt="트위터"></a></span> <span><a href="https://www.facebook.com/sjcenter" target="_blank" title="새창으로 열립니다."><img src="/static/portal/img/common/m/sns_f.gif" alt="페이스북"></a></span> <span><a href="http://blog.naver.com/sejongnanum" target="_blank" title="새창으로 열립니다."><img src="/static/portal/img/common/m/sns_b.gif" alt="블로그"></a></span> <span><a href="https://www.instagram.com/sejongcenter/" target="_blank" title="새창으로 열립니다."><img src="/static/portal/img/common/m/sns_i.gif" alt="인스타그램"></a></span> <span><a href="https://www.youtube.com/channel/UCCqaPJqI5q1kfO51qWWOjrQ" target="_blank" title="새창으로 열립니다."><img src="/static/portal/img/common/m/sns_y.gif" alt="유튜브"></a></span>
							</div>
						</div>
					</div>
				</div>


				<!-- SEARCH FORM -->
				<article id="top_sch">
					<h2 class="hide">사이트 검색</h2>
					<button type="button" class="close first">닫기</button>
					<form name="searchFrm" id="searchFrm" action="/portal/search/list.do?menuNo=200174" method="get">
						<div class="sch">
							<label for="sch_word" class="hide">검색어</label> <input type="text" name="kwd" id="sch_word" value="" placeholder="검색어를 입력해주세요.">
							<button type="submit">검색</button>
						</div>
					</form>

					<div class="inner">
						<ul class="half_w clearfix">
							<li class="l" id="top_apc_left">
								<ul class="bbs-today_thumb clearfix" id="top_apc_left_list">

									<!-- 상단 검색 추가 20200910 -->

									<li><a href="https://academy.sejongpac.or.kr/academy/main/main.do">
											<div class="img">

												<img src="/static/portal/img/bbs/no_img.gif" alt="세종문화회관 로고" class="no_img">



												<!-- <img src="/static/portal/img/bbs/no_img.gif" alt="세종문화회관 로고" class="no_img" /> -->

											</div>
											<div class="cont">
												<strong class="t">세종 온 클래스</strong>
												<div class="etc clearfix">
													<span class="date"> - </span> <span class="place"></span>
												</div>
											</div>
									</a></li>

									<li><a href="/portal/performance/performance/view.do?performIdx=33012&amp;menuNo=200004">
											<div class="img">

												<img src="https://www.sejongpac.or.kr/cmmn/file/linkedxmlImg.do?performIdx=33012" alt="내셔널지오그래픽 사진전 ＜포토아크, 너의 이름은＞">

											</div>
											<div class="cont">
												<strong class="t">내셔널지오그래픽 사진전 ＜포토아크, 너의 이름은＞</strong>
												<div class="etc clearfix">
													<span class="date"> 2022.04.12 - 2023.02.26 </span> <span class="place">기획전시</span>
												</div>
											</div>
									</a></li>
							</ul>
						</li>
							<!-- .l -->
							<li class="r" id="top_apc_right">
								<ul class="bbs-today_thumb clearfix" id="top_apc_right_list">
							</ul>
								<div class="sch_txt table">
									<div class="vertical" id="top_apc_right_msg">
										<!-- "top_apc_right_msg"  ID 추가 및 기본 안내문구에서 두번째 제거 (20200906) -->
										<p class="bul-mark b">검색어를 입력하세요.</p>
										<!-- <p class="bul-caution">검색결과가 없습니다.</p> -->
									</div>
								</div>
						</li>
							<!-- .r -->
						</ul>

					</div>
					<button type="button" class="close close-pop">닫기</button>
				</article>
				<!-- SEARCH FORM -->
				<script>
					gnbList(); // 로그인 체크 ajax
					var interestLoginChk = false;
					function gnbList() {
						$.ajax({
							type : "post",
							url : "/portal/main/loginChk.json",
							dataType : "json",
							success : function(data) {

								if (data.loginChk == false) {
									//alert("로그아웃 상태 상단 메뉴 : "+$("#top_nav").is(":visible"));
									if ($("#top_nav").is(":visible") == true) { //PC
										$("#gnb .login_N").show();
										$("#gnb .login_Y").hide();
									} else {
										$("#gnb_m .login_N").show();
										$("#gnb_m .login_Y").hide();
										$("#gnb .login_N").hide();
										$("#gnb .login_Y").hide();
									}
									//$(".login_N").show();
									//$(".login_Y").hide();
								} else {
									//alert("로그인 상태 상단 메뉴 : "+ $("#top_nav").is(":visible"));
									if ($("#top_nav").is(":visible") == true) { //PC
										$("#gnb .login_Y").show();
										$("#gnb .login_N").hide();
									} else {
										$("#gnb_m .login_Y").show();
										$("#gnb_m .login_N").hide();
										$("#gnb .login_N").hide();
										$("#gnb .login_Y").hide();
									}

									//$(".login_Y").show();
									//$(".login_N").hide();

									interestLoginChk = true;
								}
							}
						});
					}

					//웃는남자 상단 메뉴 링크 막음 

					/*
					$(function(){
						var msg0001 = "트래픽으로 인해 메뉴 사용이 제한되오니 양해부탁드립니다.\\n제한 시간 :  13:00 ~ 15:00\\n(※트래픽 상황에 따라 시간은 변동될 수 있습니다.)";
						$("#top_nav, #lnb_m").each(function(){
							var ahref = $(this).find("a");
							
							ahref.each(function(){
								$(this).attr("href", "javascript:alert('"+msg0001+"');");
								$(this).attr("target", "");
							});
						});
					});
					 */

					// 상단 돋보기 클릭시 펼침메뉴 우측 추천 공연 //
					drawTopLeftList();

					function drawTopLeftList() {
						$
								.post(
										"/portal/search/search/headerPerform.do?viewType=CONTBODY",
										null, function(data) {
											console.log(data);
											$("#top_apc_left_list").html(data);
										});
					}

					// 최상단 검색창에서 키워드 이벤트 처리
					$("#sch_word").keyup(function(key) {
						if (key.keyCode == 13) {
							goTopSearch();
						} else {
							drawTopApcList();
						}
					});

					function checkList() {
						window.open("/portal/ticket.do");
					}
				</script>
			</header>
			<!-- // -->

			<div id="cont">
				<!-- 메인 시작 -->
				<script>
					$(function() {
						$("img")
								.each(
										function(index, item) {
											var getting_pc = $(item)
													.attr("src");
											if (getting_pc
													.match("https://www.sejongpac.or.kr/")) {
											} else {
												var getting_pc_tmp = getting_pc
														.replace("/cmmn",
																"https://www.sejongpac.or.kr/cmmn");
												$(item).attr("src",
														getting_pc_tmp);
											}

										})
					});
				</script>
				<link rel="stylesheet" type="text/css" href="/static/portal/css/main_new.css?v=210526">
				<div id="main">
					<div id="main_visual">
						<div class="mainVisualQuick active">
							<a href="/portal/performance/performance/performList.do?menuNo=200004&amp;schRange=1" class="today">오늘의 공연</a> <a href="/portal/performance/exhibit/performList.do?menuNo=200005&amp;schRange=1" class="exhibit">오늘의 전시</a> <a href="/portal/performance/scheduleMng/performanceSchedule.do?menuNo=200272" class="schedule">전체일정</a> <a href="#" class="closeBtn">CLOSE</a>
						</div>


						<div class="in_w">
							<div class="in">
								<ul class="ms slick-initialized slick-slider">


									<div aria-live="polite" class="slick-list draggable">
										<div class="slick-track" style="opacity: 1; width: 7365px;">
											<li class="item slick-slide" data-slick-index="0" aria-hidden="true" role="option" tabindex="-1" style="width: 1473px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
												<div class="img_pc">

													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=e049304328c12031ec8c05162c558f206db30ab9edb0bb8e4f449a9903cb06fb" alt="" style="display: block; margin: 0 auto;">

													<div class="hide">꿈의숲 송년공연 겨울이야기 2022.12.24~12.25 꿈의숲아트센터</div>
												</div>

												<div class="btn_w">

													<a href="https://www.sejongpac.or.kr/portal/qestnar/qustnr/view.do?qustnrSn=1068&amp;menuNo=200027&amp;status=T&amp;pageUnit=8&amp;pageIndex=1" class="r" tabindex="-1"><span>상세보기</span></a>

												</div>
											</li>
											<li class="item slick-slide slick-current slick-active" data-slick-index="1" aria-hidden="false" role="option" tabindex="-1" style="width: 1473px; position: relative; left: -1473px; top: 0px; z-index: 999; opacity: 1;">
												<div class="img_pc">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=96f9f2230a6336df6cdd85664f993a15ad9dfc36288f971a5bacb5e178aa54a2" alt="" style="display: block; margin: 0 auto;">
													<div class="hide">투명한 미래전</div>
												</div>
												<div class="btn_w">
													<a href="#" onclick="javascript:showPerformPop('b5de2212140946a01');return false;" class="l ReservationTitle" tabindex="0"><span>예매하기</span></a> <a href="/portal/performance/exhibit/view.do?performIdx=33789&amp;menuNo=200005" class="r" tabindex="0"><span>상세보기</span></a>
												</div>
											</li>
											<li class="item slick-slide" data-slick-index="2" aria-hidden="true" role="option" tabindex="-1" style="width: 1473px; position: relative; left: -2946px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
												<div class="img_pc">

													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=7dc99ce1910546cfea5bc24409eb58294200ca52209836814279c2c87fbc6042" alt="" style="display: block; margin: 0 auto;">

													<div class="hide">유니버설발레단 호두까기 인형 2022.12.22(목)~12.31(토) 세종대극장</div>
												</div>

												<div class="btn_w">

													<a href="#" onclick="javascript:showPerformPop('grpb2210111117a01');return false;" class="l ReservationTitle" tabindex="-1"><span>예매하기</span></a> <a href="/portal/performance/performance/view.do?performIdx=33630&amp;menuNo=200004" class="r" tabindex="-1"><span>상세보기</span></a>

												</div>
											</li>
											<li class="item slick-slide" data-slick-index="3" aria-hidden="true" role="option" tabindex="-1" style="width: 1473px; position: relative; left: -4419px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
												<div class="img_pc">

													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=a1eb39cceb02fcda61498353859fbcdc4200ca52209836814279c2c87fbc6042" alt="" style="display: block; margin: 0 auto;">

													<div class="hide">뮤지컬 캣츠 내한공연-서울 musical cats 2023.1.20(금)~03.12(일)세종대극장</div>
												</div>

												<div class="btn_w">

													<a href="#" onclick="javascript:showPerformPop('grpm2210061638a01');return false;" class="l ReservationTitle" tabindex="-1"><span>예매하기</span></a> <a href="/portal/performance/performance/view.do?performIdx=33622&amp;menuNo=200004" class="r" tabindex="-1"><span>상세보기</span></a>

												</div>
											</li>
											<li class="item slick-slide" data-slick-index="4" aria-hidden="true" role="option" tabindex="-1" style="width: 1473px; position: relative; left: -5892px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
												<div class="img_pc">

													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=593f88dd921509eb5c44b9dd3a6c06223f48942c620f71cc3fc0c508cc687eff" alt="" style="display: block; margin: 0 auto;">

													<div class="hide">셀럽이 사랑한 bag&amp;shoes 2022.12.31~2023.03.25 세종미술관</div>
												</div>

												<div class="btn_w">

													<a href="#" onclick="javascript:showPerformPop('b5dt2212121427a01');return false;" class="l ReservationTitle" tabindex="-1"><span>예매하기</span></a> <a href="/portal/performance/exhibit/view.do?performIdx=33784&amp;menuNo=200005" class="r" tabindex="-1"><span>상세보기</span></a>

												</div>
											</li>
										</div>
									</div>


								</ul>
							</div>
							<div class="thumb_w">
								<dl class="sns_w">
									<dt>sns</dt>
									<dd>
										<span><a href="https://www.youtube.com/channel/UCCqaPJqI5q1kfO51qWWOjrQ" title="새창으로 열립니다." target="_blank"><img src="/static/portal/img/common/sns_y_w.png" alt="유튜브"></a></span> <span><a href="https://www.instagram.com/sejongcenter" title="새창으로 열립니다." target="_blank"><img src="/static/portal/img/common/sns_i_w.png" alt="인스타그램"></a></span> <span><a href="https://www.facebook.com/sjcenter" title="새창으로 열립니다." target="_blank"><img src="/static/portal/img/common/sns_f_w.png" alt="페이스북"></a></span> <span><a href="http://blog.naver.com/sejongnanum" title="새창으로 열립니다." target="_blank"><img src="/static/portal/img/common/sns_b_w.png" alt="블로그"></a></span> <span><a href="https://twitter.com/SEJONG_CENTER" title="새창으로 열립니다." target="_blank"><img src="/static/portal/img/common/sns_t_w.png" alt="트위터"></a></span>
									</dd>
								</dl>

								<!-- #main_visual 썸네일 -->
								<div class="inner">
									<ul class="ms2 slick-initialized slick-slider" id="mainVisualThumb">


										<div aria-live="polite" class="slick-list draggable">
											<div class="slick-track" style="opacity: 1; width: 365px; transform: translate3d(0px, 0px, 0px);">
												<li class="item slick-slide slick-active" role="option" tabindex="-1" style="width: 68px;" data-slick-index="0" aria-hidden="false">
													<button type="button" tabindex="0">
														<strong class="in"> <img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=e674d1e93fc4c5023b1b8990884427d65780e802885c9a2e4f5ff6a995362cef" alt="꿈의숲 송년공연 겨울이야기 2022.12.24~12.25 꿈의숲아트센터">

														</strong>
													</button>
												</li>
												<li class="item slick-slide slick-current slick-active" role="option" tabindex="-1" style="width: 68px;" data-slick-index="1" aria-hidden="false">
													<button type="button" tabindex="0">
														<strong class="in"> <img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=c0248f6783e813baf17ae0438849314598e0e7c45a5c149f65e15b47100fce11" alt="투명한 미래전 ">

														</strong>
													</button>
												</li>
												<li class="item slick-slide slick-active" role="option" tabindex="-1" style="width: 68px;" data-slick-index="2" aria-hidden="false">
													<button type="button" tabindex="0">
														<strong class="in"> <img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=c16f9bb18fd876aa07d90051d369fccd2b2061ad95b408c44731011a6c60517c" alt="유니버설발레단 호두까기 인형 2022.12.22(목)~12.31(토) 세종대극장">

														</strong>
													</button>
												</li>
												<li class="item slick-slide slick-active" role="option" tabindex="-1" style="width: 68px;" data-slick-index="3" aria-hidden="false">
													<button type="button" tabindex="0">
														<strong class="in"> <img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=cef1655f89b9cf076fee29b429f06a19610859f559405acebf035c508af9a606" alt="뮤지컬 캣츠 내한공연-서울 musical cats 2023.1.20(금)~03.12(일)세종대극장">

														</strong>
													</button>
												</li>
												<li class="item slick-slide slick-active" role="option" tabindex="-1" style="width: 68px;" data-slick-index="4" aria-hidden="false">
													<button type="button" tabindex="0">
														<strong class="in"> <img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=301bc04329066ee98076bb67c6ce74e96a7ff77472074eb1dad6fba65becd736" alt="셀럽이 사랑한 bag&amp;shoes 2022.12.31~2023.03.25 세종미술관">

														</strong>
													</button>
												</li>
											</div>
										</div>
									</ul>
								</div>

								<div class="btns">
									<button type="button" class="prev slick-arrow slick-hidden" style="" aria-disabled="true" tabindex="-1">이전</button>
									<button type="button" class="controls stop">일시정지</button>
									<button type="button" class="next slick-arrow slick-hidden" style="" aria-disabled="true" tabindex="-1">다음</button>
								</div>
							</div>
						</div>


					</div>
					<!-- #main_visual -->

					<svg version="1.1" xmlns="http://www.w3.org/2000/svg" height="0" class="tablet">
		 <filter id="blur">
				 <feGaussianBlur stdDeviation="3"></feGaussianBlur>
		 </filter>
	</svg>
					<div id="m1" class="inner aos-init aos-animate" data-aos="fade-up">
						<ul class="clearfix s ms slick-initialized slick-slider slick-dotted">








							<div aria-live="polite" class="slick-list draggable">
								<div class="slick-track" style="opacity: 1; width: 2904px; transform: translate3d(-924px, 0px, 0px);">
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="-7" id="" aria-hidden="true" tabindex="-1"><a href="/portal/bbs/B0000001/list.do?menuNo=200042" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_4.gif" alt="">
											</div>
											<div class="txt">세종소식</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="-6" id="" aria-hidden="true" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200094" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_5.gif" alt="">
											</div>
											<div class="txt">좌석배치도</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="-5" id="" aria-hidden="true" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200085" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_7.gif" alt="">
											</div>
											<div class="txt">예매안내</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="-4" id="" aria-hidden="true" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200082" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_6.gif" alt="">
											</div>
											<div class="txt">오시는길</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="-3" id="" aria-hidden="true" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200049" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_10.gif" alt="">
											</div>
											<div class="txt">편의시설</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="-2" id="" aria-hidden="true" tabindex="-1"><a href="/portal/qestnar/qustnr/list.do?status=P&amp;menuNo=200027" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_11.gif" alt="">
											</div>
											<div class="txt">이벤트</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="-1" id="" aria-hidden="true" tabindex="-1"><a href="/portal/singl/faq/list.do?menuNo=200052" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_12.gif" alt="">
											</div>
											<div class="txt">FAQ</div>
									</a></li>
									<li class="slick-slide slick-current slick-active" style="width: 132px;" data-slick-index="0" aria-hidden="false" role="tabpanel" id="slickSlide80" aria-labelledby="slickDot80" tabindex="-1"><a href="/portal/subMain/perform.do?menuNo=200001" tabindex="0">
											<div class="img">
												<img src="/static/portal/img/main/m1_3.gif" alt="">
											</div>
											<div class="txt">세종투데이</div>
									</a></li>
									<li class="slick-slide slick-active" style="width: 132px;" data-slick-index="1" aria-hidden="false" role="tabpanel" id="slickSlide801" aria-labelledby="slickDot80" tabindex="-1"><a href="/portal/bbs/B0000001/list.do?menuNo=200042" tabindex="0">
											<div class="img">
												<img src="/static/portal/img/main/m1_4.gif" alt="">
											</div>
											<div class="txt">세종소식</div>
									</a></li>
									<li class="slick-slide slick-active" style="width: 132px;" data-slick-index="2" aria-hidden="false" role="tabpanel" id="slickSlide802" aria-labelledby="slickDot80" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200094" tabindex="0">
											<div class="img">
												<img src="/static/portal/img/main/m1_5.gif" alt="">
											</div>
											<div class="txt">좌석배치도</div>
									</a></li>
									<li class="slick-slide slick-active" style="width: 132px;" data-slick-index="3" aria-hidden="false" role="tabpanel" id="slickSlide803" aria-labelledby="slickDot80" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200085" tabindex="0">
											<div class="img">
												<img src="/static/portal/img/main/m1_7.gif" alt="">
											</div>
											<div class="txt">예매안내</div>
									</a></li>
									<li class="slick-slide slick-active" style="width: 132px;" data-slick-index="4" aria-hidden="false" role="tabpanel" id="slickSlide804" aria-labelledby="slickDot80" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200082" tabindex="0">
											<div class="img">
												<img src="/static/portal/img/main/m1_6.gif" alt="">
											</div>
											<div class="txt">오시는길</div>
									</a></li>
									<li class="slick-slide slick-active" style="width: 132px;" data-slick-index="5" aria-hidden="false" role="tabpanel" id="slickSlide805" aria-labelledby="slickDot80" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200049" tabindex="0">
											<div class="img" style="top: 0px;">
												<img src="/static/portal/img/main/m1_10.gif" alt="">
											</div>
											<div class="txt">편의시설</div>
									</a></li>
									<li class="slick-slide slick-active" style="width: 132px;" data-slick-index="6" aria-hidden="false" role="tabpanel" id="slickSlide806" aria-labelledby="slickDot80" tabindex="-1"><a href="/portal/qestnar/qustnr/list.do?status=P&amp;menuNo=200027" tabindex="0">
											<div class="img">
												<img src="/static/portal/img/main/m1_11.gif" alt="">
											</div>
											<div class="txt">이벤트</div>
									</a></li>
									<li class="slick-slide" style="width: 132px;" data-slick-index="7" aria-hidden="true" role="tabpanel" id="slickSlide81" aria-labelledby="slickDot81" tabindex="-1"><a href="/portal/singl/faq/list.do?menuNo=200052" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_12.gif" alt="">
											</div>
											<div class="txt">FAQ</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="8" id="" aria-hidden="true" tabindex="-1"><a href="/portal/subMain/perform.do?menuNo=200001" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_3.gif" alt="">
											</div>
											<div class="txt">세종투데이</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="9" id="" aria-hidden="true" tabindex="-1"><a href="/portal/bbs/B0000001/list.do?menuNo=200042" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_4.gif" alt="">
											</div>
											<div class="txt">세종소식</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="10" id="" aria-hidden="true" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200094" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_5.gif" alt="">
											</div>
											<div class="txt">좌석배치도</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="11" id="" aria-hidden="true" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200085" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_7.gif" alt="">
											</div>
											<div class="txt">예매안내</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="12" id="" aria-hidden="true" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200082" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_6.gif" alt="">
											</div>
											<div class="txt">오시는길</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="13" id="" aria-hidden="true" tabindex="-1"><a href="/portal/main/contents.do?menuNo=200049" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_10.gif" alt="">
											</div>
											<div class="txt">편의시설</div>
									</a></li>
									<li class="slick-slide slick-cloned" style="width: 132px;" data-slick-index="14" id="" aria-hidden="true" tabindex="-1"><a href="/portal/qestnar/qustnr/list.do?status=P&amp;menuNo=200027" tabindex="-1">
											<div class="img">
												<img src="/static/portal/img/main/m1_11.gif" alt="">
											</div>
											<div class="txt">이벤트</div>
									</a></li>
								</div>
							</div>
							<ul class="slick-dots" style="" role="tablist"><li class="slick-active" aria-hidden="false" role="tab" aria-selected="true" aria-controls="slickSlide80" id="slickDot80"><button type="button" data-role="none" role="button" tabindex="0">Slide 1</button></li>
								<li role="tab" aria-selected="false" aria-controls="slickSlide81" id="slickDot81"><button type="button" data-role="none" role="button" tabindex="0">Slide 2</button></li>
								<li role="tab" aria-selected="false" aria-controls="slickSlide82" id="slickDot82"><button type="button" data-role="none" role="button" tabindex="0">Slide 3</button></li>
								<li role="tab" aria-selected="false" aria-controls="slickSlide83" id="slickDot83"><button type="button" data-role="none" role="button" tabindex="0">Slide 4</button></li>
								<li role="tab" aria-selected="false" aria-controls="slickSlide84" id="slickDot84"><button type="button" data-role="none" role="button" tabindex="0">Slide 5</button></li>
								<li role="tab" aria-selected="false" aria-controls="slickSlide85" id="slickDot85"><button type="button" data-role="none" role="button" tabindex="0">Slide 6</button></li>
								<li role="tab" aria-selected="false" aria-controls="slickSlide86" id="slickDot86"><button type="button" data-role="none" role="button" tabindex="0">Slide 7</button></li>
								<li role="tab" aria-selected="false" aria-controls="slickSlide87" id="slickDot87"><button type="button" data-role="none" role="button" tabindex="0">Slide 8</button></li></ul>
						</ul>
					</div>
					<!-- .m1 -->
					<div class="inner_m">

						<!-- 2021-12-06  추천프로그램 영역 숨김처리 LYT -->
						<div id="m2" data-aos="fade-up" class="aos-init">
							<div class="in">
								<div class="tit-main">
									<span class="small">Recommended Program</span>
									<h2 class="t">추천 프로그램</h2>
									<!-- <a href="#" class="more">더보기</a> -->
									<p class="txt">
										<span class="block-pc">세종문화회관의 다양한</span> 프로그램 추천드립니다.
									</p>
									<div class="btns mb-st1 clearfix">
										<button type="button" class="prev slick-arrow" style="">이전</button>
										<button type="button" class="controls stop">일시정지</button>
										<button type="button" class="next slick-arrow" style="">다음</button>
										<span class="after"></span>
									</div>
								</div>
								<ul class="clearfix cont s slick-initialized slick-slider">












									<div aria-live="polite" class="slick-list draggable">
										<div class="slick-track" style="opacity: 1; width: 2990px; transform: translate3d(-1840px, 0px, 0px); transition: transform 500ms ease 0s;">
											<li class="item slick-slide slick-cloned" role="option" tabindex="-1" style="width: 230px;" data-slick-index="-4" id="" aria-hidden="true">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=d16418ff7435233d397ca76eeb8de02352e2f1440befb29c34155b70a7ef77fe" alt="PHOTO ARK YOU WILL MISS ME WHEN I AM GONE 내셔널지오그래픽 사진전 <포토아크, 너의 이름은> 숲속에 찾아온 세상에서 가장 희귀한 동물원 2022.4.12 - 9.12 Tal. 02 747 7791 북서울꿈의숲 상상톡톡미술관 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('dt2203101117a01');return false;" class="r ReservationTitle" tabindex="-1">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33012&amp;menuNo=200004" class="d" tabindex="-1">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide slick-cloned" role="option" tabindex="-1" style="width: 230px;" data-slick-index="-3" id="" aria-hidden="true">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=f805f211498fecf61e4f5b1d8a2b868a4200ca52209836814279c2c87fbc6042" alt="2022 크리스마스 액츄얼리 2022-12-25 세종체임버홀 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('chpi2211241031a01');return false;" class="r ReservationTitle" tabindex="-1">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33742&amp;menuNo=200004" class="d" tabindex="-1">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide slick-cloned" role="option" tabindex="-1" style="width: 230px;" data-slick-index="-2" id="" aria-hidden="true">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=fd9bc68edb6f34132a7e6d1f87e31dc34200ca52209836814279c2c87fbc6042" alt="플러스 챔버 그룹과 함께하는 크리스마스 가족 음악회 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('pi2211101359a01');return false;" class="r ReservationTitle" tabindex="-1">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33708&amp;menuNo=200004" class="d" tabindex="-1">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide slick-cloned" role="option" tabindex="-1" style="width: 230px;" data-slick-index="-1" id="" aria-hidden="true">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=05d0edd024bcf5f352bf05271fc62f93ad9dfc36288f971a5bacb5e178aa54a2" alt="피아니스트 오은철의 화이트 크리스마스 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('pi2211101431a01');return false;" class="r ReservationTitle" tabindex="-1">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33710&amp;menuNo=200004" class="d" tabindex="-1">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide" role="option" tabindex="-1" style="width: 230px;" data-slick-index="0" aria-hidden="true">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=2b59bbae5ad2d8e5c4a30c3dd7ad5380&amp;streFileNm=b2af8d74e1235276407b1cdf9a59e7dc24078277cccf491c8dad44ed96e373b4" alt="나를 채우는 뽐나는 예술교양강좌 세종온클래스 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="https://academy.sejongpac.or.kr/academy/main/main.do" class="d" tabindex="-1">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide" role="option" tabindex="-1" style="width: 230px;" data-slick-index="1" aria-hidden="true">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=d16418ff7435233d397ca76eeb8de02352e2f1440befb29c34155b70a7ef77fe" alt="PHOTO ARK YOU WILL MISS ME WHEN I AM GONE 내셔널지오그래픽 사진전 <포토아크, 너의 이름은> 숲속에 찾아온 세상에서 가장 희귀한 동물원 2022.4.12 - 9.12 Tal. 02 747 7791 북서울꿈의숲 상상톡톡미술관 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('dt2203101117a01');return false;" class="r ReservationTitle" tabindex="-1">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33012&amp;menuNo=200004" class="d" tabindex="-1">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide" role="option" tabindex="-1" style="width: 230px;" data-slick-index="2" aria-hidden="true">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=f805f211498fecf61e4f5b1d8a2b868a4200ca52209836814279c2c87fbc6042" alt="2022 크리스마스 액츄얼리 2022-12-25 세종체임버홀 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('chpi2211241031a01');return false;" class="r ReservationTitle" tabindex="-1">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33742&amp;menuNo=200004" class="d" tabindex="-1">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide" role="option" tabindex="-1" style="width: 230px;" data-slick-index="3" aria-hidden="true">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=fd9bc68edb6f34132a7e6d1f87e31dc34200ca52209836814279c2c87fbc6042" alt="플러스 챔버 그룹과 함께하는 크리스마스 가족 음악회 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('pi2211101359a01');return false;" class="r ReservationTitle" tabindex="0">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33708&amp;menuNo=200004" class="d" tabindex="0">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide slick-current slick-active" role="option" tabindex="-1" style="width: 230px;" data-slick-index="4" aria-hidden="false">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=05d0edd024bcf5f352bf05271fc62f93ad9dfc36288f971a5bacb5e178aa54a2" alt="피아니스트 오은철의 화이트 크리스마스 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('pi2211101431a01');return false;" class="r ReservationTitle" tabindex="0">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33710&amp;menuNo=200004" class="d" tabindex="0">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide slick-cloned slick-active" role="option" tabindex="-1" style="width: 230px;" data-slick-index="5" id="" aria-hidden="false">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=2b59bbae5ad2d8e5c4a30c3dd7ad5380&amp;streFileNm=b2af8d74e1235276407b1cdf9a59e7dc24078277cccf491c8dad44ed96e373b4" alt="나를 채우는 뽐나는 예술교양강좌 세종온클래스 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="https://academy.sejongpac.or.kr/academy/main/main.do" class="d" tabindex="0">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide slick-cloned slick-active" role="option" tabindex="-1" style="width: 230px;" data-slick-index="6" id="" aria-hidden="false">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=d16418ff7435233d397ca76eeb8de02352e2f1440befb29c34155b70a7ef77fe" alt="PHOTO ARK YOU WILL MISS ME WHEN I AM GONE 내셔널지오그래픽 사진전 <포토아크, 너의 이름은> 숲속에 찾아온 세상에서 가장 희귀한 동물원 2022.4.12 - 9.12 Tal. 02 747 7791 북서울꿈의숲 상상톡톡미술관 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('dt2203101117a01');return false;" class="r ReservationTitle" tabindex="0">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33012&amp;menuNo=200004" class="d" tabindex="0">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide slick-cloned slick-active" role="option" tabindex="-1" style="width: 230px;" data-slick-index="7" id="" aria-hidden="false">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=f805f211498fecf61e4f5b1d8a2b868a4200ca52209836814279c2c87fbc6042" alt="2022 크리스마스 액츄얼리 2022-12-25 세종체임버홀 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('chpi2211241031a01');return false;" class="r ReservationTitle" tabindex="-1">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33742&amp;menuNo=200004" class="d" tabindex="-1">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li class="item slick-slide slick-cloned" role="option" tabindex="-1" style="width: 230px;" data-slick-index="8" id="" aria-hidden="true">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=fd9bc68edb6f34132a7e6d1f87e31dc34200ca52209836814279c2c87fbc6042" alt="플러스 챔버 그룹과 함께하는 크리스마스 가족 음악회 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">

																<a href="#" onclick="javascript:showPerformPop('pi2211101359a01');return false;" class="r ReservationTitle" tabindex="-1">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33708&amp;menuNo=200004" class="d" tabindex="-1">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
										</div>
									</div>
								</ul>
							</div>
						</div>
						<!-- #m2 -->
						<script>
							$("#m2 .rel").hover(function() {
								$(this).addClass("on");
							}, function() {
								$(this).removeClass("on");
							})
							$("#m2 .hover a").focus(function() {
								$(this).closest(".rel").addClass("on");
							})
							$("#m2 .hover a:last-child").focusout(function() {
								$(this).closest(".rel").removeClass("on");
							})
						</script>

						<div class="banner aos-init" data-aos="fade-up">
							<ul class="s slick-initialized slick-slider">

								<div aria-live="polite" class="slick-list draggable">
									<div class="slick-track" style="opacity: 1; width: 950px;">
									</div>
								</div>

							</ul>
						</div>
						<ul id="m3" class="clearfix half_w aos-init" data-aos="fade-up">
							<li class="group half_w clearfix">
								<ul class="half_w">
									<li class="group season"><a href="/portal/season/main_2022_2.do" class="pd">
											<div class="rel">
												<h2 class="tit-main2">
													<span class="small">2022 Sejong Season</span> <strong> 2022 세종<br> 가을·겨울 시즌<!-- <br>패키지 티켓  오픈 -->
													</strong>
												</h2>
												<span class="view"></span>
											</div>
									</a> <!-- 
						<a href="/portal/performance/performance/view.do?performIdx=31284&menuNo=200004" class="pd">
						<div class="rel">
							<h2 class="tit-main2">
										<span class="small">2020 Seajong Season</span>
										<strong>겨울시즌 프로그램
										<br><span class="bold">&lt;이루어질거야, 소원&gt;</span></strong>
									</h2>
							<span class="more">자세히 보기</span>
						</div>
						</a>
						--></li>
									<li class="group webzine">
										<!-- <div class="item pd">
							<div class="img" style="background-image:url('/static/portal/img/main/175.jpg')">
							</div>
							<div class="bot aca">
								<div class="rel">
									<h2 class="tit-main2">
										<span class="small">sejong center webzine</span>
										<strong>문화공간 175</strong>
									</h2>
									<a href="http://story175.sejongpac.or.kr" target="_blank" title="새창으로 이동합니다." class="more w">자세히 보기</a>
						세종문화N		</div>
							</div>
						</div> --> <a href="https://www.sejongpac.or.kr/portal/bbs/B0000040/list.do?menuNo=200199" class="pd">
											<div class="rel">
												<h2 class="tit-main2">
													<span class="small">Sejong Center Webzine</span> <strong> 세종문화N </strong> <span class="more"></span>
												</h2>
											</div>
									</a>
								</li>




							</ul>
						</li>
							<li class="r">
								<ul class="half_w clearfix">
									<li class="m_social">
										<div class="btns">
											<button class="prev slick-arrow" style="">이전</button>
											<button class="stop controls">정지</button>
											<button class="next slick-arrow" style="">다음</button>
										</div>
										<ul class="s slick-initialized slick-slider">
											<div aria-live="polite" class="slick-list draggable" style="height: 400px;">
												<div class="slick-track" style="opacity: 1; width: 1900px;">
													<li class="group slick-slide" data-slick-index="0" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
														<div class="img" style="background-image: url('/static/portal/img/main/c4.jpg')"></div>
														<h2 class="tit-main2">
															<span class="small">Social contribution</span> <strong>사회공헌</strong>
														</h2>
														<div class="txt">
															<strong class="color-purple4">청소년활성화사업</strong>
															<!-- <p>다양한 사회공헌 활동으로 서울시민의 문화활동을  지원합니다. </p> -->
														</div> <!-- <a href="/organization/main/contents.do?menuNo=500072" target="_blank" title="새창으로 이동합니다." class="more2"><img src="/static/portal/img/main/btn-play_new.png" alt="자세히 보기" /></a> --> <a href="https://www.sejongpac.or.kr/portal/subMain/dreamTree.do" target="_blank" title="새창으로 이동합니다." class="more2" tabindex="-1"><img src="/static/portal/img/main/btn-play_new.png" alt="자세히 보기"></a>
													</li>
													<li class="group slick-slide slick-current slick-active" data-slick-index="1" aria-hidden="false" role="option" tabindex="-1" style="width: 475px; position: relative; left: -475px; top: 0px; z-index: 999; opacity: 1;">
														<div class="img" style="background-image: url('/static/portal/img/main/c2.jpg')"></div>
														<h2 class="tit-main2">
															<span class="small">Social contribution</span> <strong>사회공헌</strong>
														</h2>
														<div class="txt">
															<strong class="color-purple4">연계사업 '예술로 동행(同行)'</strong>
															<!-- <p>서울시민을 위한 공연예술 네트워크 </p> -->
														</div> <a href="/organization/main/contents.do?menuNo=500074" target="_blank" title="새창으로 이동합니다." class="more2" tabindex="0"><img src="/static/portal/img/main/btn-play_new.png" alt="자세히 보기"></a>
													</li>
													<li class="group slick-slide" data-slick-index="2" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: -950px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
														<div class="img" style="background-image: url('/static/portal/img/main/c3_new.jpg')"></div>
														<h2 class="tit-main2">
															<span class="small">Social contribution</span> <strong>사회공헌</strong>
														</h2>
														<div class="txt">
															<strong class="color-purple4">천원의 행복 시즌2</strong>
															<!-- <p>마음의 휴식이 필요한 순간, 천원으로 만끽하는 예술을 통한 온전한 쉼  </p> -->
														</div> <a href="http://happy1000.sejongpac.or.kr" target="_blank" title="새창으로 이동합니다." class="more2" tabindex="-1"><img src="/static/portal/img/main/btn-play_new.png" alt="자세히 보기"></a>
													</li>
													<li class="group slick-slide" data-slick-index="3" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: -1425px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
														<div class="img" style="background-image: url('/static/portal/img/main/c6.jpg')"></div>
														<h2 class="tit-main2">
															<span class="small">Social contribution</span> <strong>사회공헌</strong>
														</h2>
														<div class="txt">
															<strong class="color-purple4">1사1촌자매결연</strong>
															<!-- <p>다양한 사회공헌 활동으로 서울시민의 문화활동을 지원합니다. </p> -->
														</div> <a href="/organization/main/contents.do?menuNo=500073" target="_blank" title="새창으로 이동합니다." class="more2" tabindex="-1"><img src="/static/portal/img/main/btn-play_new.png" alt="자세히 보기"></a>
													</li>
												</div>
											</div>
											<!-- 
							<li class="group">
								<div class="img" style="background-image:url('/static/portal/img/main/c1.jpg')"></div>
								<h2 class="tit-main2">
									<span class="small">Social contribution</span>
									<strong>사회공헌</strong>
								</h2>
								<div class="txt">
									<strong class="color-purple4">제로페이</strong>
									<p>간편함을 나눔으로 </p>
								</div>
								<a href="https://zeropaysupporters.or.kr/" target="_blank" title="새창으로 이동합니다." class="more2"><img src="/static/portal/img/main/btn-play_new.png" alt="자세히 보기" /></a>
							</li>
							-->



									</ul>
								</li>
									<li class="r group m_art">
										<div class="top">
											<div class="btns">
												<button class="prev slick-arrow" style="">이전</button>
												<button class="stop controls">정지</button>
												<button class="next slick-arrow" style="">다음</button>
											</div>

											<ul class="s slick-initialized slick-slider">
												<div aria-live="polite" class="slick-list draggable" style="height: 400px;">
													<div class="slick-track" style="opacity: 1; width: 4275px;">
														<li class="group slick-slide" data-slick-index="0" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
															<div class="img" style="background-image: url('/static/portal/img/main/artsgroup/2022/bg01.jpg')">
																<a href="http://sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300008" target="_blank" title="새창으로 이동합니다." class="" tabindex="-1">
																	<div class="tit-main2 pd">
																		<span class="small">Art groups</span> <strong>서울시예술단</strong> <span class="add">서울시국악관현악단</span>
																	</div>
																</a>
															</div>
														</li>
														<li class="group slick-slide slick-current slick-active" data-slick-index="1" aria-hidden="false" role="option" tabindex="-1" style="width: 475px; position: relative; left: -475px; top: 0px; z-index: 999; opacity: 1;">
															<div class="img" style="background-image: url('/static/portal/img/main/artsgroup/2022/bg02.jpg')">
																<a href="http://sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300013" target="_blank" title="새창으로 이동합니다." class="" tabindex="0">
																	<div class="tit-main2 pd">
																		<span class="small">Art groups</span> <strong>서울시예술단</strong> <span class="add">서울시무용단</span>
																	</div>
																</a>
															</div>
														</li>
														<li class="group slick-slide" data-slick-index="2" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: -950px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
															<div class="img" style="background-image: url('/static/portal/img/main/artsgroup/2022/bg03.jpg')">
																<a href="http://sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300019" target="_blank" title="새창으로 이동합니다." class="" tabindex="-1">
																	<div class="tit-main2 pd">
																		<span class="small">Art groups</span> <strong>서울시예술단</strong> <span class="add">서울시합창단 </span>
																	</div>
																</a>
															</div>
														</li>
														<li class="group slick-slide" data-slick-index="3" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: -1425px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
															<div class="img" style="background-image: url('/static/portal/img/main/artsgroup/bg4.jpg')">
																<a href="http://sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300025" target="_blank" title="새창으로 이동합니다." class="" tabindex="-1">
																	<div class="tit-main2 pd">
																		<span class="small">Art groups</span> <strong>서울시예술단</strong> <span class="add">서울시뮤지컬단</span>
																	</div>
																</a>
															</div>
														</li>
														<li class="group slick-slide" data-slick-index="4" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: -1900px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
															<div class="img" style="background-image: url('/static/portal/img/main/artsgroup/2022/bg05.jpg')">
																<a href="http://sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300030" target="_blank" title="새창으로 이동합니다." class="" tabindex="-1">
																	<div class="tit-main2 pd">
																		<span class="small">Art groups</span> <strong>서울시예술단</strong> <span class="add">서울시극단</span>
																	</div>
																</a>
															</div>
														</li>
														<li class="group slick-slide" data-slick-index="5" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: -2375px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
															<div class="img" style="background-image: url('/static/portal/img/main/artsgroup/2022/bg06.jpg')">
																<a href="http://sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300035" target="_blank" title="새창으로 이동합니다." class="" tabindex="-1">
																	<div class="tit-main2 pd">
																		<span class="small">Art groups</span> <strong>서울시예술단</strong> <span class="add">서울시오페라단</span>
																	</div>
																</a>
															</div>
														</li>
														<li class="group slick-slide" data-slick-index="6" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: -2850px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
															<div class="img" style="background-image: url('/static/portal/img/main/artsgroup/bg7.jpg')">
																<a href="http://sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300040" target="_blank" title="새창으로 이동합니다." class="" tabindex="-1">
																	<div class="tit-main2 pd">
																		<span class="small">Art groups</span> <strong>서울시예술단</strong> <span class="add">서울시유스오케스트라단</span>
																	</div>
																</a>
															</div>
														</li>
														<li class="group slick-slide" data-slick-index="7" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: -3325px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
															<div class="img" style="background-image: url('/static/portal/img/main/artsgroup/2022/bg08.jpg')">
																<a href="http://sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300047" target="_blank" title="새창으로 이동합니다." class="" tabindex="-1">
																	<div class="tit-main2 pd">
																		<span class="small">Art groups</span> <strong>서울시예술단</strong> <span class="add">서울시소년소녀합창단</span>
																	</div>
																</a>
															</div>
														</li>
														<li class="group slick-slide" data-slick-index="8" aria-hidden="true" role="option" tabindex="-1" style="width: 475px; position: relative; left: -3800px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
															<div class="img" style="background-image: url('/static/portal/img/main/artsgroup/2022/bg09.jpg')">
																<a href="http://sjartgroups.or.kr/sjartgroups/main/contents.do?menuNo=300051" target="_blank" title="새창으로 이동합니다." class="" tabindex="-1">
																	<div class="tit-main2 pd">
																		<span class="small">Art groups</span> <strong>서울시예술단</strong> <span class="add">서울시청소년국악단 </span>
																	</div>
																</a>
															</div>
														</li>
													</div>
												</div>









											</ul>
										</div>

								</li>
							</ul>
						</li>
						</ul>
						<div id="m4" class="aos-init" data-aos="fade-up">
							<ul class="half_w clearfix">
								<li class="l m_notice">
									<div class="tit-main">
										<span class="small">Notice</span>
										<h2 class="t">최신소식</h2>
										<p class="txt">
											<span class="block-pc">세종문화회관의 <br> 최신 소식을 알려드립니다.
											</span>
										</p>
									</div>
									<ul class="cont clearfix">
										<!-- <li class="item">
							<a href="/portal/bbs/B0000001/view.do?nttId=45146&menuNo=200042"><span class="t">[안내] 코로나19 특별방역대책에 따른 세종문화회관 관람안내</span></a>
							<span class="date">2021.11.30</span>
						</li> -->


										<li class="item"><a href="/portal/bbs/B0000001/view.do?nttId=45926&amp;menuNo=200042"><span class="t">[티켓오픈안내] &nbsp; 라이브러리컴퍼니 자선음악회 추가 좌석 티켓오픈 안내</span></a> <span class="date">2022.12.15</span></li>

										<li class="item"><a href="/portal/bbs/B0000001/view.do?nttId=45925&amp;menuNo=200042"><span class="t">[입찰공고] &nbsp; 세종문화회관 터보냉동기 구매설치 입찰공고(긴급)</span></a> <span class="date">2022.12.15</span></li>

								</ul> <a href="/portal/bbs/B0000001/list.do?menuNo=200042" class="more">더보기</a>
							</li>
								<li class="r popup_zone">
									<div class="tit-main">
										<span class="small">Popup Zone</span>
										<h2 class="t">팝업존</h2>
									</div>
									<div class="btns mb-st1 p">
										<button type="button" class="prev slick-arrow slick-hidden" aria-disabled="true" tabindex="-1">이전</button>
										<button type="button" class="controls stop">일시정지</button>
										<button type="button" class="next slick-arrow slick-hidden" aria-disabled="true" tabindex="-1">다음</button>
										<span class="after"></span>
									</div>
									<div class="w">
										<ul class="s slick-initialized slick-slider">





											<div aria-live="polite" class="slick-list draggable">
												<div class="slick-track" style="opacity: 1; width: 604px; transform: translate3d(0px, 0px, 0px);">
													<li class="slick-slide slick-current slick-active" role="option" tabindex="-1" style="width: 302px;" data-slick-index="0" aria-hidden="false"><a href="https://www.creativebloq.com/brand-impact-awards-winners-2022" target="_blank" title="새창으로 열립니다." tabindex="0">
															<div class="in">
																<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=4b3e3d9d2ca3ad1395b5126caf40404bbb6d9ec4bb1f6894357ee3bde7a73807&amp;streFileNm=95a51859d07d5eb6b745d26c016fe11052e2f1440befb29c34155b70a7ef77fe" alt="">
																<div class="hide">세종문화회관 CI 영국 브랜드 임팩트 어워드(Brand Impact Award) BRONZE 수상</div>
															</div>
													</a></li>
													<li class="slick-slide slick-active" role="option" tabindex="-1" style="width: 302px;" data-slick-index="1" aria-hidden="false"><a href="https://www.instagram.com/sejongcenter/" target="_blank" title="새창으로 열립니다." tabindex="0">
															<div class="in">
																<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=2b128253b55e283788516ff26464fb7cbb6d9ec4bb1f6894357ee3bde7a73807&amp;streFileNm=247914bc50fbf07b3df8596057dd712c6db30ab9edb0bb8e4f449a9903cb06fb" alt="">
																<div class="hide">세종문화회관 인스타</div>
															</div>
													</a></li>
												</div>
											</div>
										</ul>
									</div>
							</li>
							</ul>
						</div>
						<!-- #m4 -->
					</div>
					<!-- #m2, #m3, #m4 -->
				</div>
			</div>
			<!-- #cont -->
		</div>
		<script src="/static/portal/js/mainTemp.js?v=1"></script>
		<script src="/static/portal/js/common.js"></script>
		<!-- 메인 끝 -->

		<script src="/static/portal/js/aos.js"></script>
		<script>
			$(document).ready(function() {
				AOS.init({
				//easing: 'ease-in-out-sine'
				});

				if ($(window).width() > 1350) {
					//2020.01.31 수정요청사항 - 6초후에 메뉴 숨김
					setTimeout(function() {
						$('.btn-quick').click();
					}, 6000);
				}
			});
		</script>



		<!-- 만족도 조사 -->

		<!-- //만족도 조사 -->

		<footer id="footer">
			<div class="top">
				<div class="inner clearfix">
					<ul class="r clearfix">
						<li><label for="footlink" class="hide">패밀리 사이트 링크</label> <select id="footlink">
								<option value="">패밀리 사이트</option>
								<option value="http://academy.sejongpac.or.kr">세종예술아카데미​</option>
								<option value="http://happy1000.sejongpac.or.kr">천원의행복</option>
								<option value="http://sjartgroups.or.kr">서울시예술단​</option>
								<option value="http://sejongstory.or.kr">세종이야기·충무공이야기​</option>
								<!-- <option value="http://samcheonggak.or.kr">삼청각</option> -->
								<!-- <option value="http://dfac.sejongpac.or.kr">꿈의숲 아트센터</option> -->
						</select>
							<button type="button" title="새창으로 이동합니다.">GO</button></li>
						<li><label for="footlink2" class="hide">관련 사이트 링크</label> <select id="footlink2">
								<option value="">관련사이트</option>
								<option value="http://www.seoul.go.kr/main/index.html">서울특별시​</option>
								<option value="https://www.clean.go.kr/cmm/secCtfc.do?menuId=M0406&amp;uprMenuId=M0392&amp;rqsTyCd=005&amp;menuCode=acs">공공기관 채용비리신고​</option>
								<option value="http://www.acrc.go.kr/acrc/index.do">국민권익 위원회</option>
								<option value="https://seoulsolution.kr/">서울정책아카이브</option>
								<option value="https://www.120dasan.or.kr/dsnc/main/main.do">120 다산콜센터​</option>
								<option value="http://eungdapso.seoul.go.kr/">서울특별시 응답소</option>
								<option value="http://culture.seoul.go.kr/index.do?_method=meet">서울문화포털</option>
								<option value="https://opengov.seoul.go.kr/">서울정보소통광장</option>
						</select>
							<button type="button" title="새창으로 이동합니다.">GO</button></li>
					</ul>
					<ul class="l">
						<li><a href="/portal/main/contents.do?menuNo=200148">개인정보처리방침</a></li>
						<li><a href="/portal/main/contents.do?menuNo=200150">이메일무단수집거부</a></li>
						<li><a href="/portal/main/contents.do?menuNo=200151">고객서비스헌장</a></li>
						<li><a href="/portal/main/contents.do?menuNo=200082">오시는 길 </a></li>
						<li><a href="http://210.91.5.180" target="_blank" title="새창으로 이동합니다.">원격지원</a></li>
						<li><a href="/portal/singl/siteMap/list.do?menuNo=200162">사이트 맵</a></li>
					</ul>
				</div>
			</div>
			<div class="txt inner">
				<div class="foot_notice">
					<h2 class="t">Notice</h2>
					<ul class="fs slick-initialized slick-slider slick-vertical"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous slide" role="button" style="">Previous slide</button>

						<div aria-live="polite" class="slick-list draggable" style="height: 44.1875px;">
							<div class="slick-track" style="opacity: 1; height: 310px; transform: translate3d(0px, -44px, 0px);">
								<li class="item slick-slide slick-cloned" data-slick-index="-1" id="" aria-hidden="true" tabindex="-1" style="width: 720px;">
									<div>
										<a href="/portal/bbs/B0000001/view.do?nttId=45918&amp;menuNo=200042" tabindex="-1">[채용공고] &nbsp;세종문화회관 미술관 기획전시 도슨트 및 스탭 모집 공고</a>
									</div>
								</li>
								<li class="item slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" role="option" tabindex="-1" style="width: 720px;">
									<div>
										<a href="/portal/bbs/B0000001/view.do?nttId=45926&amp;menuNo=200042" tabindex="0">[티켓오픈안내] &nbsp;라이브러리컴퍼니 자선음악회 추가 좌석 티켓오픈 안내</a>
									</div>
								</li>
								<li class="item slick-slide" data-slick-index="1" aria-hidden="true" role="option" tabindex="-1" style="width: 720px;">
									<div>
										<a href="/portal/bbs/B0000001/view.do?nttId=45925&amp;menuNo=200042" tabindex="-1">[입찰공고] &nbsp;세종문화회관 터보냉동기 구매설치 입찰공고(긴급)</a>
									</div>
								</li>
								<li class="item slick-slide" data-slick-index="2" aria-hidden="true" role="option" tabindex="-1" style="width: 720px;">
									<div>
										<a href="/portal/bbs/B0000001/view.do?nttId=45924&amp;menuNo=200042" tabindex="-1">[입찰공고] &nbsp;꿈의숲아트센터 시설(시설,청소,경비,무대)관리 용역 전자입찰 공고</a>
									</div>
								</li>
								<li class="item slick-slide" data-slick-index="3" aria-hidden="true" role="option" tabindex="-1" style="width: 720px;">
									<div>
										<a href="/portal/bbs/B0000001/view.do?nttId=45923&amp;menuNo=200042" tabindex="-1">[입찰공고] &nbsp;세종문화티켓 (서비스플라자, 현장매표소) 위탁 운영사 선정 입찰공고</a>
									</div>
								</li>
								<li class="item slick-slide" data-slick-index="4" aria-hidden="true" role="option" tabindex="-1" style="width: 720px;">
									<div>
										<a href="/portal/bbs/B0000001/view.do?nttId=45918&amp;menuNo=200042" tabindex="-1">[채용공고] &nbsp;세종문화회관 미술관 기획전시 도슨트 및 스탭 모집 공고</a>
									</div>
								</li>
								<li class="item slick-slide slick-cloned" data-slick-index="5" id="" aria-hidden="true" tabindex="-1" style="width: 720px;">
									<div>
										<a href="/portal/bbs/B0000001/view.do?nttId=45926&amp;menuNo=200042" tabindex="-1">[티켓오픈안내] &nbsp;라이브러리컴퍼니 자선음악회 추가 좌석 티켓오픈 안내</a>
									</div>
								</li>
							</div>
						</div>









						<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next slide" role="button" style="">Next slide</button></ul>
				</div>
				<div class="clearfix">
					<div class="l">
						<address>
							재단법인 세종문화회관 서울특별시 종로구 세종대로 175 (세종로) (우)03172<br> 대표자 : 안호상 사업자등록번호 : 101-82-06773 <br> 통신판매업신고 : 서울종로-0988호 <a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1018206773" target="_blank" class="link" title="새 창 열림">사업자 정보 확인</a>
						</address>

						<p class="copyright">COPYRIGHT(C) SEJONG CENTER FOR THE PERFORMING ARTS. ALL RIGHTS RESERVED</p>
					</div>

					<div class="r_w">
						<a href="http://www.i-award.or.kr/Web/Assess/FinalCandidateView.aspx?REG_SEQNO=10198" target="_blank" title="새창 열림"><img src="/static/portal/img/common/WA2020_winner.png" alt="WEB AWARD 20 WINNER" width="85"></a>
						<div class="link clearfix">
							<script>
								window
										.addEventListener(
												'DOMContentLoaded',
												function() {
													var m3_b = '';
													if (document.cookie
															.indexOf('ACEUACS=') > -1) {
														var m3_b = document.cookie
																.substr(
																		document.cookie
																				.indexOf('ACEUACS=') + 8,
																		19);
													}
													document
															.getElementById('e2230b85').src = 'https://delivery.dighty.com/www/delivery/afr.php?zoneid=509&bd='
															+ m3_b
															+ '&cb=INSERT_RANDOM_NUMBER_HERE';
												});
							</script>
							<!-- <iframe id='e2230b85' name='e2230b85' width='300' height='100' style='border:none'>
						<a href='https://delivery.dighty.com/www/delivery/ck.php?n=e2230b85&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'>
							<img src='https://delivery.dighty.com/www/delivery/avw.php?zoneid=509&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=e2230b85' alt='' />
						</a>
					</iframe>  -->
							<!-- <iframe id='e2230b85' name='e2230b85' width='300' height='100'  title="서울시 배너"></iframe> -->
							<div class="">
								<!-- Dighty : [서울문화포털] 메인하단 (300*100) 태그 -->
								<script>
								<!--//<![CDATA[
									var m3_b = '';
									var m3_u = (location.protocol == 'https:'
											? 'https://delivery.dighty.com/www/delivery/ajs.php'
											: 'http://delivery.dighty.com/www/delivery/ajs.php');
									var m3_r = Math
											.floor(Math.random() * 99999999999);
									if (document.cookie.indexOf('ACEUACS=') > -1) {
										var m3_b = document.cookie
												.substr(
														document.cookie
																.indexOf('ACEUACS=') + 8,
														19);
									}
									if (!document.MAX_used)
										document.MAX_used = ',';
									document
											.write("<scr"
													+ "ipt type='text/javascript' src='"
													+ m3_u);
									document.write("?zoneid=940");
									document.write('&amp;cb=' + m3_r);
									if (m3_b != '')
										document.write('&amp;bd=' + m3_b);
									if (document.MAX_used != ',')
										document.write("&amp;exclude="
												+ document.MAX_used);
									document
											.write(document.charset
													? '&amp;charset='
															+ document.charset
													: (document.characterSet
															? '&amp;charset='
																	+ document.characterSet
															: ''));
									document.write("&amp;loc="
											+ escape(window.location));
									if (document.referrer)
										document.write("&amp;referer="
												+ escape(document.referrer));
									if (document.context)
										document.write("&context="
												+ escape(document.context));
									if (document.mmm_fo)
										document.write("&amp;mmm_fo=1");
									document.write("'><\/scr"+"ipt>");
									//]]>
								</script>
								<script type="text/javascript" src="https://delivery.dighty.com/www/delivery/ajs.php?zoneid=940&amp;cb=82362183283&amp;charset=UTF-8&amp;loc=https%3A//www.sejongpac.or.kr/portal/main/main.do&amp;referer=https%3A//www.sejongpac.or.kr/portal/bbs/B0000002/list.do%3FmenuNo%3D200012"></script>
								<a href="https://delivery.dighty.com/www/delivery/ck.php?oaparams=2__bannerid=10549__zoneid=940__cb=bcc8cc67f3__oadest=https%3A%2F%2Fsafecity.seoul.go.kr%2Facttip%2FactTipIndex.do%3Ftype_code%3DDHTY003" target="_blank" rel="noopener noreferrer"><img src="https://cm.dighty.com/creative/46fba3c841adf6c3e73f6c29d138c2ca.jpg" width="300" height="100" alt="안전하고 똑똑하게 겨울나기 대설 특보 발령시 이렇게 대비하세요" title="안전 하고 똑똑하게 겨울나기 대설 특보 발령시 이렇게 대비하세요"></a>
								<div id="beacon_bcc8cc67f3" style="position: absolute; left: 0px; top: 0px; visibility: hidden;">
									<img src="https://delivery.dighty.com/www/delivery/lg.php?bannerid=10549&amp;campaignid=1557&amp;zoneid=940&amp;loc=https%3A%2F%2Fwww.sejongpac.or.kr%2Fportal%2Fmain%2Fmain.do&amp;referer=https%3A%2F%2Fwww.sejongpac.or.kr%2Fportal%2Fbbs%2FB0000002%2Flist.do%3FmenuNo%3D200012&amp;cb=bcc8cc67f3" width="0" height="0" alt="" style="width: 0px; height: 0px;">
								</div>

								<noscript>
									<a href='https://delivery.dighty.com/www/delivery/ck.php?n=8d6dc35e&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'> <img src='https://delivery.dighty.com/www/delivery/avw.php?zoneid=940&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=8d6dc35e' alt="">
									</a>
								</noscript>
							</div>


						</div>
						<div class="r">
							<ul class="banner clearfix">
								<!-- <li><a href="http://www.goodcontent.kr/upload_public/CERTIDW/2018-06-0021_d9el2kqx85l531f20180607075350.png" target="_blank" title="새 창 열림"><img src="/static/portal/img/common/f_b1.gif" alt="굿 콘텐츠 서비스 Good Content Service" /></a></li> -->
								<li class="seoul"><a href="https://www.seoul.go.kr/main/index.jsp" target="_blank" title="새창 열림"> <img src="/static/portal/img/common/seoul.png" alt="서울시 휘장">
								</a></li>
								<li class="web"><a href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110" target="_blank" title="새 창 열림"><img src="/static/commons/img/web.png" alt="과학기술정보통신부 WEB ACCESSIBILITY"></a></li>
							</ul>
							<p>
								전화예매 및 문의 : <strong>02-399-1000</strong>
							</p>
						</div>
					</div>
				</div>
			</div>
			<button type="button" class="gotop" style="opacity: 0.7; cursor: pointer; display: none;">TOP</button>
		</footer>


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

			console.log("248");
		</script>



	</section>










</body>










</html>