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
<title>MECENAT(목록) | 공연·전시·강좌 |</title>

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
	
	<!-- datepicker 는 jquery 1.7.1 이상 bootstrap 2.0.4 이상 버전이 필요함 -->
	<!-- jQuery가 먼저 로드 된 후 datepicker가 로드 되어야함.-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
	<link rel="stylesheet" href="resources/css/plugin/datepicker/bootstrap-datepicker.css">
	
	<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	

</head>
<body class="vsc-initialized">
	<section id="wrap">
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->
		<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
		
		<dl class="accessibilityWrap">
			<dt class="hide"><strong>바로가기 메뉴</strong></dt>
			<dd><a href="#cont">본문 바로가기</a></dd>
			<dd><a href="#top_nav">주메뉴 바로가기</a></dd>
		</dl>
		<span itemscope="" itemtype="http://schema.org/Organization">
			<link itemprop="url" href="https://www.sejongpac.or.kr">
			<a itemprop="sameAs" href="https://www.youtube.com/channel/UCCqaPJqI5q1kfO51qWWOjrQ"></a>
			<a itemprop="sameAs" href="https://www.instagram.com/sejongcenter/"></a>
			<a itemprop="sameAs" href="https://www.facebook.com/sjcenter"></a>
			<a itemprop="sameAs" href="https://blog.naver.com/sejongnanum"></a>
			<a itemprop="sameAs" href="https://twitter.com/SEJONG_CENTER"></a>
		</span>
		<script src="./resources/sejongpac/static/portal/js/ksearch/top_apc.js"></script>
			<script src="./resources/sejongpac/static/portal/js/jquery.rwdImageMaps.js"></script>
		<div id="seoul-common-gnb"></div>
		
		
		<section id="cont" tabindex="0">
			<div id="sub_page" style="padding:0">
		
			<!-- 기존 header에서 추가(#today 추가, #loc 위치 변경) -->
			<script src="./resources/sejongpac/static/portal/commons/js/scroll.js"></script>
			<link rel="stylesheet" type="text/css" href="/static/commons/css/scroll.css">
		
			<section id="today">
				<div class="inner">
					
					<div class="in mCustomScrollbar _mCS_1"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_horizontal mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container" style="position: relative; top: 0px; left: -310px; width: 1673px;" dir="ltr">
						<ul class="s clearfix">
							
								<li class="item" tabindex="0">
									<div class="img">
										
										<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=2b59bbae5ad2d8e5c4a30c3dd7ad5380&amp;streFileNm=b2af8d74e1235276407b1cdf9a59e7dc24078277cccf491c8dad44ed96e373b4" alt="" class="mCS_img_loaded">
										
										<div class="hover" style="display: none; opacity: 1;">
											<div class="table">
												<div class="vertical">
													<a href="https://academy.sejongpac.or.kr/academy/main/main.do" class="d">상세</a>
												</div>
											</div>
										</div>
									</div>
									<div class="cont">
										<strong class="t">세종 온 클래스 </strong>
										<span class="date">
											2022.10.24~2023.06.04
										</span>
									</div>
								</li>
							
								<li class="item" tabindex="0">
									<div class="img">
										
										<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=c16f9bb18fd876aa07d90051d369fccd2b2061ad95b408c44731011a6c60517c" alt="유니버설발레단 호두까기 인형 2022.12.22(목)~12.31(토) 세종대극장" class="mCS_img_loaded">
										
										<div class="hover" style="display: none; opacity: 1;">
											<div class="table">
												<div class="vertical">
													
														<a href="#" onclick="javascript:showPerformPop('grpb2210111117a01');return false;" class="r ReservationTitle">예매</a>
													
													<a href="/portal/performance/performance/view.do?performIdx=33630&amp;menuNo=200004" class="d">상세</a>
												</div>
											</div>
										</div>
									</div>
									<div class="cont">
										<strong class="t">유니버설발레단 '호두까기인형' </strong>
										<span class="date">
											2022.12.22~2022.12.31
										</span>
									</div>
								</li>
							
								<li class="item" tabindex="0">
									<div class="img">
										
										<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=cef1655f89b9cf076fee29b429f06a19610859f559405acebf035c508af9a606" alt="뮤지컬 캣츠 내한공연-서울 musical cats 2023.1.20(금)~03.12(일)세종대극장" class="mCS_img_loaded">
										
										<div class="hover" style="display: none; opacity: 1;">
											<div class="table">
												<div class="vertical">
													
														<a href="#" onclick="javascript:showPerformPop('grpm2210061638a01');return false;" class="r ReservationTitle">예매</a>
													
													<a href="/portal/performance/performance/view.do?performIdx=33622&amp;menuNo=200004" class="d">상세</a>
												</div>
											</div>
										</div>
									</div>
									<div class="cont">
										<strong class="t">뮤지컬 캣츠 내한공연-서울 (Musical CATS) </strong>
										<span class="date">
											2023.01.20~2023.03.12
										</span>
									</div>
								</li>
							
								<li class="item" tabindex="0">
									<div class="img">
										
										<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=10faa8fd4823b18cfb5fd36eda1e5ae0&amp;streFileNm=34445a499666db527745f1a0d44c59fd610859f559405acebf035c508af9a606" alt="내셔널지오그래픽 사진전 포토아크, 너의 이름은 2022년 04월 12일 화요일부터 2023년 02월 26일 일요일까지 꿈의숲 상상톡톡미술관에서 전시" class="mCS_img_loaded">
										
										<div class="hover" style="display: none; opacity: 1;">
											<div class="table">
												<div class="vertical">
													
														<a href="#" onclick="javascript:showPerformPop('dt2203101117a01');return false;" class="r ReservationTitle">예매</a>
													
													<a href="/portal/performance/performance/view.do?performIdx=33012&amp;menuNo=200004" class="d">상세</a>
												</div>
											</div>
										</div>
									</div>
									<div class="cont">
										<strong class="t">내셔널지오그래픽 사진전 ＜포토아크, 너의 이름은＞ </strong>
										<span class="date">
											2022.04.12~2023.02.26
										</span>
									</div>
								</li>
							
								<li class="item" tabindex="0">
									<div class="img">
										
										<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=301bc04329066ee98076bb67c6ce74e96a7ff77472074eb1dad6fba65becd736" alt="셀럽이 사랑한 bag&amp;shoes 2022.12.31~2023.03.25 세종미술관" class="mCS_img_loaded">
										
										<div class="hover" style="display: none; opacity: 1;">
											<div class="table">
												<div class="vertical">
													
														<a href="#" onclick="javascript:showPerformPop('b5dt2212121427a01');return false;" class="r ReservationTitle">예매</a>
													
													<a href="/portal/performance/exhibit/view.do?performIdx=33784&amp;menuNo=200005" class="d">상세</a>
												</div>
											</div>
										</div>
									</div>
									<div class="cont">
										<strong class="t">셀럽이 사랑한 Bag&amp;Shoes </strong>
										<span class="date">
											2022.12.31~2023.03.25
										</span>
									</div>
								</li>
							
								<li class="item" tabindex="0">
									<div class="img">
										
										<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=4e76f98a7d39453f3260f2a8caf32aef5780e802885c9a2e4f5ff6a995362cef" alt="세종온클래스 2022-12-23~2023-06-24 세종예술아카데미" class="mCS_img_loaded">
										
										<div class="hover" style="display: none; opacity: 1;">
											<div class="table">
												<div class="vertical">
													
													<a href="https://academy.sejongpac.or.kr/academy/main/main.do" class="d">상세</a>
												</div>
											</div>
										</div>
									</div>
									<div class="cont">
										<strong class="t">세종 온 클래스 </strong>
										<span class="date">
											2022.10.24~2023.06.04
										</span>
									</div>
								</li>
							
		
						</ul>
					</div>
					<div id="mCSB_1_scrollbar_horizontal" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_horizontal" style="display: block;">
						<div class="mCSB_draggerContainer">
							<div id="mCSB_1_dragger_horizontal" class="mCSB_dragger" style="position: absolute; min-width: 30px; display: block; width: 715px; max-width: 1084px; left: 203px;">
								<div class="mCSB_dragger_bar"></div>
							</div>
							<div class="mCSB_draggerRail"></div>
						</div>
					</div>
					</div>
					</div>
					<script>
					$("#today .in").mCustomScrollbar({
					    axis:"x" // horizontal scrollbar
					});
					$("#today .img").hover(function(){
						$(this).find(".hover").stop().fadeIn(150);
					},function(){
						$(this).find(".hover").stop().fadeOut(150);
					})
					$("#today li").focus(function(){
						$(this).find(".hover").stop().fadeIn(150);
					})
					$("#today .hover a:last-child").focusout(function(){
						$(this).closest(".hover").stop().fadeOut(150);
					})
					</script>
				</div>
			</section>
			<!-- 기존 header에서 추가 끝 -->
		
			<div class="">
				<!-- <h2 class="sub-t">
					<strong>세종 투데이</strong>
				</h2> -->
		
				<form name="frm" id="frm" method="post" action="subMainPerformanceList.perf">
					<input type="hidden" name="pageIndex" value="1">
					<input type="hidden" name="searchSort" id="searchSort" value="2">
		
					<!-- 날짜클릭 -->
					<div class="inner">
						<div class="schedule__date type2">
							<a href="javascript:void(0);" class="arrow prev" >이전</a>
							<div class="title">
								<!-- <input type="text" name="sdate" id="period1" class="datepicker hasDatepicker" readonly="readonly" value=""> -->
								<input type="text" name="sdate" id="period1" class="form-control" value="" readonly="readonly"/>
							</div>
							<a href="javascript:void(0);" class="arrow next">다음</a>
						</div>
						<div class="schedule_check">
							<p class="title">구분</p>
							
							<input type="checkbox" name="searchTypeData" class="searchType_all" id="hall_ck1" value="ALL" checked="checked">
							<label for="hall_ck1">전체</label>
							<input type="checkbox" name="searchTypeData" class="searchType" id="hall_ck2" value="1001,1002,1008,1006,9006,9014">
							<label for="hall_ck2">공연 </label>
							<input type="checkbox" name="searchTypeData" class="searchType" id="hall_ck3" value="2001,2002,3008,3009,9008,9007">
							<label for="hall_ck3">전시 </label>
							<input type="checkbox" name="searchTypeData" class="searchType" id="hall_ck4" value="2006,2007">
							<label for="hall_ck4">교육</label>
							
							<div class="write">
								<input type="text" name="searchWrd" id="hall" placeholder="검색어를 입력하세요" value="">
								<button type="button" onclick="fn_search('1')">검색</button>
							</div>
						</div>
					</div>
				</form>
				<script>
					document.getElementById('period1').value = new Date().toISOString().substring(0, 10);
				
					$('#period1').datepicker({
					      dateFormat: 'yy-mm-dd', //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
					      language: 'kr', //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
					   }).on('changeDate', function (e) { });
					
					//날짜
					$('#period1').on('change', function(){
						console.log("hi ")
						
						var sdate = $("#period1").val();
						console.log("sada : " + sdate)
		
						$.ajax({
						    url : 'subMainPerformanceList.perf',           // 요청할 서버url
						    data : {  // 보낼 데이터 (Object , String, Array)
						      "sdate" : sdate
						    },
						    success : function(list) {  
						        console.log("통신 성공 !");
						        console.log("list : "+list);
						        console.log("list.perfoTitle: "+list.perfoTitle);
			    				
			    				$(".bbs-today_thumb").html(list);
						        
						    },
						    error : function(request, status, error) { // 결과 에러 콜백함수
						        console.log("통신 실패 !");
						        console.log(error)
						    }
						})
						
						
					});
					
				</script>
		
				<!-- 페이지 시작 -->
				<article class="bbs-today_w">
					<div class="inner">
						<div class="top clearfix">
							<div class="category">
								<span class="active"><a href="javascript:void(0);" onclick="fn_SearchSort('2');" title="선택됨">관심순</a></span>
								<span><a href="javascript:void(0);" onclick="fn_SearchSort('1');">최신순</a></span>
							</div>
		
							<div class="etc_w">
								<span>검색 결과 총 <strong class="color-navy">4</strong> 건</span>
								<!-- <div class="clearfix type">
									<button type="button" class="list">리스트로 보기</button>
									<button type="button" class="thumb active">썸네일로 보기</button>
								</div> -->
							</div>
						</div>
						
						<!-- 공연 목록 -->
						<ul class="bbs-today_thumb clearfix">
						
							<li tabindex="0">
								<div class="img">
									<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=faec0c25744c22e99776405c0fa728020ced1ac91b5fc82bb55dac72d913a231&amp;streFileNm=27421d60498f608e44a4bcda329fdf4139140131461b1ec4fbc79f9f1d2d9b11" alt="유니버설발레단 '호두까기인형' 2022.12.22(Thu) ~ 12.31 (Sat) 세종문화회관 대극장">
								</div>
								<div class="cont">
									<strong class="t">유니버설발레단 '호두까기인형'</strong>
									<div class="add">세종대극장</div>
									<div class="etc clearfix">
										<span class="date">2022.12.22 - 2022.12.31</span>
										<span class="place">무용</span>
									</div>
								</div>
								<div class="hover" style="display: none; opacity: 1;">
									<div class="table">
										<div class="vertical">
											<a href="#" onclick="javascript:showPerformPop('grpb2210111117a01');return false;" class="r ReservationTitle">예매</a>
											<a href="/portal/performance/performance/view.do?performIdx=33630&amp;menuNo=200004" class="d">상세</a>
										</div>
									</div>
								</div>
							</li>
						
							<li tabindex="0">
								<div class="img">
									<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=faec0c25744c22e99776405c0fa72802b365951a17a69f92262d990c89c15f01&amp;streFileNm=2d8decd5a712c61a9c24c6a2f6c6b24a6a7ff77472074eb1dad6fba65becd736" alt="PHOTO ARK YOU WILL MISS ME WHEN I AM GONE 내셔널지오그래픽 사진전 <포토아크, 너의 이름은> 숲속에 찾아온 세상에서 가장 희귀한 동물원 2022.4.12 - 9.12 Tal. 02 747 7791  북서울꿈의숲 상상톡톡미술관">
								</div>
								<div class="cont">
									<strong class="t">내셔널지오그래픽 사진전 ＜포토아크, 너의 이름은＞</strong>
									<div class="add">
										꿈의숲 상상톡톡미술관
									</div>
									<div class="etc clearfix">
										<span class="date">
											2022.04.12 - 2023.02.26
										</span>
										<span class="place">
											기획전시
										</span>
									</div>
								</div>
								<div class="hover" style="display: none; opacity: 1;">
									<div class="table">
										<div class="vertical">
											<a href="#" onclick="javascript:showPerformPop('dt2203101117a01');return false;" class="r ReservationTitle">예매</a>
											<a href="/portal/performance/performance/view.do?performIdx=33012&amp;menuNo=200004" class="d">상세</a>
										</div>
									</div>
								</div>
							</li>
						
							<li tabindex="0">
								<div class="img">
									<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=faec0c25744c22e99776405c0fa7280213f53d2ac6195de0d4e08dabe07ce771&amp;streFileNm=251566973a1a35071781d2d99b12aabc2657b980fbf690d891fc361941a10452" alt="Your No. 1 fan 연극 미저리 MISERY 0000000000 Willum Gold Based on the novel 김상중 • 서지석 - 길해연. 이일화. 고인배 · 김재만 2022.12.24-2023.2.5 세종문화회관 M씨어터 평일 오후 8시 / 주말 및 공휴일 2시, 6시 (월) | 12.24(토) 2시 공연 없음 Original Broadway Production Produced by Warner Bros. Theatre Ventures in association with Castle Rock Entertainment, Liz Glotzer, Mark Kaufman, Martin Shafer, Raymond W World Premiere produced at Bucks County Playhouse, New Hope, PA Jed Bernstein, Producing Director">
								</div>
								<div class="cont">
									<strong class="t">연극 미저리(Misery)</strong>
									<div class="add">
										세종M씨어터
									</div>
									<div class="etc clearfix">
										<span class="date">
											2022.12.24 - 2023.02.05
										</span>
										<span class="place">
											연극
										</span>
									</div>
								</div>
								<div class="hover" style="display: none; opacity: 1;">
									<div class="table">
										<div class="vertical">
											<a href="#" onclick="javascript:showPerformPop('smpd2211171109a01');return false;" class="r ReservationTitle">예매</a>
											<a href="/portal/performance/performance/view.do?performIdx=33728&amp;menuNo=200004" class="d">상세</a>
										</div>
									</div>
								</div>
							</li>
						
							<li tabindex="0">
								<div class="img">
									
											<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=faec0c25744c22e99776405c0fa728020ced1ac91b5fc82bb55dac72d913a231&amp;streFileNm=e3fcd0381559eddbb3b1fdb21135b29539140131461b1ec4fbc79f9f1d2d9b11" alt="2023 한글일일달력 열세번째 이야기 한글일일달력 365일 365명 희망을 이야기하다">
										
								</div>
								<div class="cont">
									<strong class="t"> 2023 한글일일달력전 `365일 365명 희망을 이야기하다`</strong>
									<div class="add">
										세종이야기전시장
									</div>
									<div class="etc clearfix">
										<span class="date">
											2022.11.29 - 2023.01.02
										</span>
										<span class="place">
											전시기타
										</span>
									</div>
								</div>
								<div class="hover" style="display: none; opacity: 1;">
									<div class="table">
										<div class="vertical">
											
												<a href="/portal/performance/performance/view.do?performIdx=33755&amp;menuNo=200004" class="d">상세</a>
											
										</div>
									</div>
								</div>
							</li>
						
						</ul>
		
						<div class="paginationSet">
							<ul class="pagination pagination-centered">
								<li class="i first disabled">
									<a title="처음 목록" href="/portal/subMain/perform.do?sdate=2022-12-26&amp;pageIndex=1" onclick="return false;">
										<span class="s">
											<span>처음 
												<span class="t">목록</span>
											</span>
										</span>
									</a>
								</li>
								<li class="i prev disabled">
									<a title="이전 목록" href="/portal/subMain/perform.do?sdate=2022-12-26&amp;pageIndex=0" onclick="return false;">
										<span class="s">
											<span>이전 
												<span class="t">목록</span>
											</span>
										</span>
									</a>
								</li>
								<li class="active">
									<span>
										<em title="현재목록">
											<span>1</span>
										</em>
									</span>
								</li>
								<li class="i next disabled">
									<a title="다음 목록" href="/portal/subMain/perform.do?sdate=2022-12-26&amp;pageIndex=11" onclick="return false;">
										<span class="s">
											<span>다음 
												<span class="t">목록</span>
											</span>
										</span>
									</a>
								</li>
								<li class="i end disabled">
									<a title="마지막 목록" href="/portal/subMain/perform.do?sdate=2022-12-26&amp;pageIndex=1" onclick="return false;" data-endpage="1">
										<span class="s">
											<span>끝 
												<span class="t">목록</span>
											</span>
										</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="bot">
						<div class="inner">
							<ul class="clearfix">
								<li class="item">
									<a href="http://season.sejongpac.or.kr/" target="_blank">
										<div class="img bg1"></div>
										<strong>세종시즌</strong>
										<span>SEJONG SEASON</span>
									</a>
								</li>
								<li class="item">
									<a href="https://academy.sejongpac.or.kr/academy/singl/academyProgram/list.do?menuNo=800003" target="_blank" title="새창으로 엷립니다.">
										<div class="img bg2"></div>
										<strong>강좌일정</strong>
										<span>Course Schedule</span>
									</a>
								</li>
								<li class="item">
									<a href="/portal/main/contents.do?menuNo=200094">
										<div class="img bg3"></div>
										<strong>좌석배치도</strong>
										<span>Seating plan</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</article>
				<script>
					
					function fn_SearchSort(searchSort){
						$("#searchSort").val(searchSort);
						fn_search('1');
					}
					
					function fn_search(pageNo) {
						document.frm.pageIndex.value = pageNo;
						document.frm.submit();
					}
			
					$(".bbs-today_thumb >li").hover(function(){
						$(this).find(".hover").stop().fadeIn(150);
					},function(){
						$(this).find(".hover").stop().fadeOut(150);
					})
					$(".bbs-today_thumb li").focus(function(){
						$(this).find(".hover").stop().fadeIn(150);
					})
					$(".bbs-today_thumb a:last-child").focusout(function(){
						$(this).closest(".hover").stop().fadeOut(150);
					})
			
					$(function() {
						var txt1=[];
						$('[name="searchTypeData"]').click(function(){
							var searchType = $(this).val();
							if(searchType == "ALL"){
								$('.searchType').prop('checked', false);
							}else{
								$('.searchType_all').prop('checked', false);
							}
							
							fn_search('1');
						});
						
						$('[name="searchTypeData"]:checked').each(function(){
							txt1.push($(this).next().text().trim());
						});
						txt1 = txt1.join(',');
						$("#hallt").val(txt1);
			
					  	$(".schedule_w .s2 input[type='text'],.schedule_w .s3 input[type='text']").focus(function(){
							$(this).closest(".item").find(".pop").fadeIn(150);
						});
			
						$(".pop button").click(function(){
							$(".pop").fadeOut(150)
						});
			
						$('.bg-black_r').on('click', function(){
							var txt2=[];
							$('[name="searchTypeData"]:checked').each(function(){
								txt2.push($(this).next().text().trim());
							});
							txt2 = txt2.join(',');
							$("#hallt").val(txt2);
						});
						
						$('.prev').on('click', function(){
							var sdate = new Date($("#period1").val());
							sdate.setDate(sdate.getDate() - 1);
							sdate = dateFormat(sdate);
							console.log("sada : " + sdate)
			
							$("#period1").val(sdate);
							fn_search(1);
						});
						
						$('.next').on('click', function(){
							var sdate = new Date($("#period1").val());
							sdate.setDate(sdate.getDate() + 1);
							sdate = dateFormat(sdate);
							console.log("sada : " + sdate)
			
							$("#period1").val(sdate);
							fn_search(1);
						});
						
						function dateFormat(date) {
						    var year = date.getFullYear();
						    var month = ("0" + (1 + date.getMonth())).slice(-2);
						    var day = ("0" + date.getDate()).slice(-2);
			
						    return year + "-" + month + "-" + day;
						}
						
					});
				</script>
				</div>
			</div>
		</section>
		
		<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
		<!-- footer Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- footer End -->
		
		
		
		</section>
</body>
</html>