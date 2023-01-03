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
<body class="vsc-initialized hide-focus-ring">
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
				<ul class="clearfix dot dep1 li2">
					<li class="home">
						<span><span>HOME</span></span>
					</li>
					<li>
						<div class="rel">
							<a href="#"><span>대관안내</span></a>
							<ul class="depth" style="display: none;">
								<li><a href="/portal/subMain/perform.do?menuNo=200001">공연·전시·강좌</a>
								</li><li><a href="/portal/bbs/B0000002/list.do?menuNo=200012">대관안내</a>
								</li><li><a href="/portal/qestnar/qustnr/list.do?status=T&amp;menuNo=200027">참여공간</a>
								</li><li><a href="/portal/bbs/B0000001/list.do?menuNo=200042">뉴스·소식</a>
								</li><li><a href="/portal/main/contents.do?menuNo=200082">고객센터</a>
								</li><li><a href="https://www.sjartgroups.or.kr/sjartgroups/main/main.do" target="_blank" title="새창 열림">서울시예술단</a></li>
							</ul>
						</div>
					</li>
					<li>
						<div class="rel">
						<a href="#"><span>대관공고</span></a>
						<ul class="depth" style="display: none;">
						<li><a href="https://www.sejongpac.or.kr/portal/bbs/B0000002/list.do?menuNo=200012"><span>대관공고</span></a></li><li><a href="/portal/main/contents.do?menuNo=200018"><span>대관신청</span></a></li><li><a href="/portal/main/contents.do?menuNo=200119"><span>세종문화회관 대관</span></a></li><li><a href="/portal/main/contents.do?menuNo=200226"><span>꿈의숲아트센터 대관</span></a></li><li><a href="/portal/main/contents.do?menuNo=200142"><span>기타대관</span></a></li><li><a href="/portal/main/contents.do?menuNo=200016"><span>홈페이지 배너신청</span></a></li><li><a href="/portal/main/contents.do?menuNo=200172"><span>티켓판매절차</span></a></li>
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
				<div class="inner"></div>
				<script>
				var loc = $("#depth_w > div > ul > li").length - 1;
				$("#depth_w .dep1").addClass("li"+loc);
		
				var len = $(".tabs-st1 li").length;
				$(".tabs-st1").addClass("li"+len);
				</script>
		
				<div class="sub_page">
				
		<!--
		<div class="hire_top f18 inner">
			<dl class="txt">
				<dt>대관 진행절차</dt>
				<dd>전시장과 공연장은 정해진 시기에 대관신청을 하신 후 소정의 심사를 거쳐 사용하실 수 있습니다.</dd>
			</dl>
		
			<ol class="clearfix">
				<li>
					<strong class="no color-purple">01</strong>
					<div class="cont">
						<strong class="">공고</strong>
						<span class="small">(정기, 수시)</span>
					</div>
				</li>
				<li>
					<strong class="no color-purple">02</strong>
					<div class="cont">
						<strong class="">대관신청</strong>
					</div>
				</li>
				<li>
					<strong class="no color-purple">03</strong>
					<div class="cont">
						<strong class="">심사</strong>
					</div>
				</li>
				<li>
					<strong class="no color-purple">04</strong>
					<div class="cont">
						<strong class="">승인통보</strong>
					</div>
				</li>
				<li>
					<strong class="no color-purple">05</strong>
					<div class="cont">
						<strong class="">계약</strong>
					</div>
				</li>
			</ol>
		</div>
		 -->
		
		<!--
		 수정 : 2022-12-06
		 대관공고   상위 목록추가
		 -->
		
					<div class="notice-slider">
						<div class="slider slick-initialized slick-slider slick-vertical">
					 		<div aria-live="polite" class="slick-list draggable" style="height: 38px;">
					 			<div class="slick-track" style="opacity: 1; height: 38px; transform: translate3d(0px, 0px, 0px);">
					 				<a href="/portal/bbs/B0000002/view.do?nttId=45868&amp;menuNo=200012" class="slide slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="0" style="width: 1153px;">
							 		<span class="title">2023년도 꿈의숲아트센터 공연장 긴급공실 수시대관 공고 |  접수기간:</span>
							 		<span class="date">2022.11.25~2023.12.31</span></a>
						 		</div>
							</div>
						</div>
						<div class="btn-wrap">
							<button type="button" class="btn-prev slick-arrow slick-hidden" title="이전으로 이동" aria-disabled="true" tabindex="-1">이전</button>
							<button type="button" class="btn-next slick-arrow slick-hidden" title="다음으로 이동" aria-disabled="true" tabindex="-1">다음</button>
						</div>
					</div>
					
					<article class="bbs_w inner">
						
						<!-- 검색어 -->
						<div class="bbs-category type2 clearfix">
							<form name="frm" id="frm" method="post" action="/portal/bbs/B0000002/list.do?menuNo=200012">
								<input type="hidden" name="bbsId">
								<input type="hidden" name="pageIndex" value="1">
								<a href="http://frontrent.sejongpac.or.kr/SejongRentFront/" class="btn-normal" title="페이지 이동">대관 시스템 바로가기</a>
								<div class="bbs-sch">
									<label for="searchWrd" class="hide">검색어</label>
									<input type="hidden" name="searchCnd" value="1">
									<input type="text" name="searchWrd" id="searchWrd" placeholder="검색어를 입력해주세요." value="">
									<button type="button" onclick="search('1')" class="b-sh">검색</button>
								</div>
							</form>
						</div>
						
						<!-- list 시작 -->
						<table class="bbs-list">
							<caption>번호, 제목, 공고기간, 작성일, 상태로 구성된 대관공고 리스트</caption>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">공고기간</th>
									<th scope="col">작성일</th>
									<th scope="col">상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>399</td>
									<td class="tit"><a href="/portal/bbs/B0000002/view.do?nttId=45908&amp;menuNo=200012&amp;pageIndex=1">(재)세종문화회관 2023년도 3차 긴급공실 수시대관 공고</a></td>
									<td>2022-12-02~2022-12-08</td>
									<td>2022.12.05</td>
									<td><span class="state-st1 bg-black_r">종료</span></td>
								</tr>
								<tr>
									<td>398</td>
									<td class="tit"><a href="/portal/bbs/B0000002/view.do?nttId=45868&amp;menuNo=200012&amp;pageIndex=1">2023년도 꿈의숲아트센터 공연장 긴급공실 수시대관 공고</a></td>
									<td>2022-11-25~2023-12-31</td>
									<td>2022.11.24</td>
									<td><span class="state-st1 bg-orange_r">접수중</span></td>
								</tr>
								<tr>
									<td>397</td>
									<td class="tit"><a href="/portal/bbs/B0000002/view.do?nttId=45856&amp;menuNo=200012&amp;pageIndex=1">(재)세종문화회관 2023년도 2차 긴급공실 수시대관 공고</a></td>
									<td>2022-11-14~2022-11-21</td>
									<td>2022.11.16</td>
									<td><span class="state-st1 bg-black_r">종료</span></td>
								</tr>
								<tr>
									<td>396</td>
									<td class="tit"><a href="/portal/bbs/B0000002/view.do?nttId=45743&amp;menuNo=200012&amp;pageIndex=1">(재)세종문화회관 2023년도 공연장 2차 수시대관 공고</a></td>
									<td>2022-09-28~2022-10-07</td>
									<td>2022.09.28</td>
									<td><span class="state-st1 bg-black_r">종료</span></td>
								</tr>
								<tr>
									<td>395</td>
									<td class="tit"><a href="/portal/bbs/B0000002/view.do?nttId=45683&amp;menuNo=200012&amp;pageIndex=1">2023년도 꿈의숲아트센터 공연장 정기대관 공고</a></td>
									<td>2022-08-31~2022-09-20</td>
									<td>2022.08.31</td>
									<td><span class="state-st1 bg-black_r">종료</span></td>
								</tr>
								<tr>
									<td>394</td>
									<td class="tit"><a href="/portal/bbs/B0000002/view.do?nttId=45627&amp;menuNo=200012&amp;pageIndex=1">(재)세종문화회관 체임버홀 2023년 하반기 정기대관 공고</a></td>
									<td>2022-08-05~2022-08-25</td>
									<td>2022.08.05</td>
									<td><span class="state-st1 bg-black_r">종료</span></td>
								</tr>
								<tr>
									<td>393</td>
									<td class="tit"><a href="/portal/bbs/B0000002/view.do?nttId=45574&amp;menuNo=200012&amp;pageIndex=1">2023년 드림갤러리·상상톡톡미술관 정기대관 공고문</a></td>
									<td>2022-07-25~2022-08-23</td>
									<td>2022.07.20</td>
									<td><span class="state-st1 bg-black_r">종료</span></td>
								</tr>
								<tr>
									<td>392</td>
									<td class="tit"><a href="/portal/bbs/B0000002/view.do?nttId=45573&amp;menuNo=200012&amp;pageIndex=1">2024년 세종문화회관 미술관 장기 전시 대관 안내</a></td>
									<td>2022-07-25~2022-08-23</td>
									<td>2022.07.20</td>
									<td><span class="state-st1 bg-black_r">종료</span></td>
								</tr>
								<tr>
									<td>391</td>
									<td class="tit"><a href="/portal/bbs/B0000002/view.do?nttId=45572&amp;menuNo=200012&amp;pageIndex=1">2023년 세종문화회관 미술관 정기 대관 공고문</a></td>
									<td>2022-07-25~2022-08-23</td>
									<td>2022.07.20</td>
									<td><span class="state-st1 bg-black_r">종료</span></td>
								</tr>
								<tr>
									<td>390</td>
									<td class="tit"><a href="/portal/bbs/B0000002/view.do?nttId=45555&amp;menuNo=200012&amp;pageIndex=1">2022년도 꿈의숲아트센터 공연장 4차 수시대관 공고</a></td>
									<td>2022-07-13~2022-07-26</td>
									<td>2022.07.13</td>
									<td><span class="state-st1 bg-black_r">종료</span></td>
								</tr>
							</tbody>
						</table>
						<!-- list 끝 -->
						
						<!-- 페이징바 시작 -->
						<div class="paginationSet">
							<ul class="pagination pagination-centered">
								<li class="i first disabled">
									<a title="처음 목록" href="/portal/bbs/B0000002/list.do?menuNo=200012&amp;pageIndex=1" onclick="return false;">
										<span class="s"><span>처음 <span class="t">목록</span></span></span>
									</a>
								</li>
								<li class="i prev disabled">
									<a title="이전 목록" href="/portal/bbs/B0000002/list.do?menuNo=200012&amp;pageIndex=0" onclick="return false;">
										<span class="s">
											<span>이전 
												<span class="t">목록</span>
											</span>
										</span>
									</a>
								</li>
								<li class="active"><span><em title="현재목록"><span>1</span></em></span></li>
								<li><a href="/portal/bbs/B0000002/list.do?menuNo=200012&amp;pageIndex=2"><span>2</span></a></li>
								<li><a href="/portal/bbs/B0000002/list.do?menuNo=200012&amp;pageIndex=3"><span>3</span></a></li>
								<li><a href="/portal/bbs/B0000002/list.do?menuNo=200012&amp;pageIndex=4"><span>4</span></a></li>
								<li><a href="/portal/bbs/B0000002/list.do?menuNo=200012&amp;pageIndex=5"><span>5</span></a></li>
								<li class="i next">
									<a title="다음 목록" href="/portal/bbs/B0000002/list.do?menuNo=200012&amp;pageIndex=6">
										<span class="s">
											<span>다음 
												<span class="t">목록</span>
											</span>
										</span>
									</a>
								</li>
								<li class="i end">
									<a title="마지막 목록" href="/portal/bbs/B0000002/list.do?menuNo=200012&amp;pageIndex=40">
										<span class="s">
											<span>끝 
												<span class="t">목록</span>
											</span>
										</span>
									</a>
								</li>
							</ul>
						</div>
						<!-- 페이징바 끝-->
					</article>
					<script>
						$(function(){
							$('.notice-slider .slider').slick({
								slidesToShow: 1,
								slidesToScroll: 1,
								vertical: true,
								verticalSwiping: true,
								infinite: true,
								autoplay: true,
								autoplaySpeed: 3000,
								accessibility: false,
								prevArrow: '.notice-slider .btn-prev',
								nextArrow: '.notice-slider .btn-next'
							});	
							
							$('.notice-slider .slider .slide').attr('tabindex', '-1');
							$('.notice-slider .slider .slide').filter('.slick-current').attr('tabindex', '0');
							
							$('.notice-slider .slider').on('beforeChange', function(event, slick, currentSlide, nextSlide){
								$('.notice-slider .slider .slide').attr('tabindex', '-1');
								$('.notice-slider .slider .slide[data-slick-index="'+ nextSlide +'"]').attr('tabindex', '0');
							});	
						});
						
						function search(pageNo) {
							if( $("#searchWrd").val() == null || $("#searchWrd").val() == "" ) {
								alert("검색어를 입력해 주세요.");
								return false;
							}
							document.frm.pageIndex.value = pageNo;
							document.frm.submit();
						}
					</script>
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