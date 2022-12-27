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
	<title>대관공고(목록) | 대관안내 |</title>
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
<body spellcheck="false" class="vsc-initialized">
	<section id="wrap">
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
		<span itemscope="" itemtype="http://schema.org/Organization" style="display: none;">
			<link itemprop="url" href="https://www.sejongpac.or.kr"> <a itemprop="sameAs" href="https://www.youtube.com/channel/UCCqaPJqI5q1kfO51qWWOjrQ"><span class="hide">유튜브</span></a> <a itemprop="sameAs" href="https://www.instagram.com/sejongcenter/"><span class="hide">인스타그램</span></a> <a itemprop="sameAs" href="https://www.facebook.com/sjcenter"><span class="hide">페이스북</span></a> <a itemprop="sameAs" href="https://blog.naver.com/sejongnanum"><span class="hide">블로그</span></a> <a itemprop="sameAs" href="https://twitter.com/SEJONG_CENTER"><span class="hide">트위터</span></a>
		</span>
		<script src="/static/portal/js/ksearch/top_apc.js"></script>
		<script src="/static/portal/js/jquery.rwdImageMaps.js"></script>
		<div id="seoul-common-gnb"></div>
		
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->
		
		<div id="depth_w" class="">
			<div class="inner">
				<ul class="clearfix dot dep1 li2">
					<li class="home"><span><span>HOME</span></span></li>
					<li>
						<div class="rel">
							<a href="#"><span>대관안내</span></a>
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
							<a href="#"><span>대관공고</span></a>
							<ul class="depth" style="display: none;">
								<li><a href="https://www.sejongpac.or.kr/portal/bbs/B0000002/list.do?menuNo=200012"><span>대관공고</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200018"><span>대관신청</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200119"><span>세종문화회관 대관</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200226"><span>꿈의숲아트센터 대관</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200142"><span>기타대관</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200016"><span>홈페이지 배너신청</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200172"><span>티켓판매절차</span></a></li>
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
		
		<!-- 본문 시작 -->
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
					<div class="hire_top f18 inner">
						<dl class="txt">
							<dt>대관 진행절차</dt>
							<dd>전시장과 공연장은 정해진 시기에 대관신청을 하신 후 소정의 심사를 거쳐 사용하실 수 있습니다.</dd>
						</dl>
						<ol class="clearfix">
							<li><strong class="no color-purple">01</strong>
								<div class="cont">
									<strong class="">공고</strong> <span class="small">(정기, 수시)</span>
								</div></li>
							<li><strong class="no color-purple">02</strong>
								<div class="cont">
									<strong class="">대관신청</strong>
								</div></li>
							<li><strong class="no color-purple">03</strong>
								<div class="cont">
									<strong class="">심사</strong>
								</div></li>
							<li><strong class="no color-purple">04</strong>
								<div class="cont">
									<strong class="">승인통보</strong>
								</div></li>
							<li><strong class="no color-purple">05</strong>
								<div class="cont">
									<strong class="">계약</strong>
								</div></li>
						</ol>
					</div>
					
					<article class="bbs-view inner">
						<div class="in">
							<header class="tit long">
								<span class="cate bg-black_r">종료</span>
								<div class="t">
									<strong>(재)세종문화회관 2023년도 공연장 2차 수시대관 공고</strong>
								</div>
								<div class="date long">
									<span>공고기간 <em>2022.09.28~2022.10.07</em></span> <span>등록일 <em>2022.09.28</em></span>
								</div>
							</header>
							<div class="cont">
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<strong style="font-size: 14pt;">
										<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 24px;="" style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
											<span malgun="" gothic";="" font-size:="" 18.6667px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 14pt;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 18.6667px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">(</span></span>
										</span>
										<span malgun="" gothic";="" font-size:="" 18.6667px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:=""
										0px;"="" 맑은="" 고딕";="" 14pt;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 18.6667px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
										<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">재</span></span>
										<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 24px;="" style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
											<span malgun="" gothic";="" font-size:="" 18.6667px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 14pt;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 18.6667px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
												<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
														style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">)</span>
											</span>
										</span>
										<span malgun="" gothic";="" font-size:="" 18.6667px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 14pt;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 18.6667px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
											<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">세종문화회관&nbsp;</span>
										</span>
										<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 24px;="" style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
											<span malgun="" gothic";="" font-size:="" 18.6667px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";=""
												14pt;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 18.6667px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
												<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">2023</span>
											</span>
										</span>
										<span malgun="" gothic";="" font-size:="" 18.6667px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 14pt;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 18.6667px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
											<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">년도 공연장&nbsp;</span>
										</span>
										<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 24px;=""style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
											<span malgun="" gothic";="" font-size:="" 18.6667px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 14pt;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 18.6667px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
											<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">2</span>
											</span>
										</span>
										<span malgun="" gothic";="" font-size:="" 18.6667px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 14pt;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 18.6667px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
											<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은=""
												고딕";="" 24px;="" style="font-size: 14pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">차 수시대관 공고
											</span>
										</span>
									</strong>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">2023</span>년도 세종문화회관 공연장&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">2</span>차 수시대관을 공고하오니 많은 관심 바랍니다
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									■&nbsp;<strong 맑은="" 고딕";="" font-size:="" 12pt;"="">대관 가능 공연장</strong>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<table class="tg" 맑은="" 고딕";"="" style="border-collapse: collapse; border-spacing: 0px; width: 950px; text-align: center; font-family: GmarketSans; border-width: 2px 0px; border-top-style: solid; border-top-color: rgb(189, 189, 189); border-bottom-style: solid; border-bottom-color: rgb(189, 189, 189); border-right-style: initial; border-right-color: initial; border-left-style: initial; border-left-color: initial; font-size: 12pt;">
									<tbody 맑은="" 고딕";"="" style="font-size: 12pt;">
										<tr class="tg-2_1" 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">구 분</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">세종대극장</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													세종<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">M</span>씨어터
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													세종<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">S</span>씨어터
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">세종체임버홀</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">좌석 수</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3,022</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">609</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">328</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">443</span>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									■<strong 맑은="" 고딕";="" font-size:="" 12pt;"="">&nbsp;대관 대상</strong>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									○&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">2023</span>년 내 공고된 일정에 공연 가능한 전 장르 작품
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									■&nbsp;<strong 맑은="" 고딕";="" font-size:="" 12pt;"="">공연장별 대관 가능 일정</strong>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<table class="tg" 맑은="" 고딕";"="" style="border-collapse: collapse; border-spacing: 0px; width: 950px; text-align: center; font-family: GmarketSans; border-width: 2px 0px; border-top-style: solid; border-top-color: rgb(189, 189, 189); border-bottom-style: solid; border-bottom-color: rgb(189, 189, 189); border-right-style: initial; border-right-color: initial; border-left-style: initial; border-left-color: initial; font-size: 12pt;">
									<tbody 맑은="" 고딕";"="" style="font-size: 12pt;">
										<tr class="tg-2_1" 맑은="" 고딕";"="">
											<td width="89" rowspan="2" valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span class="tg-2_1" 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="background-color: rgb(239, 239, 239); border-color: inherit; font-weight: bold; vertical-align: middle; font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">공연장</span>
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
												<p 맑은="" 고딕";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 16px;">
													<span class="tg-2_1" 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="background-color: rgb(239, 239, 239); border-color: inherit; font-weight: bold; vertical-align: middle; font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">월</span>
												</p>
											</td>
											<td colspan="2" valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" font-size:="" 12pt;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 16px;">세종대극장</p>
												<p 맑은="" 고딕";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 16px;">&nbsp;</p>
											</td>
											<td colspan="2" valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" font-size:="" 12pt;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 16px;">
													세종<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">M</span>씨어터
												</p>
												<p 맑은="" 고딕";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 16px;">&nbsp;</p>
											</td>
											<td colspan="2" valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" font-size:="" 12pt;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 16px;">
													세종<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">S</span>씨어터
												</p>
												<p 맑은="" 고딕";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 16px;">&nbsp;</p>
											</td>
											<td colspan="2" valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" font-size:="" 12pt;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 16px;">세종체임버홀</p>
												<p 맑은="" 고딕";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 16px;">&nbsp;</p>
											</td>
										</tr>
										<tr class="tg-2_1" 맑은="" 고딕";"="">
											<td width="140" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">날짜</p>
											</td>
											<td width="64" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">일수</p>
											</td>
											<td width="96" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span class="tg-2_1" 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="background-color: rgb(239, 239, 239); border-color: inherit; font-weight: bold; vertical-align: middle; font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">날짜</span>
												</p>
											</td>
											<td width="78" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span class="tg-2_1" 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="background-color: rgb(239, 239, 239); border-color: inherit; font-weight: bold; vertical-align: middle; font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">일수</span>
												</p>
											</td>
											<td width="130" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span class="tg-2_1" 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="background-color: rgb(239, 239, 239); border-color: inherit; font-weight: bold; vertical-align: middle; font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">날짜</span>
												</p>
											</td>
											<td width="79" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span class="tg-2_1" 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="background-color: rgb(239, 239, 239); border-color: inherit; font-weight: bold; vertical-align: middle; font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">일수</span>
												</p>
											</td>
											<td width="149" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span class="tg-2_1" 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="background-color: rgb(239, 239, 239); border-color: inherit; font-weight: bold; vertical-align: middle; font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">날짜</span>
												</p>
											</td>
											<td width="85" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span class="tg-2_1" 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="background-color: rgb(239, 239, 239); border-color: inherit; font-weight: bold; vertical-align: middle; font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">일수</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">1</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3(</span>화<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)~11(</span>수<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">9</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">2(</span>월<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 23(</span>월<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">2</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">2</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">1(</span>수<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 3(</span>금<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">2</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">14(</span>화<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)~16(</span>목<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">9(</span>목<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 14(</span>화<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 17(</span>금<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">),</span>
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">21(</span>화<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 27(</span>월<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">),</span>
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">29(</span>수<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)~31(</span>금<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">8</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">4</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">17(</span>월<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">1</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">5</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3(</span>수<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)~6(</span>토<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">4</span>
												</p>
											</td>
											<td valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3(</span>수<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 9(</span>화<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">),</span>
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">15(</span>월<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 17(</span>수<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">4</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">6</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">19(</span></u><u 맑은="" 고딕";"="" style="font-size: 12pt;">월</u><u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span></u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">~30(</span>금<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">12</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">7</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">1(</span>토<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)~2(</span>일<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">2</span>
												</p>
											</td>
											<td valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">5(</span>수<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 10(</span>월<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">),</span>
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">12(</span>수<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 14(</span>금<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">4</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">8</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">28(</span>월<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 29(</span>화<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">2</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">9</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">16(</span>토<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)~</span><u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">25(</span></u><u 맑은="" 고딕";"="" style="font-size: 12pt;">월</u><u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span></u>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">10</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">16(</span>토<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)~30(</span>토<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">15</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">10</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">1(</span>일<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">1</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">13(</span>금<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 14(</span>토<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 30(</span>월<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">11</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">8(</span>수<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">1</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">20(</span></u><u 맑은="" 고딕";"="" style="font-size: 12pt;">월</u><u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span></u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">~21(</span>화<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">2</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3(</span>금<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 20(</span>월<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">2</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">12</span>월
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">6(</span>수<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 18(</span>월<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">), 28(</span>목<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3</span>
												</p>
											</td>
										</tr>
										<tr class="tg-2_1" 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">계</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">22</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">1</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">36</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">31</span>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">*&nbsp;</span>
									밑줄 친 날짜는 월요일이며
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>
									해당일은 원칙적으로 공연장 휴무로 운영합니다
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" tyle="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									&nbsp; 월요일에 공연대관을 신청한 경우 별도의 대관심의를 진행하지 않고 부결로 처리합니다
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.<br></span>
									&nbsp; 단
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>
									공연대관 기간 전후의 월요일인 경우 준비
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">/</span>
									철수대관 목적에 한하여 사용할 수 있습니다
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<strong 맑은="" 고딕";="" font-size:="" 12pt;"="">
										<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">* 2023</span>
										년 체임버홀 공연장 일요일 휴무 시범 운영
									</strong>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									■<strong 맑은="" 고딕";="" font-size:="" 12pt;"="">&nbsp;공고 및 접수</strong>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									○ 대관공고&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">: 2022</span>
									년&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">9</span>
									월&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">28</span>
									일
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">(</span>
									수
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">)</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									○ 접수기간&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">: 2022</span>
									년&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">9</span>월&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">28</span>일<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">(</span>
									수
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">) 11:00 ~ 10</span>
									월&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">7</span>
									일
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">(</span>
									금
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">) 16:00</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									○ 접수방법&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">:&nbsp;</span>
									세종문화회관 대관시스템에서 온라인으로 신청
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>대관시스템 주소&nbsp;
									<strong>
										<a href="https://frontrent.sejongpac.or.kr/SejongRentFront/index.jsp" style="color: rgb(204, 114, 61);">
											<u>
												<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
													<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">https://frontrent.sejongpac.or.kr/SejongRentFront/index.jsp</span>
												</span>
											</u>
										</a>
									</strong>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>
									로그인&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">&gt;&nbsp;</span>
									대관관리&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">&gt;&nbsp;</span>
									대관공고&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">&gt; 2023</span>
									년도 공연장&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">2</span>
									차 수시대관 공고&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">&gt;&nbsp;</span>
									대관신청 버튼 클릭
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<a href="https://frontrent.sejongpac.or.kr/SejongRentFront/index.jsp" target="_blank" 맑은="" 고딕";"="" noto="" sans="" kr";="" font-size:="" 16px;="" letter-spacing:="" -0.48px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-decoration-line: none;"><img src="https://www.sejongpac.or.kr/upload/2022/03/20220330_094722784_79447.jpg" alt="세종문화회관 대관시스템 바로가기" border="0" 맑은="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px solid; max-width: 100%; width: 350px; height: 60px;"></a>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									○ 제출서류&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">:&nbsp;</span>
									자료 미비 시 심사상의 불이익 있음
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>
									기본신청서&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">[</span>
									필수
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">] (</span>
									대관시스템에 입력
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">)</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>
									공연계획서&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">[</span>
									필수
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">] (</span>
									대관시스템에 입력
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">)</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>
									기타 증명서류 및 확인서 등&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">[</span>
									선택
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">] (</span>
									대관시스템 내 공연계획서에 첨부파일로 업로드
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">)</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									○ 아래&nbsp;
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">URL</span>
									을 통해 세종문화회관 대관 절차에 대해 상세히 안내받으실 수 있습니다
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<strong>
										<a href="https://www.sejongpac.or.kr/venue-hire" style="color: rgb(204, 114, 61);">
											<u>
												<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
													<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">https://www.sejongpac.or.kr/venue-hire</span>
												</span>
											</u>
										</a>
									</strong>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;="" style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<div class="hwp_editor_board_content" data-hjsonver="1.0" data-jsonlen="13302" noto="" sans="" kr";"="" 맑은="" 고딕";"="" malgun="" gothic";"="" kr";="" font-size:="" 16px;"="" style="font-size: 16px; color: rgb(17, 17, 17); letter-spacing: -0.48px; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: normal; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
									<p noto="" sans="" kr";"="" 맑은="" 고딕";"="" malgun="" gothic";"="" kr";="" font-size:="" 16px;"="" gothic";="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
										<strong 맑은="" 고딕";"="" 고딕";="" font-size:="" 12pt;"="" 12pt;="" color:="" black;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 12pt;">
											<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
												<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">■ 추진일정(안)</span>
											</span>
										</strong>
									</p>
								</div>
								<div class="hwp_editor_board_content" data-hjsonver="1.0" data-jsonlen="13302" noto="" sans="" kr";="" font-size:="" 16px;"="" times="" new="" roman";="" 12pt;"="" malgun="" gothic";="" gothic";"="" style="font-size: 16px; color: rgb(17, 17, 17); letter-spacing: -0.48px; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: normal; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
									<table class="_dext_table_border_l _dext_table_border_r _dext_table_border_t _dext_table_border_b" style="border: 0px rgb(0, 0, 0); margin: 0px; padding: 0px; border-collapse: collapse; border-spacing: 0px; width: 1001px; max-width: 100%; table-layout: fixed;">
										<tbody style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px;">
											<tr>
												<td valign="middle" scope="" ");="" background-repeat:="" no-repeat;="" background-color:="" rgb(234,="" 234,="" 234);"="" background-position:="" initial;="" background-size:="" background-origin:="" background-clip:="" none")="" 234);="" width:="" 102px;="" height:="" 25px;"="" ");"="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border-width: 1px 1px 2px; border-style: solid; border-color: rgb(189, 189, 189); border-image: initial; background-image: url(">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-weight: bold; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">공고게시</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 35px; height: 25px;">
													<p noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<br 맑은="" 고딕";="" font-size:="" 12pt;"="" 고딕";"="" style="box-sizing: border-box; font-size: 12pt;">
													</p>
												</td>
												<td valign="middle" scope="" ");="" background-repeat:="" no-repeat;="" background-color:="" rgb(234,="" 234,="" 234);"="" background-position:="" initial;="" background-size:="" background-origin:="" background-clip:="" none")="" 234);="" width:="" 110px;="" height:="" 25px;"="" ");"="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border-width: 1px 1px 2px; border-style: solid; border-color: rgb(189, 189, 189); border-image: initial; background-image: url(">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-weight: bold; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">접수</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 30px; height: 25px;">
													<p noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<br 맑은="" 고딕";="" font-size:="" 12pt;"="" 고딕";"="" style="box-sizing: border-box; font-size: 12pt;">
													</p>
												</td>
												<td valign="middle" scope="" ");="" background-repeat:="" no-repeat;="" background-color:="" rgb(234,="" 234,="" 234);"="" background-position:="" initial;="" background-size:="" background-origin:="" background-clip:="" none")="" 234);="" width:="" 102px;="" height:="" 25px;"="" ");"="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border-width: 1px 1px 2px; border-style: solid; border-color: rgb(189, 189, 189); border-image: initial; background-image: url(">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-weight: bold; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">접수 검토</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 28px; height: 25px;">
													<p noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<br 맑은="" 고딕";="" font-size:="" 12pt;"="" 고딕";"="" style="box-sizing: border-box; font-size: 12pt;">
													</p>
												</td>
												<td valign="middle" scope="" ");="" background-repeat:="" no-repeat;="" background-color:="" rgb(234,="" 234,="" 234);"="" background-position:="" initial;="" background-size:="" background-origin:="" background-clip:="" none")="" 234);="" width:="" 95px;="" height:="" 25px;"="" ");"="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border-width: 1px 1px 2px; border-style: solid; border-color: rgb(189, 189, 189); border-image: initial; background-image: url(">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-weight: bold; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">대관심의</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 27px; height: 25px;">
													<p noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<br 맑은="" 고딕";="" font-size:="" 12pt;"="" 고딕";"="" style="box-sizing: border-box; font-size: 12pt;">
													</p>
												</td>
												<td valign="middle" scope="" ");="" background-repeat:="" no-repeat;="" background-color:="" rgb(234,="" 234,="" 234);"="" background-position:="" initial;="" background-size:="" background-origin:="" background-clip:="" 234);="" width:="" 166.007px;"="" none")="" 106px;="" height:="" 25px;"="" ");"="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border-width: 1px 1px 2px; border-style: solid; border-color: rgb(189, 189, 189); border-image: initial; background-image: url(">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-weight: bold; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">결과통보</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
											</tr>
											<tr>
												<td valign="middle" scope="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border: 1px solid rgb(189, 189, 189); width: 102px; height: 63px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">홈페이지</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 35px; height: 63px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">⇨</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border: 1px solid rgb(189, 189, 189); width: 110px; height: 63px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">대관시스템</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 30px; height: 63px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">⇨</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border: 1px solid rgb(189, 189, 189); width: 102px; height: 63px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">신청 건 확인</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">서류미비 등 검토</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 28px; height: 63px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">⇨</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border: 1px solid rgb(189, 189, 189); width: 95px; height: 63px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">심의위원회 개최</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 27px; height: 63px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
															<span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;">
																	<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">
																		<span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">⇨</span>
																	</span>
																</span>
															</span>
														</span>
													</p>
												</td>
												<td valign="middle" scope="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border: 1px solid rgb(189, 189, 189); width: 96px; height: 63px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"=""
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"
															><span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">결과정리 및</span></span></span></span></span>
													</p>
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" font-size:="" 13.3333px;"="" 맑은="" 고딕";="" 12pt;"="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; letter-spacing: -1pt; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" noto="" sans="" kr";="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"=""
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"
															><span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">승인 안내</span></span></span></span></span>
													</p>
												</td>
											</tr>
											<tr>
												<td valign="middle" scope="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border: 1px solid rgb(189, 189, 189); width: 102px; height: 35px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 13.3333px;="" malgun="" gothic";="" style="line-height: 32px; text-align: center; word-break: keep-all; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
														<span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" font-size:="" 12pt;="" 24px;="" color:="" black;="" letter-spacing:="" -1pt;="" 17.3333px;="" malgun="" gothic";="" 32px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">9.28(수</span></span></span><span 맑은="" 고딕";="" line-height:=""
															28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" font-size:="" 12pt;="" 24px;="" color:="" black;="" letter-spacing:="" -1pt;="" 17.3333px;="" malgun="" gothic";="" 32px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
														><span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">)</span></span></span>
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 35px; height: 35px;">
													<p noto="" sans="" kr";="" font-size:="" 13.3333px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<strong 맑은="" 고딕";="" font-size:="" 12pt;"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; color: rgb(9, 0, 255); font-size: 12pt;"><br 맑은="" 고딕";="" font-size:="" 12pt;"="" 고딕";"="" style="box-sizing: border-box; font-size: 12pt;"></strong>
													</p>
												</td>
												<td valign="middle" scope="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border: 1px solid rgb(189, 189, 189); width: 110px; height: 35px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 13.3333px;="" malgun="" gothic";="" 맑은="" 고딕";="" 12pt;="" style="line-height: 32px; text-align: center; word-break: keep-all; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
														9.28(수) 11:00<br>~10.7(금) 16:00
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 30px; height: 35px;">
													<p noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<br 맑은="" 고딕";="" font-size:="" 12pt;"="" 고딕";"="" style="box-sizing: border-box; font-size: 12pt;">
													</p>
												</td>
												<td valign="middle" scope="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border: 1px solid rgb(189, 189, 189); width: 102px; height: 35px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 13.3333px;="" malgun="" gothic";="" 맑은="" 고딕";="" 12pt;="" style="line-height: 32px; text-align: center; word-break: keep-all; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">10.11(화)~13(목)</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 28px; height: 35px;">
													<p noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<br 맑은="" 고딕";="" font-size:="" 12pt;"="" 고딕";"="" style="box-sizing: border-box; font-size: 12pt;">
													</p>
												</td>
												<td valign="middle" scope="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border: 1px solid rgb(189, 189, 189); width: 95px; height: 35px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; word-break: keep-all; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" font-size:="" 13.3333px;="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; letter-spacing: -1pt; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span noto="" sans="" kr";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" font-size:="" 13.3333px;="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span noto="" sans="" kr";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" font-size:="" 13.3333px;="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"=""
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"
															><span noto="" sans="" kr";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" font-size:="" 13.3333px;="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span noto="" sans="" kr";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" 16px;"="" 고딕";"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"=""
																			style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"
																		><span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">추후 확정</span></span></span></span></span></span></span></span>
													</p>
												</td>
												<td valign="middle" scope="" class="_dext_table_border_t _dext_table_border_b _dext_table_border_l _dext_table_border_r" style="border: 0px none rgb(0, 0, 0); box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; width: 27px; height: 35px;">
													<p noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<br 맑은="" 고딕";="" font-size:="" 12pt;"="" 고딕";"="" style="box-sizing: border-box; font-size: 12pt;">
													</p>
												</td>
												<td valign="middle" scope="" style="box-sizing: border-box; margin: 0px; padding: 1.41pt 5.1pt; border: 1px solid rgb(189, 189, 189); width: 96px; height: 35px;">
													<p class="0" noto="" sans="" kr";="" font-size:="" 13.3333px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" times="" new="" roman";="" malgun="" gothic";="" kr";"="" gothic";"="" 16px;"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; text-align: center; word-break: keep-all; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px;">
														<span noto="" sans="" kr";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" font-size:="" 13.3333px;="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; letter-spacing: -1pt; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span noto="" sans="" kr";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" font-size:="" 13.3333px;="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span noto="" sans="" kr";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" font-size:="" 13.3333px;="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"=""
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"
															><span noto="" sans="" kr";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" font-size:="" 13.3333px;="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" kr";"="" gothic";"="" 고딕";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span noto="" sans="" kr";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 12pt;="" malgun="" gothic";="" 16px;"="" 고딕";"="" gothic";"="" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 고딕";"="" color:="" black;"="" gothic";"=""
																			style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 12pt; font-family: &amp; quot;Malgun Gothic&amp;quot;;"
																		><span 맑은="" 고딕";="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 32px;="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 12pt;="" line-height:="" 28.8px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" malgun="" gothic";="" 16px;="" 32px;="" 24px;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">추후 확정</span></span></span></span></span></span></span></span>
													</p>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									※ 회관 사정에 따라 일정이 변경될 수 있으며<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>신청된 장르를 고려하여 대관심의위원회를 별도로 구성할 수 있습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									■&nbsp;<strong 맑은="" 고딕";="" font-size:="" 12pt;"="">대관신청</strong>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">○ 대관 사용시간 안내</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>세종대극장<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>세종<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">M</span>씨어터<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>,&nbsp;</span>세종<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">S</span>씨어터
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<table class="tg" 맑은="" 고딕";"="" style="border-collapse: collapse; border-spacing: 0px; width: 950px; text-align: center; font-family: GmarketSans; border-width: 2px 0px; border-top-style: solid; border-top-color: rgb(189, 189, 189); border-bottom-style: solid; border-bottom-color: rgb(189, 189, 189); border-right-style: initial; border-right-color: initial; border-left-style: initial; border-left-color: initial; font-size: 12pt;">
									<tbody 맑은="" 고딕";"="" style="font-size: 12pt;">
										<tr class="tg-2_1" 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 111.375px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">구 분</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 306.109px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">사용시간</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">비 고</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal; width: 111.375px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">준비대관</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">철수대관</p>
											</td>
											<td valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal; width: 306.109px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">09:00~22:00&nbsp;</span>내에서
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<u 맑은="" 고딕";"="" style="font-size: 12pt;">최소&nbsp;</u><u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">4</span></u><u 맑은="" 고딕";"="" style="font-size: 12pt;">시간</u>부터 사용 가능
												</p>
											</td>
											<td rowspan="2" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">● 사용시간 중 일부시간만 사용한 경우에도 전 시간을 사용한 것으로 간주합니다</span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">.</span></span><br style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●</span><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;승인된 대관시간을 초과하는 경우 시행 내규에 따라&nbsp;</span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">30</span></span><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">분 단위로 초과대관료를 부과합니다</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;=""
														margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"
													><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">.</span></span><br style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●</span><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">&nbsp;무대 휴게시간에는 대관 신청 및 무대 사용이 불가합니다</span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">.&nbsp;</span></span><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">아래&nbsp;</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;=""
														margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"
													><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">‘</span></span><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">대관 신청 시 유의사항</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">’&nbsp;</span></span><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;"><span
														style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;"
													>참고 부탁드립니다</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">.</span></span><br style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">공연대관 시간을 초과하여 공연을 지속한 경우 공연대관의 초과대관료를</span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">,&nbsp;</span></span><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">공연 종료 후 공연대관 시간을 초과하여 철수하는 경우 철수대관의 초과대관료를&nbsp;</span></span><span 맑은="" 고딕";=""
														line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"
													><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">30</span></span><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;"><span style="font-size: 12pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">분 단위로 부과합니다</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">.</span>
												</p>
												<ul 맑은="" 고딕";"="" style="font-size: 12pt;">
											</ul>
												<p style="line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">&nbsp;</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 111.375px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">공연대관</p>
											</td>
											<td valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal; width: 306.109px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">09:00~22:00&nbsp;</span>내에서
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<u 맑은="" 고딕";"="" style="font-size: 12pt;">최대&nbsp;</u><u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">5</span></u><u 맑은="" 고딕";"="" style="font-size: 12pt;">시간</u>까지 사용 가능
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													공연은 인터미션을 포함하여 최대&nbsp;<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3</span>시간까지 진행 가능하며<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">,&nbsp;</span>공연 시작&nbsp;<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">2</span>시간 전부터 공연 종료까지 최대&nbsp;<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">5</span>시간 사용 가능
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>세종체임버홀
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<table class="tg" 맑은="" 고딕";"="" style="border-collapse: collapse; border-spacing: 0px; width: 950px; text-align: center; font-family: GmarketSans; border-width: 2px 0px; border-top-style: solid; border-top-color: rgb(189, 189, 189); border-bottom-style: solid; border-bottom-color: rgb(189, 189, 189); border-right-style: initial; border-right-color: initial; border-left-style: initial; border-left-color: initial; font-size: 12pt;">
									<tbody 맑은="" 고딕";"="" style="font-size: 12pt;">
										<tr class="tg-2_1" 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 111px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">구 분</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 331px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">사용시간</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 429px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">비 고</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal; width: 111px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">준비대관</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">철수대관</p>
											</td>
											<td valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal; width: 331px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">09:00~22:00&nbsp;</span>내에서
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<u 맑은="" 고딕";"="" style="font-size: 12pt;">최소&nbsp;</u><u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">4</span></u><u 맑은="" 고딕";"="" style="font-size: 12pt;">시간</u>부터 사용 가능&nbsp;
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">협의 하에&nbsp;</span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">1</span><span style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">회에 한해 나누어 사용 가능</span>
												</p>
											</td>
											<td rowspan="2" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 429px;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">사용시간 중 일부시간만 사용한 경우에도 전 시간을 사용한 것으로 간주합니다</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">사전연습 일정은 당일 공연대관자의 준비대관 일정이 우선되며</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">주말 및 공휴일은 사전연습이 불가합니다</span></span></span><span 맑은="" 고딕";="" line-height:=""
														24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"
													><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">악기 조율 시간은 별도로 제공하지 않으며</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">준비대관 또는 공연대관 시간 내에서 사용해야 합니다</span></span></span><span 맑은="" 고딕";=""
														line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"
													><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">승인된 대관시간을 초과하는 경우 시행 내규에 따라&nbsp;</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">30</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">분 단위로 초과대관료를 부과합니다</span></span></span><span 맑은="" 고딕";="" line-height:="" 24px;=""
														margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"
													><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">무대 휴게시간에는 대관 신청 및 무대 사용이 불가합니다</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.&nbsp;</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">아래&nbsp;</span></span></span><span 맑은="" 고딕";="" line-height:="" 24px;=""
														margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"
													><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">‘</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:=""
															0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
														>대관 신청 시 유의사항</span></span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’&nbsp;</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:=""
														0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">참고 부탁드립니다</span></span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">공연대관 시간을 초과하여 공연을 지속한 경우 공연대관의 초과대관료를</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">공연 종료 후 공연대관 시간을 초과하여 철수하는 경우 철수대관의 초과대관료를&nbsp;</span></span></span><span
														맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"
													><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">30</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:=""
															0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
														>분 단위로 부과합니다</span></span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span></span></span>
												</p>
												<ul 맑은="" 고딕";"="" style="font-size: 12pt;">
											</ul>
												<p style="line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">&nbsp;</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 111px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">공연대관</p>
											</td>
											<td valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal; width: 331px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">09:00~22:00&nbsp;</span>내에서
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													<u 맑은="" 고딕";"="" style="font-size: 12pt;">최대&nbsp;</u><u><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">5</span></u><u 맑은="" 고딕";"="" style="font-size: 12pt;">시간</u>까지 사용 가능
												</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													공연은 인터미션을 포함하여 최대&nbsp;<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">3</span>시간까지 진행 가능하며<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">,&nbsp;</span>공연 시작&nbsp;<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">2</span>시간 전부터 공연 종료까지 최대&nbsp;<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">5</span>시간 사용 가능
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">○ 대관 신청 시 유의사항</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>원칙적으로 월요일은 공연장 휴무로 운영합니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.&nbsp;</span>월요일에 공연대관을 신청한 경우 별도의 대관심의를 진행하지 않고 부결로 처리합니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									&nbsp; 단<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>공연대관 기간 전후의 월요일인 경우 준비<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">/</span>철수대관 목적에 한하여 사용할 수 있습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>공연대관 신청 시 반드시&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">1</span>회 이상의 준비대관을 함께 신청해야 합니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>공연은&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">1</span>일&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">1</span>회를 원칙으로 하나<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>,&nbsp;</span>평일 중 하루 및 주말<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">·</span>공휴일은&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">1</span>일&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">2</span>회까지 공연할 수 있습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>.&nbsp;</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									&nbsp; 또한 공연 소요시간이&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">1</span>시간 이내인 어린이<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">·</span>가족 공연은&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">1</span>일&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>3</span>회까지 공연할 수 있습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">- 1</span>일&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">2</span>회 이상 공연을 하는 경우 각 회 공연 종료시간부터 다음 회 공연 시작시간 사이에 최소&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">1</span>시간&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";=""
										24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>30</span>분
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">&nbsp; &nbsp;(</span>무대휴게시간&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">1</span>시간<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>관객입장시간&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>30</span>분<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">)</span>의 간격을 확보하여야 합니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>주&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">52</span>시간 근무를 명시하는&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">‘</span>근로기준법 개정안<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>’&nbsp;</span>준수를 위해 오후&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">10</span>시 이후의 대관을 받지 않습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									&nbsp; 불가피하게 철야시간대<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">(</span>오후&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">11</span>시<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">~</span>익일 오전&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>9</span>시<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">)</span>를 사용한 경우 공연장대관내규 제<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">10</span>조&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">5</span>항에 따른 철야준비철수 초과대관료를
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">&nbsp; 30</span>분 단위로 부과합니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>공연장의 안전과 근로기준법 준수를 위해 지정된 무대 휴게시간을 운영합니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.&nbsp;</span>무대 휴게시간에는 대관 신청 및 무대 사용이 제한됩니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp; 사전 협의 하에 무대 휴게시간을 앞뒤로 조정할 수 있으나 이로 인해 무대 휴게시간이 축소 또는 생략되는 경우 초과대관료를</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">&nbsp; &nbsp;30</span>분 단위로 부과합니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">. (</span>단<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>주말 오후&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>5</span>시 공연처럼 지정된 무대 휴게시간 중 공연이 예정된 경우에는 초과대관료 부과를 제외할 수 있습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.)</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<table class="tg" 맑은="" 고딕";"="" style="border-collapse: collapse; border-spacing: 0px; width: 950px; text-align: center; font-family: GmarketSans; border-width: 2px 0px; border-top-style: solid; border-top-color: rgb(189, 189, 189); border-bottom-style: solid; border-bottom-color: rgb(189, 189, 189); border-right-style: initial; border-right-color: initial; border-left-style: initial; border-left-color: initial; font-size: 12pt;">
									<tbody 맑은="" 고딕";"="" style="font-size: 12pt;">
										<tr class="tg-2_1" 맑은="" 고딕";"="">
											<td rowspan="2" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">무대 휴게시간</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">점심</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">저녁</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">12:00~13:00</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">17:00~18:00</span>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">○ 신청서 및 계획서 작성 시 유의사항</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>세종문화회관은 코로나<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">19&nbsp;</span>관련 정부<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>서울시 지침 등에 따른 방역수칙을 준수합니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>세종문화회관 대관시스템에 처음 가입하신 경우<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>신청 후 승인까지 약간의 시간이 소요될 수 있으니 대관 공고 마감일을 고려하시어 여유 있게 가입하시기 바랍니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>신청 시 공연 장르를 정확하게 입력하여 주십시오<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.&nbsp;</span>공연 장르가 실제 공연 내용과 다를 경우 대관심의 과정에서 장르가 조정될 수 있습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">- ‘</span>기본신청서<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’&nbsp;</span>작성 시 공연 장르와 주요 내용<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>준비기간과 공연기간을 포함한 대관일정을 정확히 기재해주십시오<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>. ‘</span>기본신청서<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’</span>는 대관 신청 시
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									&nbsp; 제출해야 하는 필수 서류로<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>제출이 누락된 경우 대관심의 시 불이익을 얻을 수 있습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">- ‘</span>공연계획서<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’&nbsp;</span>작성 시 공연 소요시간<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>공연 시작시간<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>,&nbsp;</span>관람등급과 기획하신 프로그램을 상세히 기재해주십시오<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">. ‘</span>공연계획서<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’</span>는 대관 신청 시 제출해야 하는 필수 서류로<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>제출이 누락된 경우 대관심의 시 불이익을 얻을 수 있습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;=""
										margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>.&nbsp;</span>관련 자료가 별도로 있는 경우&nbsp;<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">‘</span>첨부파일<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’&nbsp;</span>란에 등록해주십시오<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>대관시스템을 통해 제출하신 서류는 반환되지 않으며<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>대관이 확정된 경우라도 제출서류가 사실과 다르다면 대관 승인이 취소될 수 있습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>대관규정 제<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">10</span>조에 의거 아래에 해당하는 경우는 대관을 제한하고 있습니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">1.&nbsp;</span>법령을 위반하는 내용의 대관사용을 목적으로 하는 경우
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">2.&nbsp;</span>회관의 시설 및 설비를 심각히 훼손할 우려가 있거나 기타 회관 관리 유지상 부적절한 행사를 목적으로 하는 경우
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">3.&nbsp;</span>사용자가 승인 이후 실형을 선고받았을 때
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">4.&nbsp;</span>기타 회관의 관리 유지 상 부적당하다고 인정된 때
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">5.&nbsp;</span>본 규정을 위반하는 행위를 할 우려가 명백한 경우의 신청
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">6.&nbsp;</span>기타 회관의 공연장 운영 정책에 적절치 않을 경우
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									■&nbsp;<strong 맑은="" 고딕";="" font-size:="" 12pt;"="">대관 심사 기준</strong>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">[</span>세종대극장<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>세종<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">M</span>씨어터<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;=""
										style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>,&nbsp;</span>세종<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">S</span>씨어터 평가기준<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">]</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									○ 작품성<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>공연장 적합성 등을 감안하여 대관심사위원회에서 평가
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<table class="tg" 맑은="" 고딕";"="" style="border-collapse: collapse; border-spacing: 0px; width: 950px; text-align: center; font-family: GmarketSans; border-width: 2px 0px; border-top-style: solid; border-top-color: rgb(189, 189, 189); border-bottom-style: solid; border-bottom-color: rgb(189, 189, 189); border-right-style: initial; border-right-color: initial; border-left-style: initial; border-left-color: initial; font-size: 12pt;">
									<tbody 맑은="" 고딕";"="" style="font-size: 12pt;">
										<tr class="tg-2_1" 맑은="" 고딕";"="">
											<td colspan="2" rowspan="2" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 264px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">평가항목</p>
											</td>
											<td colspan="2" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 588px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">평가항목별 기준 및 점수</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">합계</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td colspan="2" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 588px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">계</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">100</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td rowspan="3" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 87px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">작품성</p>
											</td>
											<td valign="middle" 맑은="" 고딕";="" width:="" 147px;"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal; width: 136px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">기획력</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">및 제작의도</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 529px;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">해당 공연이 기획적으로 참신하거나 기념할 만한 의미가 있는가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●<b>&nbsp;</b></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">향후 재공연 등으로 작품의 완성도가 발전할 가능성이 높은가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">10</span>
												</p>
											</td>
											<td rowspan="3" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">50</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" 맑은="" 고딕";="" width:="" 147px;"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal; width: 136px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">공연의 완성도</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">및 독창성</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 529px;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">공연 줄거리</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">음악</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;=""
														margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">안무 등 원작의 완성도가 높은가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:=""
														32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">무대 디자인</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">장치 등 무대에서 작품이 완성도 높게 구현될 수 있는가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";=""
														line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">20</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" 맑은="" 고딕";="" width:="" 147px;"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal; width: 136px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">출연자의 수준</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">및 인지도</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 529px;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">출연진의 예술적 성취도나 인지도가 높은가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">제작진의 제작 능력과 포트폴리오 등이 충분한가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">출연진 및 제작진이 사회적으로 물의를 빚지는 않았는가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">20</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td rowspan="3" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 87px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">적합성</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 95px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">공연의 타당성</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 529px;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">정치</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">/</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">종교행사 등이 아닌 공연장에 타당한 공연 내용인가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";=""
														line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">해당 공연이 공연장의 규모</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span></span></span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">장치적 특성과 잘 맞는가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:=""
														32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">10</span>
												</p>
											</td>
											<td rowspan="3" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">50</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" 맑은="" 고딕";="" width:="" 147px;"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal; width: 136px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">공연의 성격</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">및 배경</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 529px;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">해당 공연이 공연장의 브랜딩 제고에 기여할 수 있는가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">해당 공연이 세종문화회관의 운영 방향성과 합치하는가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">20</span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 95px;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">기획사의 신뢰도</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; width: 529px;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">계획한 출연자 및 제작진을 섭외할 역량이 충분한가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">공연을 성공적으로 제작한 경험이 충분한가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span 맑은="" 고딕";="" line-height:="" 21px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">20</span>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">[</span>세종체임버홀 평가기준<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">]</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									○ 출연자의 전문성<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>기획력<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>공연장 적합성 등을 감안하여 대관심사위원회에서 가<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>부로 결정
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<table class="tg" 맑은="" 고딕";"="" style="border-collapse: collapse; border-spacing: 0px; width: 950px; text-align: center; font-family: GmarketSans; border-width: 2px 0px; border-top-style: solid; border-top-color: rgb(189, 189, 189); border-bottom-style: solid; border-bottom-color: rgb(189, 189, 189); border-right-style: initial; border-right-color: initial; border-left-style: initial; border-left-color: initial; font-size: 12pt;">
									<tbody 맑은="" 고딕";"="" style="font-size: 12pt;">
										<tr class="tg-2_1" 맑은="" 고딕";"="">
											<td colspan="2" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">평가항목</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">평가 착안 요소</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td rowspan="2" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">작품성</p>
											</td>
											<td valign="middle" 맑은="" 고딕";"="" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 12pt; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">출연자의</p>
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">
													공신력<span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">,&nbsp;</span>전문성
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●</span>&nbsp;<span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">국내외 콩쿠르 수상 등 객관적 우수성이 인정되는 연주자인가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">기획력</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●</span>&nbsp;<span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">해당 공연이 기획적으로 참신하거나 기념할 만한 의미가 있는가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td rowspan="2" valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">적합성</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">공연장 적합성</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">해당 공연이 세종체임버홀의 규모 및 장치적 특성과 잘 맞는가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">해당 공연이 세종체임버홀의 브랜딩 제고에 기여할 수 있는가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">해당 공연이 세종문화회관의 운영 방향성과 합치하는가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span>
												</p>
											</td>
										</tr>
										<tr 맑은="" 고딕";"="">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p 맑은="" 고딕";="" line-height:="" 150%;=""
													margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">기획사의 신뢰도</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="text-align: left; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="text-align: center; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">계획한 출연자 및 제작진을 섭외할 역량이 충분한가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span><br 맑은="" 고딕";"="" style="font-size: 12pt;">
													<span style="font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif;">●&nbsp;</span><span 맑은="" 고딕";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-size: 12pt; font-family: Arial, sans-serif; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;">공연을 성공적으로 제작한 경험이 충분한가</span></span><span 맑은="" 고딕";="" line-height:="" 24px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 고딕";"="" style="line-height: 32px; margin-top: 0px; margin-bottom: 0px; font-size: 12pt; font-family: Arial, sans-serif;"><span 맑은="" 고딕";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""
														style="font-size: 12pt; font-family: Arial, sans-serif; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
													><span 맑은="" 고딕";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="font-family: Arial, sans-serif; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">?</span></span></span>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									○ 대관심사위원회의 구성 및 운영에 관한 사항은 세종문화회관 대관규정 및 시행 내규로 정하며 심사위원장은 심사당일 외부위원 중에서 호선하여 정합니다<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"><br></span>
								</p>
								<p malgun="" gothic";="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" line-height:="" 150%;=""
									style="font-size: 12pt; line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" 맑은="" 고딕";="" 24px;="" style="font-size: 12pt; font-family: &amp; quot; Malgun Gothic&amp;quot;; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">■&nbsp;</span><strong style="font-size: 12pt;">대관 승인 결정 기준</strong>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">○ 평가 득점별 결정 기준</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">[</span>세종대극장<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>세종<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">M</span>씨어터<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;=""
										style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>,&nbsp;</span>세종<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">S</span>씨어터<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">]</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<table class="tg" style="border-collapse: collapse; border-spacing: 0px; width: 950px; text-align: center; font-family: GmarketSans; border-width: 2px 0px; border-top-style: solid; border-top-color: rgb(189, 189, 189); border-bottom-style: solid; border-bottom-color: rgb(189, 189, 189); border-right-style: initial; border-right-color: initial; border-left-style: initial; border-left-color: initial;">
									<tbody>
										<tr class="tg-2_1">
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">득점</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">75</span>점 이상
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">65</span>점 이상<span style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">~75</span>점 미만
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													<span style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">65</span>점 미만
												</p>
											</td>
										</tr>
										<tr>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">결과</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													승인&nbsp;<span style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">(</span>또는 일정조정 승인<span style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">)</span>
												</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">예비승인</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">부결</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="">&nbsp;</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">- 75</span>
									점 이상 득점 공연이 일정 경합인 경우 최고득점 공연을 우선&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">‘</span>
									승인
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’</span>
									하고 이외 공실 일정에 맞추어 득점 순으로&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">‘</span>
									일정조정 승인
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’&nbsp;</span>
									할 수 있습니다
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">- ‘</span>
									예비승인
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’</span>
									은&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">6</span>
									개월간 유효하며
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>
									유효기간 내 우선 승인작품이 취소될 경우 추가 승인될 수 있습니다
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>
									동점일 경우 대관신청일이 많은 작품을 우선하여 승인합니다
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">[</span>
									세종체임버홀
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">]</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<table class="tg" style="border-collapse: collapse; border-spacing: 0px; width: 950px; text-align: center; font-family: GmarketSans; border-width: 2px 0px; border-top-style: solid; border-top-color: rgb(189, 189, 189); border-bottom-style: solid; border-bottom-color: rgb(189, 189, 189); border-right-style: initial; border-right-color: initial; border-left-style: initial; border-left-color: initial;">
									<tbody>
										<tr>
											<td valign="middle" class="tg-2_1" style="border-color: inherit; border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal; background-color: rgb(239, 239, 239); font-weight: bold; vertical-align: middle;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">승인기준</p>
											</td>
											<td valign="middle" style="border-color: rgb(189, 189, 189); border-style: solid; border-width: 1px; font-family: Arial, sans-serif; font-size: 14px; overflow: hidden; padding: 6px 20px; word-break: normal;">
												<p style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">
													심사위원&nbsp;
													<span style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">2/3&nbsp;</span>
													이상이&nbsp;
													<span style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">‘</span>
													찬성
													<span style="line-height: 28px; margin-top: 0px; margin-bottom: 0px; font-family: Arial, sans-serif; font-size: 14px;">’</span>
													할 경우 승인
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="">&nbsp;</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">- 2/3&nbsp;</span>
									이상 찬성한 공연이 일정 경합인 경우 심사위원이 논의하여 우선순위를 정하며&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">1</span>
									순위 공연은&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">‘</span>
									승인
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:=""
										0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;"
									>’,&nbsp;</span>
									공실 여건에 따라 차순위 공연은&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">‘</span>
									일정조정 승인
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’&nbsp;</span>
									할 수 있습니다
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">- 2/3&nbsp;</span>
									이상 찬성한 공연에 대해 조정할 일정이 없는 경우&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">‘</span>
									예비승인
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">’</span>
									으로 하고 유효기간 내 우선 승인작품이 취소될 경우 추가 승인할 수 있습니다
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">○ 승인 관련 기타사항</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>
									세종문화회관 공연장 운영 정책에 맞는 작품이 없는 경우 승인된 공연이 없을 수 있습니다
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">-&nbsp;</span>
									동점이거나 우선순위를 정하기 어려운 경우에는 대관신청일이 많은 순으로 하고 대관신청일이 동일할 경우에는 신진 예술가
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">,&nbsp;</span>
									신규 대관사 등을 우선 승인합니다
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">.</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									■&nbsp;<strong>기타 문의</strong>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									○ 세종대극장&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">02) 399-1626</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									○ 세종
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">M</span>
									씨어터&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">02) 399-1627</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									○ 세종
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">S</span>
									씨어터&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">02) 399-1624</span>
								</p>
								<p malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" line-height:="" normal;="" style="line-height: 32px; font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;">
									○ 세종체임버홀&nbsp;
									<span malgun="" gothic";="" font-size:="" 16px;="" line-height:="" 32px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" normal;="" style="font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 16px; line-height: 32px; margin-top: 0px; margin-bottom: 0px;">02) 399-1624</span>
								</p>
							</div>
						</div>
						<div class="btn-list_w">
							<button class="btn-list" onclick="location.href='/portal/bbs/B0000002/list.do?menuNo=200012&amp;pageIndex=1'">
								<span>목록</span>
							</button>
						</div>
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