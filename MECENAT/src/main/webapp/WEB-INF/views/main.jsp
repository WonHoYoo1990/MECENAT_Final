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
	<meta property="og:image" content="https://www.sejongpac.or.kr/static/portal/img/main/201105_mtimg.jpg">
	
	<title>MECENAT</title>
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
	
	<!-- slick 슬라이더 -->
	<link rel="stylesheet" type="text/css" href="/plugin/slick/slick.css"/>
	<link rel="stylesheet" type="text/css" href="/plugin/slick/slick-theme.css"/>
	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/plugin/slick/slick.js"></script>
	
	
	<style>body.hide-focus-ring *:focus { outline: none !important; }</style>
</head>
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0" class="vsc-initialized">
	<c:if test="${not empty errorMsg}">
		<script type="text/javascript">
			alert("${errorMsg}");
		<%session.removeAttribute("errorMsg");%>
			
		</script>
	</c:if>
	<c:if test="${not empty alertMsg}">
		<script type="text/javascript">
			alert("${alertMsg}");
		<%session.removeAttribute("alertMsg");%>
			
		</script>
	</c:if>
	<section id="wrap">
		<div class="open_bg"></div>
		<div class="wrap" style="opacity: 1;">
			<!-- 헤더부분은 기존 소스 살림  -->
			
			<!-- // -->
			<script src="./resources/sejongpac/static/portal/js/ksearch/top_apc.js"></script>
			<script src="./resources/sejongpac/static/portal/js/jquery.rwdImageMaps.js"></script>
			
			<div id="seoul-common-gnb"></div>
			
			<!-- Header Section Begin -->
			<jsp:include page="../views/common/header.jsp" />
			<!-- Header End -->
			
			<div id="cont">
				<!-- 메인 시작 -->
				<script>
					$(function() {
						console.clear();
						
						mainBanner();
						mainVisualThumb();
						recommendedProgram();
						
						// 메인 배너 아래 목록 이미지 조회
						$("item").each(function(index, item) { 
							
							var index = index.val();
							console.log("index2 : " + index)
							var item = item.val();
							console.log("item : " + item)
							
							var getting_pc = $(item).attr("src");
							if (getting_pc.match("https://www.sejongpac.or.kr/")) {
							} else {
								var getting_pc_tmp = getting_pc.replace("/cmmn","https://www.sejongpac.or.kr/cmmn");
								$(item).attr("src",getting_pc_tmp);
							}
							
						})

						// 메인 배너 아래 목록 이미지 반응형
						$(".slick-track li").hover(function() {
							$(this).addClass("slick-current slick-active");
						}, function() {
							$(".slick-track li").removeClass("slick-current slick-active");
						})

					});
					
					// 메인 베너 slick 반응형
					function mainBanner() {
						$('.mainBanner').slick({
							slide: 'li',		//슬라이드 되어야 할 태그 ex) div, li 
							infinite : true, 	//무한 반복 옵션	 
							slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
							slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
							speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
							arrows : false, 		// 옆으로 이동하는 화살표 표시 여부
							dots : false, 		// 스크롤바 아래 점으로 페이지네이션 여부
							autoplay : true,			// 자동 스크롤 사용 여부
							autoplaySpeed : 5000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
							pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
							vertical : false,		// 세로 방향 슬라이드 옵션
							draggable : true, 	//드래그 가능 여부 
							
							responsive: [ // 반응형 웹 구현 옵션
								{  
									breakpoint: 960, //화면 사이즈 960px
									settings: {
										//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
										slidesToShow:1 
									} 
								},
								{ 
									breakpoint: 768, //화면 사이즈 768px
									settings: {	
										//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
										slidesToShow:1 
									} 
								}, 
								{ 
									breakpoint: 2560, //화면 사이즈 2560px
									settings: {	
										//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
										slidesToShow:1
									} 
								} 
							]

						});
					}

					// 메인 베너 썸네일 slick 반응형
					function mainVisualThumb() {
						$('.mainVisualThumb').slick({
							slide: 'li',		//슬라이드 되어야 할 태그 ex) div, li 
							infinite : true, 	//무한 반복 옵션	 
							slidesToShow : 4,		// 한 화면에 보여질 컨텐츠 개수
							slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
							speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
							arrows : false, 		// 옆으로 이동하는 화살표 표시 여부
							dots : false, 		// 스크롤바 아래 점으로 페이지네이션 여부
							autoplay : true,			// 자동 스크롤 사용 여부
							autoplaySpeed : 5000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
							pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
							vertical : false,		// 세로 방향 슬라이드 옵션
							draggable : true, 	//드래그 가능 여부 
						});
					}

					// 메인 추천 프로그램 slick 반응형
					function recommendedProgram() {
						$('.recommendedProgram').slick({
							slide: 'li',		//슬라이드 되어야 할 태그 ex) div, li 
							infinite : true, 	//무한 반복 옵션	 
							slidesToShow : 4,		// 한 화면에 보여질 컨텐츠 개수
							slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
							speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
							arrows : false, 		// 옆으로 이동하는 화살표 표시 여부
							dots : false, 		// 스크롤바 아래 점으로 페이지네이션 여부
							autoplay : true,			// 자동 스크롤 사용 여부
							autoplaySpeed : 5000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
							pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
							vertical : false,		// 세로 방향 슬라이드 옵션
							draggable : true, 	//드래그 가능 여부 
						});
					}
				</script>
				<div id="main">
					<div id="main_visual">
						
						<div class="in_w">
							<div class="in">
								<!-- 베너 시작 -->
								<ul class="ms slick-initialized slick-slider">
									<div aria-live="polite" class="slick-list draggable " >
										
										<div class="slick-track mainBanner" style="opacity: 1; width: auto;">
											<li class="item slick-slide"  >
												<div class="img_pc">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=e049304328c12031ec8c05162c558f206db30ab9edb0bb8e4f449a9903cb06fb" alt="" style="display: block; margin: 0 auto;">
													<div class="hide">꿈의숲 송년공연 겨울이야기 2022.12.24~12.25 꿈의숲아트센터</div>
												</div>
												<div class="btn_w">
													<a href="https://www.sejongpac.or.kr/portal/qestnar/qustnr/view.do?qustnrSn=1068&amp;menuNo=200027&amp;status=T&amp;pageUnit=8&amp;pageIndex=1" class="r" tabindex="-1"><span>상세보기</span></a>
												</div>
											</li>
											
											<li class="item slick-slide ">
												<div class="img_pc">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=96f9f2230a6336df6cdd85664f993a15ad9dfc36288f971a5bacb5e178aa54a2" alt="" style="display: block; margin: 0 auto;">
													<div class="hide">투명한 미래전</div>
												</div>
												<div class="btn_w">
													<a href="#" onclick="javascript:showPerformPop('b5de2212140946a01');return false;" class="l ReservationTitle" tabindex="-1"><span>예매하기</span></a> <a href="/portal/performance/exhibit/view.do?performIdx=33789&amp;menuNo=200005" class="r" tabindex="-1"><span>상세보기</span></a>
												</div>
											</li>
											
											<li class="item slick-slide" >
												<div class="img_pc">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=7dc99ce1910546cfea5bc24409eb58294200ca52209836814279c2c87fbc6042" alt="" style="display: block; margin: 0 auto;">
													<div class="hide">유니버설발레단 호두까기 인형 2022.12.22(목)~12.31(토) 세종대극장</div>
												</div>
												<div class="btn_w">
													<a href="#" onclick="javascript:showPerformPop('grpb2210111117a01');return false;" class="l ReservationTitle" tabindex="-1">
														<span>예매하기</span>
													</a> 
													<a href="/portal/performance/performance/view.do?performIdx=33630&amp;menuNo=200004" class="r" tabindex="-1">
														<span>상세보기</span>
													</a>
												</div>
											</li>
											
											<li class="item slick-slide" >
												<div class="img_pc">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=a1eb39cceb02fcda61498353859fbcdc4200ca52209836814279c2c87fbc6042" alt="" style="display: block; margin: 0 auto;">
													<div class="hide">뮤지컬 캣츠 내한공연-서울 musical cats 2023.1.20(금)~03.12(일)세종대극장</div>
												</div>
												<div class="btn_w">
													<a href="#" onclick="javascript:showPerformPop('grpm2210061638a01');return false;" class="l ReservationTitle" tabindex="-1"><span>예매하기</span></a> <a href="/portal/performance/performance/view.do?performIdx=33622&amp;menuNo=200004" class="r" tabindex="-1"><span>상세보기</span></a>
												</div>
											</li>
											
											<li class="item slick-slide" aria-hidden="true" role="option" tabindex="-1" style="width: 2000px; position: relative; left: -8000px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
												<div class="img_pc">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=593f88dd921509eb5c44b9dd3a6c06223f48942c620f71cc3fc0c508cc687eff" alt="" style="display: block; margin: 0 auto;">
													<div class="hide">셀럽이 사랑한 bag&amp;shoes 2022.12.31~2023.03.25 세종미술관</div>
												</div>
												<div class="btn_w">
													<a href="#" onclick="javascript:showPerformPop('b5dt2212121427a01');return false;" class="l ReservationTitle" tabindex="0"><span>예매하기</span></a> <a href="/portal/performance/exhibit/view.do?performIdx=33784&amp;menuNo=200005" class="r" tabindex="0"><span>상세보기</span></a>
												</div>
											</li>
											
										</div>
										
										
									</div>
								</ul>
								<!-- 베너 끝 -->
							</div>
							
							<div class="thumb_w">
								<!-- #main_visual 썸네일 -->
								<div class="inner">
									<ul class="ms2 slick-initialized slick-slider" id="mainVisualThumb">
										<div aria-live="polite" class="slick-list draggable">
											<div class="slick-track fixedSlick mainVisualThumb" style="opacity: 1; width: 400px; transform: translate3d(0px, 0px, 0px);">
												<li class="item slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" role="option" tabindex="-1" style="width: 92px; ">
													<button type="button" tabindex="0">
														<strong class="in"> 
															<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=e674d1e93fc4c5023b1b8990884427d65780e802885c9a2e4f5ff6a995362cef" alt="꿈의숲 송년공연 겨울이야기 2022.12.24~12.25 꿈의숲아트센터">
														</strong>
													</button>
												</li>
												<li class="item slick-slide slick-active" data-slick-index="1" aria-hidden="false" role="option" tabindex="-1" style="width: 92px;">
													<button type="button" tabindex="0">
														<strong class="in"> <img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=c0248f6783e813baf17ae0438849314598e0e7c45a5c149f65e15b47100fce11" alt="투명한 미래전 ">
														</strong>
													</button>
												</li>
												<li class="item slick-slide slick-active" data-slick-index="2" aria-hidden="false" role="option" tabindex="-1" style="width: 92px;">
													<button type="button" tabindex="0">
														<strong class="in"> <img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=c16f9bb18fd876aa07d90051d369fccd2b2061ad95b408c44731011a6c60517c" alt="유니버설발레단 호두까기 인형 2022.12.22(목)~12.31(토) 세종대극장">
														</strong>
													</button>
												</li>
												<li class="item slick-slide slick-active" data-slick-index="3" aria-hidden="false" role="option" tabindex="-1" style="width: 92px;">
													<button type="button" tabindex="0">
														<strong class="in"> <img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=f82a3571b7df23a6aa38eb59781dbf2a&amp;streFileNm=cef1655f89b9cf076fee29b429f06a19610859f559405acebf035c508af9a606" alt="뮤지컬 캣츠 내한공연-서울 musical cats 2023.1.20(금)~03.12(일)세종대극장">
														</strong>
													</button>
												</li>
												<li class="item slick-slide slick-active" data-slick-index="4" aria-hidden="false" role="option" tabindex="-1" style="width: 92px;">
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
									<button type="button" class="prev slick-arrow slick-hidden" aria-disabled="true" tabindex="-1" style="">이전</button>
									<button type="button" class="next slick-arrow slick-hidden" aria-disabled="true" tabindex="-1" style="">다음</button>
								</div>
								
							</div>
						</div>
					</div>
					<!-- #main_visual 썸네일 끝-->
					
					
					<!-- 카테고리 시작-->
					<div id="m1" class="inner aos-init aos-animate" data-aos="fade-up">
						<ul class="clearfix s">
							<li><a href="subMainPerformance.perf">
									<div class="img">
										<img src="./resources/sejongpac/static/portal/img/main/m1_3.gif" alt="">
									</div>
									<div class="txt">MECENAT 투데이</div>
							</a></li>
							<li><a href="list.no?boardCode=0">
									<div class="img">
										<img src="./resources/sejongpac/static/portal/img/main/m1_4.gif" alt="">
									</div>
									<div class="txt">MECENAT 소식</div>
							</a></li>
							<li><a href="setInfom.perf">
									<div class="img" style="top: 0px;">
										<img src="./resources/sejongpac/static/portal/img/main/m1_5.gif" alt="">
									</div>
									<div class="txt">좌석배치도</div>
							</a></li>
							<li><a href="infomTicket.rv">
									<div class="img">
										<img src="./resources/sejongpac/static/portal/img/main/m1_7.gif" alt="">
									</div>
									<div class="txt">예매안내</div>
							</a></li>
							<li><a href="directions.cs">
									<div class="img" style="top: 0px;">
										<img src="./resources/sejongpac/static/portal/img/main/m1_6.gif" alt="">
									</div>
									<div class="txt">오시는길</div>
							</a></li>
							<li><a href="/portal/singl/faq/list.do?menuNo=200052">
									<div class="img">
										<img src="./resources/sejongpac/static/portal/img/main/m1_12.gif" alt="">
									</div>
									<div class="txt">FAQ</div>
							</a></li>
							<li><a href="etiquette.cs">
									<div class="img">
										<img src="./resources/sejongpac/static/portal/img/main/m1_11.gif" alt="">
									</div>
									<div class="txt">관람예절</div>
							</a></li>
						</ul>
					</div>
					<!-- 카테고리 끝-->
					<!-- .m1 -->
					
					<div class="inner_m">
						<!-- 2021-12-06  추천프로그램 영역 숨김처리 LYT -->
						<div id="m2" data-aos="fade-up" class="aos-init">
							<div class="in">
								<div class="tit-main">
									<span class="small">Recommended Program</span>
									<h2 class="t">추천 프로그램</h2>
									<p class="txt">
										<span class="block-pc">MECENAT의 다양한</span> 프로그램 추천드립니다.
									</p>
									<div class="btns mb-st1 clearfix">
										<button type="button" class="prev slick-arrow slick-hidden" aria-disabled="true" tabindex="-1">이전</button>
										<button type="button" class="next slick-arrow slick-hidden" aria-disabled="true" tabindex="-1">다음</button>
										<span class="after"></span>
									</div>
								</div>
								<ul class="clearfix cont s slick-initialized slick-slider">
									<div aria-live="polite" class="slick-list draggable">
										<div class="slick-track recommendedProgram" style="opacity: 1; width: 800px; transform: translate3d(0px, 0px, 0px);">
											<li class="item slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" role="option" tabindex="-1" style="width: 226px;">
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
											
											<li class="item slick-slide slick-current slick-active" data-slick-index="1" aria-hidden="false" role="option" tabindex="-1" style="width: 226px;">
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
											
											<li class="item slick-slide slick-active" data-slick-index="2" aria-hidden="false" role="option" tabindex="-1" style="width: 226px;">
												<div class="rel">
													<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=76331b7fb043b513c10e97964b50b143&amp;streFileNm=f805f211498fecf61e4f5b1d8a2b868a4200ca52209836814279c2c87fbc6042" alt="2022 크리스마스 액츄얼리 2022-12-25 세종체임버홀 상세">
													<div class="hover">
														<div class="table">
															<div class="vertical">
																<a href="#" onclick="javascript:showPerformPop('chpi2211241031a01');return false;" class="r ReservationTitle" tabindex="0">예매</a> <a href="/portal/performance/performance/view.do?performIdx=33742&amp;menuNo=200004" class="d" tabindex="0">상세</a>
															</div>
														</div>
													</div>
												</div>
											</li>
											
											<li class="item slick-slide slick-active" data-slick-index="3" aria-hidden="false" role="option" tabindex="-1" style="width: 226px;">
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
											
											<li class="item slick-slide slick-active" data-slick-index="4" aria-hidden="false" role="option" tabindex="-1" style="width: 226px;">
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
						
						<div id="m4" class="aos-init" data-aos="fade-up">
							<ul class="half_w clearfix ">
								<li class="l m_notice">
									<div class="tit-main">
										<span class="small">Notice</span>
										<h2 class="t">최신소식</h2>
										<p class="txt">
											<span class="block-pc">MECENAT의 <br> 최신 소식을 알려드립니다.
											</span>
										</p>
									</div>
									<ul class="cont clearfix latestNews">
										<!-- ajax 덮어씌우기 -->
									</ul> <a href="list.no?boardCode=0" class="more">더보기</a>
								</li>
							</ul>
						</div>
						<!-- #m4 -->
						<script type="text/javascript">
							 $(function() {
								 console.clear();

								 latestNews();
							})
							
							//최신 소식 ajax 
							function latestNews(){ 
								var boardCode = [40, 50];
								
					     		$.ajax({
					     			url : "latestNews.no",
									data :{ boardCode : boardCode}, 
					     			success : function(list){
					     				$(".latestNews").html(list);
					     			} ,
					     			error : function(){
					     				console.log("latestNews 통신실패");	
					     			}
					     		})
					     	}
						</script>
					</div>
					<!-- #m2, #m3, #m4 -->
				</div>
			</div>
			<!-- #cont -->
		</div>
		<script src="./resources/sejongpac/static/portal/js/mainTemp.js?v=1"></script>
		<script src="./resources/sejongpac/static/portal/js/common.js"></script>
		<!-- 메인 끝 -->
		<script src="./resources/sejongpac/static/portal/js/aos.js"></script>
		<script>
			$(document).ready(function() {
				AOS.init({
					//easing: 'ease-in-out-sine'
				});
			});
		</script>
		<!-- footer Section Begin -->
		<jsp:include page="../views/common/footer.jsp" />
		<!-- footer End -->
	</section>
</body>
</html>