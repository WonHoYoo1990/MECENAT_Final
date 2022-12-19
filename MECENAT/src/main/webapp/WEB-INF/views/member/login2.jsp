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
<meta property="og:title" content="세종문화회관">
<meta property="og:image" content="https://www.sejongpac.or.kr/static/portal/img/main/201105_mtimg.jpg">
<title>티켓 구입방법 | 예매안내 | 고객센터 |</title>

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



<!--[if lt IE 9]>
<script src="/static/portal/js/html5.js"></script>
<![endif]-->
<style>
body.hide-focus-ring *:focus {
	outline: none !important;
}
</style>
</head>
<body class="hide-focus-ring">
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
		<jsp:include page="../common/header2.jsp" />
		<!-- Header End -->



		<section id="sub_visual">
			<div class="bg_w">
				<div class="bg" style="background-image: url(&quot;/static/portal/img/common/subvisual-common.jpg&quot;); transform: translate(-20px, 10px) scale(1.1);"></div>
			</div>
			<h2 class="sub-t">
				<strong class="ani" style="opacity: 1;">개인화 서비스</strong>
			</h2>
		</section>


		<div id="depth_w" class="on">
			<div class="inner">
				<ul class="clearfix dot dep1 li2">
					<li class="home"><span><span>HOME</span></span></li>
					<li>
						<div class="rel">
							<a href="#"><span>마이페이지</span></a>
							<ul class="depth" style="display: block;">
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
							<a href="#"><span>개인화 서비스</span></a>
							<ul class="depth" style="display: none;">

								<li><a href="/portal/myPage/individual/list.do?menuNo=200153"><span>개인화 서비스</span></a></li>

								<li><a href="/portal/myPage/reservation/list.do?menuNo=200154"><span>예매내역확인</span></a></li>

								<li><a href="/portal/myPage/happyApply/list.do?menuNo=200155"><span>천원의행복 신청내역</span></a></li>

								<li><a href="/portal/myPage/package/gift.do?menuNo=200160"><span>패키지 선물</span></a></li>

								<li><a href="/portal/myPage/scrap/list.do?menuNo=200157"><span>관심 공연/전시</span></a></li>

								<li><a href="/portal/myPage/qnaMng/list.do?menuNo=200158"><span>고객문의내역</span></a></li>

								<li><a href="/portal/myPage/acntMng/forUpdate.do?menuNo=200168"><span>회원정보 수정</span></a></li>

								<li><a href="/portal/myPage/sns/sns.do?menuNo=200159"><span>SNS연결설정</span></a></li>


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
				<div class="inner"></div>


				<script>
					var loc = $("#depth_w > div > ul > li").length - 1;
					$("#depth_w .dep1").addClass("li" + loc);

					var len = $(".tabs-st1 li").length;
					$(".tabs-st1").addClass("li" + len);
				</script>

				<div class="sub_page">












					<style>
#sub_page {
	padding-top: 0;
}
</style>

					<!-- data tables -->

					<article class="">
						<div class="mypage_top_w">
							<div class="inner clearfix">
								<ul class="mypage_top clearfix">
									<li class="l">

















										<dl class="card_0000">
											<!-- .card_번호 -->
											<dt>
												<img src="/static/portal/img/mypage/card_0000.png" alt="">

												<div class="txt">
													<strong class="">유원호</strong>님, 안녕하세요! <strong class="grade"> <span class="octagon_w we">
															<!-- we 웰컴,st 스타트,sp 스페셜,si 시그니처 --> <span class="octagon"> <span class="in"></span>
														</span> <span class="ttt st">We </span> <span class="octagon border"><span class="in"></span></span>
													</span> 웰컴(Welcome)
													</strong>
												</div>


											</dt>
										</dl>
								</li>
									<li class="r"><span class="date">가입일자 : 2022-12-01 </span> <a href="/portal/myPage/acntMng/forUpdate.do?menuNo=200168" class="btn">회원정보 수정</a> <a href="/portal/myPage/reservation/list.do?menuNo=200154" class="btn">예매확인</a> <a href="/portal/member/user/logout.do" class="logout">로그아웃</a></li>
								</ul>

								<!-- <a href="/portal/main/contents.do?menuNo=200091" class="btn-grade">등급별 혜택보기</a> -->
								<button type="button" class="btn-grade" onclick="popIndividual(this,'individual','#pop_we')">내 혜택 확인하기</button>
							</div>
						</div>
						<div class="my_state_renew inner">
							<div class="top">
								<div class="tit-st4 rel">
									2022년 나의 이용 현황 <a href="/portal/main/contents.do?menuNo=200091" class="bg-navy ab btn">등급별 혜택보기</a>
								</div>

								<ul class="clearfix dev">
									<li clas="item">
										<div class="ico">
											<strong class="ico-s large">S</strong>
										</div>
										<dl>
											<dt>세종ⓢ포인트</dt>
											<dd>
												0 <strong class="ico-s size13" style="top: 0;">S</strong>
											</dd>
										</dl>
								</li>
									<li clas="item">
										<div class="ico">
											<img src="/static/portal/img/mypage/ms1.png" alt="">
										</div>
										<dl>
											<dt>이용횟수</dt>
											<dd>0회</dd>
										</dl>
								</li>
									<li clas="item">
										<div class="ico">
											<img src="/static/portal/img/mypage/ms2.png" alt="">
										</div>
										<dl>
											<dt>2023년 예상등급</dt>
											<dd>웰컴(Welcome)</dd>
										</dl>
								</li>
								</ul>
							</div>

							<div class="grade_txt">

								<strong class="color-red">스타트 등급</strong>까지 <strong class="color-red dec">3,000ⓢ, 2회</strong> 방문 남았습니다.


							</div>
							<div class="grade_graph per15">
								<!-- per15, per40,per65,per80 -->
								<div class="graph"></div>
								<ul class="clearfix">
									<li>
										<div class="t">
											<span class="octagon_w we"> <!-- <span class='octagon border'><span class='in'></span></span> --> <span class="octagon"><span class="in"></span></span> <span class="ttt">We</span> <span class="octagon border"><span class="in"></span></span></span> <strong>웰컴</strong>
										</div>
										<div class="c">회원가입</div>
								</li>
									<li>
										<div class="t">
											<span class="octagon_w st"> <span class="octagon"> <span class="in"></span>
											</span> <span class="ttt">St</span>
											</span> <strong>스타트</strong>
										</div>
										<div class="c">
											3,000 <strong class="ico-s small">S</strong><br> 2회 방문
										</div>
								</li>
									<li>
										<div class="t">
											<span class="octagon_w sp"> <span class="octagon"> <span class="in"></span>
											</span> <span class="ttt">Sp</span>
											</span> <strong>스페셜</strong>
										</div>
										<div class="c">
											6,000 <strong class="ico-s small">S</strong><br> 4회 방문
										</div>
								</li>
									<li>
										<div class="add"></div>
										<div class="t">
											<span class="octagon_w si"> <span class="octagon"> <span class="in"></span>
											</span> <span class="ttt">Si</span>
											</span> <strong>시그니처</strong>
										</div>
										<div class="c">
											10,000 <strong class="ico-s small">S</strong><br> 7회 방문
										</div>
								</li>
								</ul>
							</div>
							<div class="my_point_renew">
								<div class="tit-st4">나의 포인트 적립 내역</div>
								<div class="my_sch">
									<ul class="clearfix">
										<li class="l"><span class="t">기간선택</span>

											<div class="clearfix btns">
												<button type="button" class="active timeBtn day7">1주일</button>
												<button type="button" class="timeBtn month1">1개월</button>
												<button type="button" class="timeBtn month3">3개월</button>
												<button type="button" class="timeBtn month6">6개월</button>
											</div></li>
										<li class="r">
											<div class="datepick clearfix">
												<ul class="clearfix">
													<li><label for="" class="hide">시작일 선택</label> <input type="text" name="searchStartDate" id="searchStartDate" placeholder="" class="hasDatepicker">
													<button type="button" class="ui-datepicker-trigger">
															<img src="/static/portal/img/mypage/calendar.gif" alt="Select date" title="Select date">
														</button></li>
													<li class="dash">-</li>
													<li><label for="" class="hide">종료일 선택</label> <input type="text" name="searchEndDate" id="searchEndDate" placeholder="" class="hasDatepicker">
													<button type="button" class="ui-datepicker-trigger">
															<img src="/static/portal/img/mypage/calendar.gif" alt="Select date" title="Select date">
														</button></li>
												</ul>
												<button type="button" class="view searchBtn">조회</button>
											</div>
									</li>
									</ul>
								</div>

								<table class="tbl-st1 f18" id="pointTable">
									<caption>일자, 구분, 행사명, 적립으로 구성된 나의 포인트 적립 내역 리스트</caption>
									<colgroup>
										<col width="10%">
										<col width="10%">
										<col>
										<col width="10%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">일자</th>
											<th scope="col">구분</th>
											<th scope="col">행사명</th>
											<th scope="col">적립</th>
										</tr>
									</thead>
									<tbody id="pointTbody">
										<tr>
											<td colspan="4">조회 결과가 없습니다.</td>
										</tr>
									</tbody>
								</table>

								<div class="mypage-pagination">
									<!--
				<a href="#" class="mypage-pagination__arrow first"></a>
				<a href="#" class="mypage-pagination__arrow prev"></a>
				-->
									<!-- append -->
									<ul id="pagingUl"></ul>
									<!--
				<a href="#" class="mypage-pagination__arrow next"></a>
				<a href="#" class="mypage-pagination__arrow last"></a>
				-->
								</div>

							</div>

						</div>
						<script>
							$(".octagon_w.we")
									.append(
											"<span class='octagon border'><span class='in'></span></span>");

							$(".datepick input")
									.datepicker(
											{
												dateFormat : 'yy-mm-dd',
												prevText : '이전 달',
												nextText : '다음 달',
												monthNames : [ '1월', '2월',
														'3월', '4월', '5월', '6월',
														'7월', '8월', '9월',
														'10월', '11월', '12월' ],
												monthNamesShort : [ '1월', '2월',
														'3월', '4월', '5월', '6월',
														'7월', '8월', '9월',
														'10월', '11월', '12월' ],
												dayNames : [ '일', '월', '화',
														'수', '목', '금', '토' ],
												dayNamesShort : [ '일', '월',
														'화', '수', '목', '금', '토' ],
												dayNamesMin : [ '일', '월', '화',
														'수', '목', '금', '토' ],
												showMonthAfterYear : true,
												yearSuffix : '년',
												showOn : "both",
												buttonImage : "/static/portal/img/mypage/calendar.gif",
												buttonText : "Select date"
											});

							$(document)
									.ready(
											function() {

												function monthSet(date) {
													var month = date.getMonth() + 1 < 10 ? '0'
															+ (date.getMonth() + 1)
															: (date.getMonth() + 1);
													return month;
												}
												function daySet(date) {
													var day = date.getDate() < 10 ? '0'
															+ date.getDate()
															: date.getDate();
													return day;
												}

												var today = new Date(), year = today
														.getFullYear(), month = monthSet(today);
												day = daySet(today);

												var tempTime = new Date();
												tempTime.setDate(tempTime
														.getDate() - 7);
												$('#searchStartDate')
														.val(
																tempTime
																		.getFullYear()
																		+ '-'
																		+ monthSet(tempTime)
																		+ '-'
																		+ daySet(tempTime));
												$('#searchEndDate').val(
														year + '-' + month
																+ '-' + day);

												var $TimeBtn = $('.timeBtn');

												$TimeBtn
														.on(
																'click',
																function() {
																	$TimeBtn
																			.removeClass('active');
																	$(this)
																			.addClass(
																					'active');

																	var changeTime = new Date();
																	if ($(this)
																			.hasClass(
																					'day7')) {
																		// 1주일
																		changeTime
																				.setDate(changeTime
																						.getDate() - 7);
																	} else if ($(
																			this)
																			.hasClass(
																					'month1')) {
																		// 1개월
																		changeTime
																				.setMonth(changeTime
																						.getMonth() - 1);
																	} else if ($(
																			this)
																			.hasClass(
																					'month3')) {
																		// 3개월
																		changeTime
																				.setMonth(changeTime
																						.getMonth() - 3);
																	} else if ($(
																			this)
																			.hasClass(
																					'month6')) {
																		// 6개월
																		changeTime
																				.setMonth(changeTime
																						.getMonth() - 6);
																	}
																	$(
																			'#searchStartDate')
																			.val(
																					changeTime
																							.getFullYear()
																							+ '-'
																							+ monthSet(changeTime)
																							+ '-'
																							+ daySet(changeTime))
																	$(
																			'#searchEndDate')
																			.val(
																					year
																							+ '-'
																							+ month
																							+ '-'
																							+ day);
																	return false;
																});

												searchPoint();

												$('.searchBtn').on('click',
														function() {
															searchPoint();
														});
												$('.hasDatepicker')
														.on(
																'keydown',
																function(e) {
																	if (e.originalEvent.keyCode == 13) {
																		searchPoint();
																	}
																});

												var $mypagePagination = $('.mypage-pagination ul li a');

												$(document)
														.on(
																'click',
																'.mypage-pagination ul li a',
																function() {
																	$(
																			'.mypage-pagination ul li a')
																			.removeClass(
																					'active');
																	$(this)
																			.addClass(
																					'active');

																	$(
																			'#pointTbody tr')
																			.hide()
																			.filter(
																					'.trDp_'
																							+ $(
																									this)
																									.attr(
																											'data-index'))
																			.css(
																					'display',
																					'table-row');
																	return false;
																});
											});

							function searchPoint() {
								var url = "/portal/myPage/individual/getNewMemberShipList.json";
								var stDate = $("#searchStartDate").val()
										.replace(/-/g, "");
								var endDate = $("#searchEndDate").val()
										.replace(/-/g, "");
								var params = {
									searchStartDate : stDate,
									searchEndDate : endDate
								};

								$
										.ajax({
											url : url,
											type : 'post',
											data : params,
											dataType : "json",
											success : function(data) {
												if (data.resultCode == 'success') {
													console
															.log(data.memberShipPointList);
													var results = data.memberShipPointList;
													var insertHtml = "";
													var insertPageHtml = "";
													var cnt = 1;
													$
															.each(
																	results,
																	function(i) {
																		var index = i + 1;
																		var trClass = 'trDp_'
																				+ cnt;
																		var typeCd = results[i].isstypeCd;
																		var typeName = "";
																		if (typeCd == '000001') {
																			typeName = '공연';
																		} else if (typeCd == '000003') {
																			typeName = '강좌';
																		} else if (typeCd == '000008') {
																			typeName = '전시';
																		} else if (typeCd == '000009') {
																			typeName = '추가적립';
																		}
																		insertHtml += '<tr style="display:none;" class=' + trClass + '>';
																		insertHtml += '<td>'
																				+ results[i].tranDate
																				+ '</td><td>'
																				+ typeName
																				+ '</td><td>'
																				+ results[i].programName
																				+ '</td><td>'
																				+ results[i].pointAmt
																						.toString()
																						.replace(
																								/\B(?=(\d{3})+(?!\d))/g,
																								",")
																				+ '</td>';
																		insertHtml += '</TR>';
																		if (index % 10 == 1) {
																			if (cnt == 1) {
																				insertPageHtml += "<li><a href='#' class='active' data-index='" + cnt + "'>"
																						+ cnt
																						+ "</a></li>";
																			} else {
																				insertPageHtml += "<li><a href='#' data-index='" + cnt + "'>"
																						+ cnt
																						+ "</a></li>";
																			}

																		}
																		if (index % 10 == 0) {
																			cnt++;
																		}
																	});
													$("#pointTbody").html(
															insertHtml);
													$("#pagingUl").html(
															insertPageHtml);
													$("#pointTbody tr").hide();
													$(".trDp_1").css('display',
															'table-row');
												} else if (data.resultCode == 'fail') {
													var insertHtml = '<tr><td colspan="4">조회 결과가 없습니다.</td></tr>';
													$("#pointTbody").html(
															insertHtml);
												}
											}

										});

							}
						</script>
						<!-- <div class="inner">

		<div class="tit-st4 rel">
		맞춤공연
		<button type="button" class="bg-navy ab" onclick="sch()">맞춤정보 설정 </button>
		</div>
	</div> -->



						<script src="/static/ticket/js/ticket.js"></script>

						<script>
							function popIndividual(target, test, tabId) {
								//$("body").css("overflow-y","hidden")
								$("body").append(
										'<div class="allmenu_bg"></div>');
								$(".allmenu_bg")
										.append(
												'<div class="modal_w transform" style="display:block"></div>')
								$
										.ajax({
											url : "/static/portal/ajax/mypage/"
													+ test + ".jsp",
											success : function(result) {
												$(".modal_w").html(result);
												$(tabId).show().focus();
												$(".layerClose")
														.click(
																function() {
																	$(
																			".allmenu_bg")
																			.remove();
																	$(target)
																			.focus();
																	//$("body").css("overflow-y","scroll")
																	$(
																			".octagon_w.we")
																			.append(
																					"<span class='octagon border'><span class='in'></span></span>");
																});
											}
										});
							}
							function sch() {
								$("body").append(
										'<div class="allmenu_bg"></div>');
								$(".allmenu_bg").append(
										'<div class="modal_w wide2 mp"></div>')

								$
										.ajax({
											url : "/portal/myPage/individual/setInfo.do?viewType=CONTBODY",
											success : function(result) {
												$(".modal_w").html(result);
												modalH = $(".modal_w")
														.outerHeight()
												$(".modal_w")
														.attr("tabindex", "0")
														.show()
														.focus()
														.css(
																{
																	"margin-top" : -(modalH / 2)
																});
												$(".layerClose")
														.click(
																function() {
																	$(
																			".modal_w")
																			.removeAttr(
																					"tabindex")
																			.remove();
																	$(
																			".allmenu_bg")
																			.remove();
																	$(
																			".tit-st4 button")
																			.focus();
																	return false;
																});
											}
										});
							}
							$('.bbs-mypage .s').slick({
								slidesToShow : 5,
								responsive : [ {
									breakpoint : 1450,
									settings : {
										slidesToShow : 4
									}
								}, {
									breakpoint : 1024,
									settings : {
										slidesToShow : 3
									}
								}, {
									breakpoint : 640,
									settings : {
										slidesToShow : 2
									}
								}, {
									breakpoint : 400,
									settings : {
										slidesToShow : 1
									}
								} ]
							});

							$(".bbs-mypage .item").hover(function() {
								$(this).find(".hover").stop().fadeIn(150);
							}, function() {
								$(this).find(".hover").stop().fadeOut(150);
							})
							$(".bbs-mypage .in").focusin(function() {
								$(this).find(".hover").stop().fadeIn(150);
							})
							$(".bbs-mypage .in").focusout(function() {
								$(this).find(".hover").stop().fadeOut(150);
							})
						</script>
					</article>
				</div>
			</div>

		</div>








		ㅡ,ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ



		<!-- footer Section Begin -->
		<jsp:include page="../common/footer2.jsp" />
		<!-- footer End -->


	</section>
</body>
</html>