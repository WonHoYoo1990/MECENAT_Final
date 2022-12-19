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
<title>setInfom</title>

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

</head>
<body class="hide-focus-ring">
	<section id="wrap">
		<!-- Header Section Begin -->
		<jsp:include page="../common/header2.jsp" />
		<!-- Header End -->
		<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>

		<div id="depth_w" class="">
			<div class="inner">
				<ul class="clearfix dot dep1 li3">
					<li class="home"><span><span>HOME</span></span></li>
					<li>
						<div class="rel">
							<a href="#"><span>공연·전시·강좌</span></a>
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
							<a href="#"><span>좌석배치도</span></a>
							<ul class="depth" style="display: none;">
								<li><a href="/portal/bbs/B0000033/list.do?menuNo=200003"><span>세종시즌</span></a></li>
								<li><a href="/portal/performance/performance/performList.do?menuNo=200004"><span>공연일정</span></a></li>
								<li><a href="/portal/performance/performance/performList.do?searchPackage=P&amp;menuNo=200214"><span>패키지</span></a></li>
								<li><a href="/portal/performance/exhibit/performList.do?menuNo=200005"><span>전시일정</span></a></li>
								<li><a href="http://academy.sejongpac.or.kr/academy/singl/academyProgram/list.do?menuNo=800003" target="_blank" title="새창 열림"><span>강좌일정</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200094"><span>좌석배치도</span></a></li>
							</ul>
						</div>
				</li>

					<li>
						<div class="rel">
							<a href="#"><span>세종대극장</span></a>
							<ul class="depth" style="display: none;">

								<li><a href="/portal/main/contents.do?menuNo=200094"><span>세종대극장</span></a></li>

								<li><a href="/portal/main/contents.do?menuNo=200095"><span>세종M씨어터</span></a></li>

								<li><a href="/portal/main/contents.do?menuNo=200096"><span>세종 체임버홀</span></a></li>

								<li><a href="https://www.sejongpac.or.kr/upload/vr/vr2/tour.html" target="_blank" title="새창 열림"><span>세종S씨어터</span></a></li>

								<li><a href="/portal/main/contents.do?menuNo=200221"><span>꿈의숲 퍼포먼스홀</span></a></li>

								<li><a href="/portal/main/contents.do?menuNo=200224"><span>꿈의숲 콘서트홀</span></a></li>

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

					<link rel="stylesheet" type="text/css" href="/static/portal/css/seat.css">
					<article class="seat inner">
						<div class="btn_w_seat">
							<a href="/portal/cmmn/file/fileDown.do?atchFileId=e7d8fe1e04e94c8bb2da09e179874b7c&amp;fileSn=3" class="btn-st3 bg-black_r">피난대피영상 보기</a> <a href="/portal/cmmn/file/fileDown.do?atchFileId=e7d8fe1e04e94c8bb2da09e179874b7c&amp;fileSn=4" class="btn-st3 bg-black_r">피난안내도 보기</a> <a target="_blank" title="새창열림" href="https://www.sejongpac.or.kr/upload/vr/vr3/tour.html" class="btn-st3 bg-black_r">VR 보기</a>
						</div>

						<h3 class="tit f24">세종대극장</h3>
						<p class="txt f18">세종문화회관 공연장의 좌석배치도입니다. 관람을 원하시는 공연장의 좌석을 선택하시면 해당 구역의 무대 시각선을 확인 하실 수 있습니다.</p>


						<div class="rel">
							<div class="seats ie7s">
								<ul class="seat_tabs clearfix">
									<li><a href="#tab1" class="floor1 table active" id="another"><span class="vertical"><strong>1st</strong>Floor</span> <span class="hide">1</span></a></li>
									<li><a href="#tab2" class="floor2 table"><span class="vertical"><strong>2nd</strong>Floor</span> <span class="hide">2</span></a></li>
									<li><a href="#tab3" class="floor3 table"><span class="vertical"><strong>3rd</strong>Floor</span> <span class="hide">3</span></a></li>
								</ul>
								<ol class="floorList">
									<li class="active">
										<div class="seatThumb box">
											<img src="/static/portal/img/perform/01/seat_010.jpg" alt="1st Floor">
											<ul class="seatType sjs1">
												<li class="on"><a href="#" class="typeA"><em>A</em></a></li>
												<li><a href="#" class="typeB"><em>B</em></a></li>
												<li><a href="#" class="typeC"><em>C</em></a></li>
												<li><a href="#" class="typeD"><em>D</em></a></li>
												<li><a href="#" class="typeE"><em>E</em></a></li>
											</ul>
										</div>
										<div class="box_s">
											<h4 class="tit_s color-purple sel_tit type1">
												<span class="nf">1</span>층 <span class="nt">A</span>열 <span class="n">62번 좌석</span>
											</h4>
											<p class="txt_s">좌석을 선택하면 무대시각선을 보실 수 있습니다.</p>
											<ul class="seatList">
												<li class="on">
													<div class="seatBg seat1A">
														<img src="/static/portal/img/perform/01/1st_type_a1.png" alt="">
														<div class="hide">1층 A열 좌석배치도 총 198좌석이 있고 직사각형으로 배치되어있고 총 13칸 18줄이 있습니다. 1열(1~5 좌석 총 5좌석) 2열(6~11 좌석 총 6좌석) 3열(12~18 좌석 총 7좌석) 4열(19~26 좌석 총 8좌석) 5열(27~35 좌석 총 9좌석) 6열(36~45 좌석 총 10좌석) 7열(46~56 좌석 총 11좌석) 8열(57~68 좌석 총 12좌석) 9열(69~81 좌석 총 13좌석) 10열(82~94 좌석 총 13좌석) 11열(95~107 좌석 총 13좌석) 12열(108~120 좌석 총 13좌석) 13열(121~133 좌석 총 13좌석) 14열(134~146 좌석 총 13좌석) 15열(147~159 좌석 총 13좌석) 16열(160~172 좌석 총 13좌석) 17열(173~185 좌석 총 13좌석) 18열(186~198 좌석 총 13좌석) 62번 좌석은 8번째줄 가운데, 70번좌석은 9번째줄 2번쨰 칸, 80번좌석은 9번째줄 12번째 칸, 174번 좌석은 17번째 줄 2번쨰 칸, 184번 좌석은 17번쨰 줄 12번쨰 칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n62 on"><em><img src="/static/portal/img/perform/01/1st_type_a_n62.jpg" alt="62번 좌석"></em></a></li>
															<li><a href="#" class="n70"><em><img src="/static/portal/img/perform/01/1st_type_a_n70.jpg" alt="70번 좌석"></em></a></li>
															<li><a href="#" class="n80"><em><img src="/static/portal/img/perform/01/1st_type_a_n80.jpg" alt="80번 좌석"></em></a></li>
															<li><a href="#" class="n174"><em><img src="/static/portal/img/perform/01/1st_type_a_n174.jpg" alt="174번 좌석"></em></a></li>
															<li><a href="#" class="n184"><em><img src="/static/portal/img/perform/01/1st_type_a_n184.jpg" alt="184번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on" style=""><img src="/static/portal/img/perform/01/1st_type_a_64.jpg" alt="62번 좌석에서의 시점(무대가 오른쪽 대각선으로 보입니다)"></li>
														<li style="display: none;" class=""><img src="/static/portal/img/perform/01/1st_type_a_70.jpg" alt="70번 좌석에서의 시점(무대가 오른쪽 대각선으로 보입니다)"></li>
														<li class="" style="display: none;"><img src="/static/portal/img/perform/01/1st_type_a_80.jpg" alt="80번 좌석에서의 시점(무대가 오른쪽 대각선으로 보입니다)"></li>
														<li style="display: none;"><img src="/static/portal/img/perform/01/1st_type_a_174.jpg" alt="174번 좌석에서의 시점(무대가 오른쪽 대각선으로 보입니다)"></li>
														<li style="display: none;"><img src="/static/portal/img/perform/01/1st_type_a_184.jpg" alt="184번 좌석에서의 시점(무대가 살짝 오른쪽 대각선으로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat1B">
														<img src="/static/portal/img/perform/01/1st_type_b1.png" alt="">
														<div class="hide">1층 B열 좌석배치도 총 221좌석이 있고 직사각형으로 배치되어있고 총 12칸 19줄이 있습니다. 1열(1~12 좌석 총 12좌석) 2열(13~24 좌석 총 12좌석) 3열(25~36 좌석 총 12좌석) 4열(37~48 좌석 총 12좌석) 5열(49~60 좌석 총 12좌석) 6열(61~72 좌석 총 12좌석) 7열(73~84 좌석 총 12좌석) 8열(85~96 좌석 총 12좌석) 9열(97~108 좌석 총 12좌석) 10열(109~120 좌석 총 12좌석) 11열(121~132 좌석 총 12좌석) 12열(133~144 좌석 총 12좌석) 13열(145~156 좌석 총 12좌석) 14열(157~168 좌석 총 12좌석) 15열(169~180 좌석 총 12좌석) 16열(181~192 좌석 총 12좌석) 17열(193~204 좌석 총 12좌석) 18열(205~216 좌석 총 12좌석) 19열(217~221 좌석 총 5좌석 모두 휠체어 좌석 입니다.) 14번 좌석은 2번째줄 2번째 칸, 23번좌석은 2번째줄 11번쨰 칸, 78번좌석은 7번째줄 6번째 칸, 98번 좌석은 9번째 줄 2번쨰 칸, 107번 좌석은 9번쨰 줄 11번쨰 칸, 194번 좌석은 17번쨰 줄 2번쨰 칸, 203번 좌석은 17번쨰 줄 11번쨰 칸에 있습니다.</div>

														<ul class="seatNum">
															<li><a href="#" class="n14 on"><em><img src="/static/portal/img/perform/01/1st_type_b_n14.jpg" alt="14번 좌석"></em></a></li>
															<li><a href="#" class="n23"><em><img src="/static/portal/img/perform/01/1st_type_b_n23.jpg" alt="23번 좌석"></em></a></li>
															<li><a href="#" class="n78"><em><img src="/static/portal/img/perform/01/1st_type_b_n78.jpg" alt="78번 좌석"></em></a></li>
															<li><a href="#" class="n98"><em><img src="/static/portal/img/perform/01/1st_type_b_n98.jpg" alt="98번 좌석"></em></a></li>
															<li><a href="#" class="n107"><em><img src="/static/portal/img/perform/01/1st_type_b_n107.jpg" alt="107번 좌석"></em></a></li>
															<li><a href="#" class="n194"><em><img src="/static/portal/img/perform/01/1st_type_b_n194.jpg" alt="194번 좌석"></em></a></li>
															<li><a href="#" class="n203"><em><img src="/static/portal/img/perform/01/1st_type_b_n203.jpg" alt="203번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/1st_type_b_14.jpg" alt="14번 좌석에서의 시점(무대가 오른쪽 대각선으로 꽉차게 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_b_23.jpg" alt="23번 좌석에서의 시점(무대가 정면으로 꽉차게 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_b_78.jpg" alt="78번 좌석에서의 시점(무대가 살짝 오른쪽 대각선으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_b_98.jpg" alt="98번 좌석에서의 시점(무대가 살짝 오른쪽 대각선으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_b_107.jpg" alt="107번 좌석에서의 시점(무대가 정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_b_194.jpg" alt="194번 좌석에서의 시점(무대가 살짝 오른쪽 대각선으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_b_203.jpg" alt="203번 좌석에서의 시점(무대가 정면으로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat1C">
														<img src="/static/portal/img/perform/01/1st_type_c1.png" alt="">
														<div class="hide">1층 C열 좌석배치도 총 192좌석이 있고 직사각형으로 배치되어있고 총 12칸 16열이 있습니다. 모든 열 12 좌석씩 있습니다. 1열(1~12 좌석) 2열(13~24 좌석) 3열(25~36 좌석) 4열(37~48 좌석) 5열(49~60 좌석) 6열(61~72 좌석) 7열(73~84 좌석) 8열(85~96 좌석) 9열(97~108 좌석) 10열(109~120 좌석) 11열(121~132 좌석) 12열(133~144 좌석) 13열(145~156 좌석) 14열(157~168 좌석) 15열(169~180 좌석) 16열(181~192 좌석) 14번 좌석은 2번째줄 2번째 칸, 23번좌석은 2번째줄 11번쨰 칸, 98번좌석은 9번째줄 2번째 칸, 107번 좌석은 9번째 줄 11번쨰 칸, 126번 좌석은 11번쨰 줄 6번쨰 칸, 170번 좌석은 15번쨰 줄 2번쨰 칸, 179번 좌석은 15번쨰 줄 11번쨰 칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n14 on"><em><img src="/static/portal/img/perform/01/1st_type_c_n14.jpg" alt="14번 좌석"></em></a></li>
															<li><a href="#" class="n23"><em><img src="/static/portal/img/perform/01/1st_type_c_n23.jpg" alt="23번 좌석"></em></a></li>
															<li><a href="#" class="n98"><em><img src="/static/portal/img/perform/01/1st_type_c_n98.jpg" alt="98번 좌석"></em></a></li>
															<li><a href="#" class="n107"><em><img src="/static/portal/img/perform/01/1st_type_c_n107.jpg" alt="107번 좌석"></em></a></li>
															<li><a href="#" class="n126"><em><img src="/static/portal/img/perform/01/1st_type_c_n126.jpg" alt="126번 좌석"></em></a></li>
															<li><a href="#" class="n170"><em><img src="/static/portal/img/perform/01/1st_type_c_n170.jpg" alt="170번 좌석"></em></a></li>
															<li><a href="#" class="n179"><em><img src="/static/portal/img/perform/01/1st_type_c_n179.jpg" alt="179번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/1st_type_c_14.jpg" alt="14번 좌석에서의 시점(무대가 정면으로 꽉차게 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_c_23.jpg" alt="23번 좌석에서의 시점(무대가 살짝 오른쪽으로 꽉차게 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_c_98.jpg" alt="98번 좌석에서의 시점(정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_c_107.jpg" alt="107번 좌석에서의 시점(약간 오른쪽으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_c_126.jpg" alt="126번 좌석에서의 시점(정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_c_170.jpg" alt="170번 좌석에서의 시점(정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_c_179.jpg" alt="179번 좌석에서의 시점(정면으로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat1D">
														<img src="/static/portal/img/perform/01/1st_type_d1.png" alt="">
														<div class="hide">1층 D열 좌석배치도 총 221좌석이 있고 직사각형으로 배치되어있고 총 12칸 19줄이 있습니다. 1열(1~12 좌석 총 12좌석) 2열(13~24 좌석 총 12좌석) 3열(25~36 좌석 총 12좌석) 4열(37~48 좌석 총 12좌석) 5열(49~60 좌석 총 12좌석) 6열(61~72 좌석 총 12좌석) 7열(73~84 좌석 총 12좌석) 8열(85~96 좌석 총 12좌석) 9열(97~108 좌석 총 12좌석) 10열(109~120 좌석 총 12좌석) 11열(121~132 좌석 총 12좌석) 12열(133~144 좌석 총 12좌석) 13열(145~156 좌석 총 12좌석) 14열(157~168 좌석 총 12좌석) 15열(169~180 좌석 총 12좌석) 16열(181~192 좌석 총 12좌석) 17열(193~204 좌석 총 12좌석) 18열(205~216 좌석 총 12좌석) 19열(217~221 좌석 총 5좌석 모두 휠체어 좌석 입니다.) 14번 좌석은 2번째줄 2번째 칸, 23번좌석은 2번째줄 11번쨰 칸, 78번좌석은 7번째줄 6번째 칸, 98번 좌석은 9번째 줄 2번쨰 칸, 107번 좌석은 9번쨰 줄 11번쨰 칸, 194번 좌석은 17번쨰 줄 2번쨰 칸, 203번 좌석은 17번쨰 줄 11번쨰 칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n14 on"><em><img src="/static/portal/img/perform/01/1st_type_b_n14.jpg" alt="14번 좌석"></em></a></li>
															<li><a href="#" class="n23"><em><img src="/static/portal/img/perform/01/1st_type_b_n23.jpg" alt="23번 좌석"></em></a></li>
															<li><a href="#" class="n78"><em><img src="/static/portal/img/perform/01/1st_type_b_n78.jpg" alt="78번 좌석"></em></a></li>
															<li><a href="#" class="n98"><em><img src="/static/portal/img/perform/01/1st_type_b_n98.jpg" alt="98번 좌석"></em></a></li>
															<li><a href="#" class="n107"><em><img src="/static/portal/img/perform/01/1st_type_b_n107.jpg" alt="107번 좌석"></em></a></li>
															<li><a href="#" class="n194"><em><img src="/static/portal/img/perform/01/1st_type_b_n194.jpg" alt="194번 좌석"></em></a></li>
															<li><a href="#" class="n203"><em><img src="/static/portal/img/perform/01/1st_type_b_n203.jpg" alt="203번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/1st_type_d_14.jpg" alt="14번 좌석에서의 시점(좌측으로 꽉차게 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_d_23.jpg" alt="23번 좌석에서의 시점(좌측으로 꽉차게 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_d_78.jpg" alt="78번 좌석에서의 시점(약간 좌측으로  보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_d_98.jpg" alt="98번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_d_107.jpg" alt="107번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_d_194.jpg" alt="194번 좌석에서의 시점(약간 좌측으로  보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_d_203.jpg" alt="203번 좌석에서의 시점"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat1E">
														<img src="/static/portal/img/perform/01/1st_type_e1.png" alt="">
														<div class="hide">1층 E열 좌석배치도 총 198좌석이 있고 직사각형으로 배치되어있고 총 13칸 18줄이 있습니다. 왼쪽으로 부터 1열(1~5 좌석 총 5석) 2열(6~11 좌석 총 6좌석) 3열(12~18 좌석 총 7좌석) 4열(19~26 좌석 총 8좌석) 5열(27~35 좌석 총 9좌석) 6열(36~45 좌석 총 10좌석) 7열(46~56 좌석 총 11좌석) 8열(57~68 좌석 총 12좌석) 9열(69~81 좌석 총 13좌석) 10열(82~94 좌석 총 13좌석) 11열(95~107 좌석 총 13좌석) 12열(108~120 좌석 총 13좌석) 13열(121~133 좌석 총 13좌석) 14열(134~146 좌석 총 13좌석) 15열(147~159 좌석 총 13좌석) 16열(160~172 좌석 총 13좌석) 17열(173~185 좌석 총 13좌석) 18열(186~198 좌석 총 13좌석) 7번 좌석은 2번째줄 2번째 칸, 62번좌석은 8번째줄 6번쨰 칸, 70번좌석은 9번째줄 2번째 칸, 80번 좌석은 9번째 줄 11번쨰 칸, 174번 좌석은 17번쨰 줄 2번쨰 칸, 184번 좌석은 17번쨰 줄 11번쨰 칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n7 on"><em><img src="/static/portal/img/perform/01/1st_type_a_n7.jpg" alt="7번 좌석"></em></a></li>
															<li><a href="#" class="n62"><em><img src="/static/portal/img/perform/01/1st_type_a_n62.jpg" alt="62번 좌석"></em></a></li>
															<li><a href="#" class="n70"><em><img src="/static/portal/img/perform/01/1st_type_a_n70.jpg" alt="70번 좌석"></em></a></li>
															<li><a href="#" class="n80"><em><img src="/static/portal/img/perform/01/1st_type_a_n80.jpg" alt="80번 좌석"></em></a></li>
															<li><a href="#" class="n174"><em><img src="/static/portal/img/perform/01/1st_type_a_n174.jpg" alt="174번 좌석"></em></a></li>
															<li><a href="#" class="n184"><em><img src="/static/portal/img/perform/01/1st_type_a_n184.jpg" alt="184번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/1st_type_e_7.jpg" alt="7번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_e_64.jpg" alt="62번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_e_70.jpg" alt="70번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_e_80.jpg" alt="80번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_e_174.jpg" alt="174번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/1st_type_e_184.jpg" alt="184번 좌석에서의 시점(좌측으로 보입니다)"></li>
												</ul>
											</li>
											</ul>
											<!-- seatList -->

											<a href="#another" class="sc btn-seat">다른 좌석 확인</a>
										</div>
									</li>
									<!-- 1층 -->
									<li>
										<div class="seatThumb box">
											<img src="/static/portal/img/perform/01/seat_020.jpg" alt="2nd Floor">
											<ul class="seatType sjs2">
												<!-- 활성화 클래스 : on -->
												<li class="on"><a href="#" class="typeA "><em>A</em></a></li>
												<li><a href="#" class="typeB"><em>B</em></a></li>
												<li><a href="#" class="typeC"><em>C</em></a></li>
												<li><a href="#" class="typeD"><em>D</em></a></li>
												<li><a href="#" class="typeE"><em>E</em></a></li>
												<li><a href="#" class="typeF"><em>F</em></a></li>
												<li><a href="#" class="typeG"><em>G</em></a></li>
											</ul>
										</div>
										<div class="box_s">
											<h4 class="tit_s color-purple sel_tit type1">
												<span class="nf">1</span>층 <span class="nt">A</span>열 <span class="n">62번 좌석</span>
											</h4>
											<p class="txt_s">좌석을 선택하면 무대시각선을 보실 수 있습니다.</p>
											<ul class="seatList">
												<li class="on">
													<div class="seatBg seat2A">
														<img src="/static/portal/img/perform/01/2st_type_a1.png" alt="">
														<div class="hide">2층 A열 좌석배치도 총 88좌석이 14열이 있습니다. 1열(1~4 좌석 총 4석) 2열(5~9 좌석 총 5좌석) 2열과 3열 사이에 2열 정도의 공간이 있습니다. 3열(10~13 좌석 총 4좌석) 4열(14~17 좌석 총 4좌석) 5열(18~22 좌석 총 5좌석) 6열(23~27 좌석 총 5좌석) 7열(28~33 좌석 총 6좌석) 7열과 8열 사이에 5열 정도의 공간이 있습니다 8열(34~40 좌석 총 7좌석) 9열(41~48 좌석 총 8좌석) 10열(49~56 좌석 총 8좌석) 11열(57~65 좌석 총 9좌석) 12열(66~74 좌석 총 9좌석) 13열(75~83 좌석 총 9좌석) 14열(84~88 좌석 총 5좌석 모두 휠체어석입니다.) 5번 좌석은 2번째줄 첫번째, 15번좌석은 4번째줄 2번쨰 칸, 34번좌석은 8번째줄 1번째 칸, 81번 좌석은 13번째 줄 7번쨰 칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n5 on"><em><img src="/static/portal/img/perform/01/2st_type_a_n5.jpg" alt="5번 좌석"></em></a></li>
															<li><a href="#" class="n15"><em><img src="/static/portal/img/perform/01/2st_type_a_n15.jpg" alt="15번 좌석"></em></a></li>
															<li><a href="#" class="n34"><em><img src="/static/portal/img/perform/01/2st_type_a_n34.jpg" alt="34번 좌석"></em></a></li>
															<li><a href="#" class="n81"><em><img src="/static/portal/img/perform/01/2st_type_a_n81.jpg" alt="81번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/2st_type_a_5.jpg" alt="5번 좌석에서의 시점(오른쪽으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_a_15.jpg" alt="15번 좌석에서의 시점(오른쪽으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_a_34.jpg" alt="34번 좌석에서의 시점(오른쪽으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_a_81.jpg" alt="81번 좌석에서의 시점(살짝 우측으로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat2B">
														<img src="/static/portal/img/perform/01/2st_type_b1.png" alt="">
														<div class="hide">2층 B열 좌석배치도 총 144좌석이 있고 8칸 18열이 있습니다. 모든좌석 8좌석씩 있습니다. 1열(1~8 좌석) 2열(9~16 좌석) 2열과 3열 사이에 2열 정도의 공간이 있습니다. 3열(17~24 좌석) 4열(25~32 좌석) 5열(33~40 좌석) 6열(41~48 좌석) 7열(49~56 좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(57~64 좌석) 9열(65~72 좌석) 10열(49~80 좌석) 11열(57~88 좌석) 12열(66~96 좌석) 13열(97~104 좌석) 14열(105~112 좌석) 15열(113~120 좌석) 16열(121~128 좌석) 17열(129~136 좌석) 18열(137~144 좌석) 10번 좌석은 2번째줄 2번째 칸, 29번좌석은 4번째줄 5번쨰 칸, 71번좌석은 9번째줄 7번째 칸, 109번 좌석은 14번째 줄 5번쨰 칸, 130번 좌석은 17번째줄 두번째칸, 135번째 좌석은 17번째줄 7번째칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n10 on"><em><img src="/static/portal/img/perform/01/2st_type_b_n10.jpg" alt="10번 좌석"></em></a></li>
															<li><a href="#" class="n29"><em><img src="/static/portal/img/perform/01/2st_type_b_n29.jpg" alt="29번 좌석"></em></a></li>
															<li><a href="#" class="n71"><em><img src="/static/portal/img/perform/01/2st_type_b_n71.jpg" alt="71번 좌석"></em></a></li>
															<li><a href="#" class="n109"><em><img src="/static/portal/img/perform/01/2st_type_b_n109.jpg" alt="109번 좌석"></em></a></li>
															<li><a href="#" class="n130"><em><img src="/static/portal/img/perform/01/2st_type_b_n130.jpg" alt="130번 좌석"></em></a></li>
															<li><a href="#" class="n135"><em><img src="/static/portal/img/perform/01/2st_type_b_n135.jpg" alt="135번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/2st_type_b_10.jpg" alt="10번 좌석에서의 시점(우측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_b_29.jpg" alt="29번 좌석에서의 시점(우측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_b_71.jpg" alt="71번 좌석에서의 시점(살짝 우측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_b_109.jpg" alt="109번 좌석에서의 시점(살짝 우측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_b_130.jpg" alt="130번 좌석에서의 시점(살짝 우측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_b_135.jpg" alt="135번 좌석에서의 시점(살짝 우측으로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat2C">
														<img src="/static/portal/img/perform/01/2st_type_c1.png" alt="">
														<div class="hide">2층 C열 좌석배치도 총 154좌석이 있고 13칸 18줄이 있습니다. 1~2열 총 13좌석 나머지는 모두 8좌석씩 있습니다. 1열(1~13 좌석) 2열(14~26 좌석) 2열과 3열 사이에 2열 정도의 공간이 있습니다. 3열(27~34 좌석) 4열(35~42 좌석) 5열(43~50 좌석) 6열(51~58 좌석) 7열(59~66 좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(67~74 좌석) 9열(75~81 좌석) 10열(83~90 좌석) 11열(91~98 좌석) 12열(99~106 좌석) 13열(107~114 좌석) 14열(115~122 좌석) 15열(123~130 좌석) 16열(131~138 좌석) 17열(139~146 좌석) 18열(147~154 좌석) 15번 좌석은 2번째줄 2번째 칸, 25번좌석은 2번째줄 12번쨰 칸, 39번좌석은 4번째줄 5번째 칸, 76번 좌석은 9번째 줄 2번쨰 칸, 111번 좌석은 13번째줄 5번째칸, 145번째 좌석은 17번째줄 7번째칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n15 on"><em><img src="/static/portal/img/perform/01/2st_type_c_n15.jpg" alt="15번 좌석"></em></a></li>
															<li><a href="#" class="n25"><em><img src="/static/portal/img/perform/01/2st_type_c_n25.jpg" alt="25번 좌석"></em></a></li>
															<li><a href="#" class="n39"><em><img src="/static/portal/img/perform/01/2st_type_c_n39.jpg" alt="39번 좌석"></em></a></li>
															<li><a href="#" class="n76"><em><img src="/static/portal/img/perform/01/2st_type_c_n76.jpg" alt="76번 좌석"></em></a></li>
															<li><a href="#" class="n111"><em><img src="/static/portal/img/perform/01/2st_type_c_n111.jpg" alt="111번 좌석"></em></a></li>
															<li><a href="#" class="n145"><em><img src="/static/portal/img/perform/01/2st_type_c_n145.jpg" alt="145번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/2st_type_c_15.jpg" alt="15번 좌석에서의 시점(살짝 우측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_c_25.jpg" alt="25번 좌석에서의 시점(거의 정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_c_39.jpg" alt="39번 좌석에서의 시점(약간 우측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_c_76.jpg" alt="76번 좌석에서의 시점(약간 우측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_c_111.jpg" alt="111번 좌석에서의 시점(약간 우측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_c_145.jpg" alt="145번 좌석에서의 시점(거의 정면으로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat2D">
														<img src="/static/portal/img/perform/01/2st_type_d1.png" alt="">
														<div class="hide">2층 D열 좌석배치도(무대 중앙) 총 192좌석 17열이 있습니다. 1열(1~10 좌석 총 10좌석) 2열(11~20 좌석 총 10좌석) 2열과 3열 사이에 2열 정도의 공간이 있습니다. 3열(21~30 좌석 총 10좌석) 4열(31~40 좌석 총 19좌석) 5열(41~50 좌석 총 10좌석) 6열(51~66 좌석 총 16좌석 앞에 3좌석 뒤에 두 좌석 공간이 있고, 뒤에 3자석 앞에 두 좌석 공간이 있습니다.) 7열(67~86 좌석 총 20좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(87~104 좌석 총 18좌석 정 가운데 2좌석 공간이 있습니다.) 9열(105~122 좌석 총 18좌석 정 가운데 2좌석 공간이 있습니다.) 10열(123~140 좌석 총 18좌석 정 가운데 2좌석 공간이 있습니다.) 11열(141~158 좌석 총 18좌석 정 가운데 2좌석 공간이 있습니다.) 12열(159~178 좌석 총 20좌석) 13열(179~182 좌석 총 4좌석 양끝에 2좌석씩 있습니다.) 14열(183~186 좌석 총 4좌석 양끝에 2좌석씩 있습니다.) 15열(187~188 좌석 총 2좌석 양끝에 1좌석씩 있습니다.) 16열(189~190 좌석 총 2좌석 양끝에 1좌석씩 있습니다.) 17열(191~192 좌석 총 2좌석 양끝에 1좌석씩 있습니다.) 12번 좌석은 2번째줄 2번째칸 36번좌석은 4번째줄 가운데, 83번째 좌석7번째줄 17번째칸, 86번째 좌석은 8번째줄 2번쨰칸, 103번째 좌석은 8번째줄 19칸, 166번째줄은 12번째줄 8번째 칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n12 on"><em><img src="/static/portal/img/perform/01/2st_type_d_n12.jpg" alt="12번 좌석"></em></a></li>
															<li><a href="#" class="n36"><em><img src="/static/portal/img/perform/01/2st_type_d_n36.jpg" alt="36번 좌석"></em></a></li>
															<li><a href="#" class="n83"><em><img src="/static/portal/img/perform/01/2st_type_d_n83.jpg" alt="83번 좌석"></em></a></li>
															<li><a href="#" class="n88"><em><img src="/static/portal/img/perform/01/2st_type_d_n88.jpg" alt="88번 좌석"></em></a></li>
															<li><a href="#" class="n103"><em><img src="/static/portal/img/perform/01/2st_type_d_n103.jpg" alt="103번 좌석"></em></a></li>
															<li><a href="#" class="n166"><em><img src="/static/portal/img/perform/01/2st_type_d_n166.jpg" alt="166번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/2st_type_d_12.jpg" alt="12번 좌석에서의 시점(정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_d_36.jpg" alt="36번 좌석에서의 시점(정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_d_83.jpg" alt="83번 좌석에서의 시점(거의 정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_d_88.jpg" alt="88번 좌석에서의 시점(거의 정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_d_103.jpg" alt="103번 좌석에서의 시점(거의 정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_d_166.jpg" alt="166번 좌석에서의 시점(정면으로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat2E">
														<img src="/static/portal/img/perform/01/2st_type_e1.png" alt="">
														<div class="hide">2층 E열 좌석배치도 총 154좌석 18열이 있습니다. 1~2열은 13좌석씩 있고 나머지 모두 오른쪽에서부터 7좌석씩 있습니다. 1열(1~13 좌석) 2열(14~26 좌석) 2열과 3열 사이에 2열 정도의 공간이 있습니다. 3열(27~34 좌석) 4열(35~42 좌석) 5열(43~50 좌석) 6열(51~58 좌석) 7열(59~66 좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(67~74 좌석) 9열(75~82 좌석) 10열(83~90 좌석) 11열(91~98 좌석) 12열(99~106 좌석) 13열(107~114 좌석) 14열(115~122 좌석) 15열(123~130좌석) 16열(131~138 좌석) 17열(139~146 좌석) 18열(147~154 좌석) 15번 좌석은 2번째줄 2번째칸 25번좌석은 2번째줄 12번쨰 칸, 38번째 좌석 4번째줄 4번째칸, 76번째 좌석은 9번째줄 2번쨰칸, 145번째 좌석은 10번째줄 7칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n15 on"><em><img src="/static/portal/img/perform/01/2st_type_c_n15.jpg" alt="15번 좌석"></em></a></li>
															<li><a href="#" class="n25"><em><img src="/static/portal/img/perform/01/2st_type_c_n25.jpg" alt="25번 좌석"></em></a></li>
															<li><a href="#" class="n38"><em><img src="/static/portal/img/perform/01/2st_type_e_n38.jpg" alt="38번 좌석"></em></a></li>
															<li><a href="#" class="n76"><em><img src="/static/portal/img/perform/01/2st_type_c_n76.jpg" alt="76번 좌석"></em></a></li>
															<li><a href="#" class="n145"><em><img src="/static/portal/img/perform/01/2st_type_c_n145.jpg" alt="145번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/2st_type_e_15.jpg" alt="15번 좌석에서의 시점(거의 정면으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_e_25.jpg" alt="25번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_e_38.jpg" alt="38번 좌석에서의 시점(약간 좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_e_76.jpg" alt="76번 좌석에서의 시점(약간 좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_e_145.jpg" alt="145번 좌석에서의 시점(약간 좌측으로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat2F">
														<img src="/static/portal/img/perform/01/2st_type_f1.png" alt="">
														<div class="hide">2층 F열 좌석배치도 총 144좌석 18열이 있습니다. 모두 8좌석씩 있습니다. 1열(1~8 좌석) 2열(9~16 좌석) 2열과 3열 사이에 2열 정도의 공간이 있습니다. 3열(17~24 좌석) 4열(25~32 좌석) 5열(33~40 좌석) 6열(41~48 좌석) 7열(49~56 좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(55~64 좌석) 9열(65~72 좌석) 10열(73~80 좌석) 11열(81~88 좌석) 12열(89~96 좌석) 13열(97~104 좌석) 14열(105~112 좌석) 15열(113~120 좌석) 16열(121~128 좌석) 17열(129~136 좌석) 18열(137~144 좌석) 10번 좌석은 2번째줄 2번째칸 15번좌석은 2번째줄 7번쨰 칸, 29번째 좌석 4번째줄 5번째칸, 66번째 좌석은 9번째줄 2번쨰칸, 101번째 좌석은 13번째줄 5칸, 135번째 좌석은 17번째줄 7칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n10 on"><em><img src="/static/portal/img/perform/01/2st_type_b_n10.jpg" alt="10번 좌석"></em></a></li>
															<li><a href="#" class="n15"><em><img src="/static/portal/img/perform/01/2st_type_a_n15.jpg" alt="15번 좌석"></em></a></li>
															<li><a href="#" class="n29"><em><img src="/static/portal/img/perform/01/2st_type_b_n29.jpg" alt="29번 좌석"></em></a></li>
															<li><a href="#" class="n66"><em><img src="/static/portal/img/perform/01/2st_type_f_n66.jpg" alt="66번 좌석"></em></a></li>
															<li><a href="#" class="n101"><em><img src="/static/portal/img/perform/01/2st_type_f_n101.jpg" alt="101번 좌석"></em></a></li>
															<li><a href="#" class="n135"><em><img src="/static/portal/img/perform/01/2st_type_b_n135.jpg" alt="135번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/2st_type_f_10.jpg" alt="10번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_f_15.jpg" alt="15번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_f_29.jpg" alt="29번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_f_66.jpg" alt="66번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_f_101.jpg" alt="101번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_f_135.jpg" alt="135번 좌석에서의 시점(좌측으로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat2G">
														<img src="/static/portal/img/perform/01/2st_type_g1.png" alt="">
														<div class="hide">2층 G열 좌석배치 총 88좌석 14열이 있습니다. 1열(1~4 좌석 총 4좌석) 2열(5~9 좌석 총 5좌석) 2열과 3열 사이에 2열 정도의 공간이 있습니다. 3열(9~13 좌석 총 4좌석) 4열(14~17 좌석 총 4좌석) 5열(18~22 좌석 총 5좌석) 6열(23~27 좌석 총 5좌석) 7열(28~33 좌석 총 6좌석) 7열과 8열 사이에 6열 정도의 공간이 있습니다 8열(34~40 좌석 총 7좌석) 9열(41~48 좌석 총 8좌석) 10열(49~56 좌석 총 8좌석) 11열(57~65 좌석 총 9좌석) 12열(66~74 좌석 총 9좌석) 13열(75~83 좌석 총 9좌석) 14열(84~88 좌석 총 5좌석 모두 휠체어석 입니다.) 6번 좌석은 2번째줄 2번째칸 26번좌석은 6번째줄 4번쨰 칸, 62번째 좌석 11번째줄 6번째칸, 82번째 좌석은 13번째줄 8번쨰칸칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n6 on"><em><img src="/static/portal/img/perform/01/2st_type_g_n6.jpg" alt="6번 좌석"></em></a></li>
															<li><a href="#" class="n26"><em><img src="/static/portal/img/perform/01/2st_type_g_n26.jpg" alt="26번 좌석"></em></a></li>
															<li><a href="#" class="n62"><em><img src="/static/portal/img/perform/01/2st_type_g_n62.jpg" alt="62번 좌석"></em></a></li>
															<li><a href="#" class="n82"><em><img src="/static/portal/img/perform/01/2st_type_g_n82.jpg" alt="82번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/2st_type_g_6.jpg" alt="6번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_g_26.jpg" alt="26번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_g_62.jpg" alt="62번 좌석에서의 시점(좌측으로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/2st_type_g_82.jpg" alt="82번 좌석에서의 시점(좌측으로 보입니다)"></li>
												</ul>
											</li>
											</ul>
											<!-- seatList -->
											<a href="#another" class="sc btn-seat">다른 좌석 확인</a>
										</div>
									</li>
									<li>
										<div class="seatThumb box">
											<img src="/static/portal/img/perform/01/seat_030.jpg" alt="3rd Floor">
											<ul class="seatType sjs3">
												<!-- 활성화 클래스 : on -->
												<li class="on"><a href="#" class="typeA"><em>A</em></a></li>
												<li><a href="#" class="typeB"><em>B</em></a></li>
												<li><a href="#" class="typeC"><em>C</em></a></li>
												<li><a href="#" class="typeD"><em>D</em></a></li>
												<li><a href="#" class="typeE"><em>E</em></a></li>
												<li><a href="#" class="typeF"><em>F</em></a></li>
												<li><a href="#" class="typeG"><em>G</em></a></li>
												<li><a href="#" class="typeH"><em>H</em></a></li>
											</ul>
										</div>
										<div class="box_s">
											<h4 class="tit_s color-purple sel_tit type1">
												<span class="nf">1</span>층 <span class="nt">A</span>열 <span class="n">62번 좌석</span>
											</h4>
											<p class="txt_s">좌석을 선택하면 무대시각선을 보실 수 있습니다.</p>
											<ul class="seatList">
												<li class="on">
													<div class="seatBg seat3A">
														<img src="/static/portal/img/perform/01/3st_type_a1.png" alt="">
														<div class="hide">3층 A열 좌석배치도 총 119좌석 17열이 있습니다. 1열(1~7 좌석 총 7좌석) 2열(8~14 좌석 총 7좌석) 3열(15~22 좌석 총 8좌석) 4열(23~30 좌석 총 8좌석) 5열(31~39 좌석 총 9좌석) 6열(40~48 좌석 총 9좌석) 7열(49~58 좌석 총 10좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(59~61 좌석 총 7좌석) 9열(62~64 좌석 총 8좌석) 10열(65~67 좌석 총 8좌석) 11열(68~77 좌석 총 9좌석) 12열(66~87 좌석 총 9좌석) 13열(75~97 좌석 총 9좌석) 14열(84~107 좌석 총 5좌석) 14열과 15열 사이에 2열 정도의 공간이 있습니다 15열(108~111 좌석 총 4좌석) 16열(112~115 좌석 총 4좌석) 17열(116~119 좌석 총 4좌석) 13번 좌석은 2번째줄 6번째칸 35번좌석은 5번째줄 5번쨰 칸, 50번째 좌석 7번째줄 2번째칸, 67번째 좌석은 10번째줄 3번쨰칸, 93번째 좌석은 13번째 줄 6칸, 111번째 줄은 15번째줄 4번째칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n13 on"><em><img src="/static/portal/img/perform/01/3st_type_a_n13.jpg" alt="13번 좌석"></em></a></li>
															<li><a href="#" class="n35"><em><img src="/static/portal/img/perform/01/3st_type_a_n35.jpg" alt="35번 좌석"></em></a></li>
															<li><a href="#" class="n50"><em><img src="/static/portal/img/perform/01/3st_type_a_n50.jpg" alt="50번 좌석"></em></a></li>
															<li><a href="#" class="n67"><em><img src="/static/portal/img/perform/01/3st_type_a_n67.jpg" alt="67번 좌석"></em></a></li>
															<li><a href="#" class="n93"><em><img src="/static/portal/img/perform/01/3st_type_a_n93.jpg" alt="93번 좌석"></em></a></li>
															<li><a href="#" class="n111"><em><img src="/static/portal/img/perform/01/3st_type_a_n111.jpg" alt="111번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/3st_type_a_13.jpg" alt="13번 좌석에서의 시점(우측으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_a_35.jpg" alt="35번 좌석에서의 시점(우측으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_a_50.jpg" alt="50번 좌석에서의 시점(우측으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_a_67.jpg" alt="67번 좌석에서의 시점(우측으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_a_93.jpg" alt="93번 좌석에서의 시점(우측으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_a_111.jpg" alt="111번 좌석에서의 시점(우측으로 위에서 아래로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat3B">
														<img src="/static/portal/img/perform/01/3st_type_b1.png" alt="">
														<div class="hide">3층 B열 좌석배치도 총 136좌석 16열이 있습니다. 모든열 8좌석 입니다. 1열(1~8 좌석) 2열(8~16 좌석) 3열(17~24 좌석) 4열(25~32 좌석) 5열(33~40 좌석) 6열(41~48 좌석) 7열(49~56 좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(57~64 좌석) 9열(65~72 좌석) 10열(73~80 좌석) 11열(81~96 좌석) 12열(97~104 좌석) 13열(105~112 좌석) 13열과 14열 사이에 2열 정도의 공간이 있습니다 14열(113~120 좌석) 15열(121~128 좌석) 16열(129~136 좌석) 10번 좌석은 2번째줄 2번째칸 55번좌석은 7번째줄 7번쨰 칸, 85번째 좌석 11번째줄 5번째칸, 98번째 좌석은 13번째줄 2번쨰칸, 124번째 좌석은 16번째 줄 4칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n10 on"><em><img src="/static/portal/img/perform/01/3st_type_b_n10.jpg" alt="10번 좌석"></em></a></li>
															<li><a href="#" class="n55"><em><img src="/static/portal/img/perform/01/3st_type_c_n55.jpg" alt="55번 좌석"></em></a></li>
															<li><a href="#" class="n85"><em><img src="/static/portal/img/perform/01/3st_type_b_n85.jpg" alt="85번 좌석"></em></a></li>
															<li><a href="#" class="n98"><em><img src="/static/portal/img/perform/01/3st_type_b_n98.jpg" alt="98번 좌석"></em></a></li>
															<li><a href="#" class="n124"><em><img src="/static/portal/img/perform/01/3st_type_b_n124.jpg" alt="124번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/3st_type_b_10.jpg" alt="10번 좌석에서의 시점(우측으로 위에서 아래로 가까이 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_b_55.jpg" alt="55번 좌석에서의 시점(약간 우측으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_b_85.jpg" alt="85번 좌석에서의 시점(약간 우측으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_b_98.jpg" alt="98번 좌석에서의 시점(약간 우측으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_b_124.jpg" alt="124번 좌석에서의 시점(약간 우측으로 위에서 아래로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat3C">
														<img src="/static/portal/img/perform/01/3st_type_c1.png" alt="">
														<div class="hide">3층 C열 좌석배치도 총 96좌석 17열이 있습니다. 1열(1~8 좌석 총 8좌석) 2열(8~16 좌석 총 8좌석) 3열(17~24 좌석 총 8좌석) 4열(25~32 좌석 총 8좌석) 5열(33~40 좌석 총 8좌석) 6열(41~48 좌석 총 8좌석) 7열(49~56 좌석 총 8좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(57~58 좌석 총 2좌석) 9열(59~60 좌석 총 2좌석) 10열(61~62 좌석 총 2좌석) 11열(63~69 좌석 총 7좌석) 12열(70~76 좌석 총 7좌석) 13열(77~83 좌석 총 7좌석) 14열(84~90 좌석 총 7좌석) 14열과 15열 사이에 2열 정도의 공간이 있습니다 15열(91~92 좌석 총 2좌석) 16열(93~94 좌석 총 2좌석) 17열(95~96 좌석 총 2좌석) 10번 좌석은 2번째줄 2번째칸 29번좌석은 4번째줄 5번쨰 칸, 55번째 좌석 7번째줄 7번째칸, 64번째 좌석은 11번째줄 2번쨰칸, 82번째 좌석은 13번째 줄 6칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n10 on"><em><img src="/static/portal/img/perform/01/3st_type_b_n10.jpg" alt="10번 좌석"></em></a></li>
															<li><a href="#" class="n29"><em><img src="/static/portal/img/perform/01/3st_type_c_n29.jpg" alt="29번 좌석"></em></a></li>
															<li><a href="#" class="n55"><em><img src="/static/portal/img/perform/01/3st_type_c_n55.jpg" alt="55번 좌석"></em></a></li>
															<li><a href="#" class="n64"><em><img src="/static/portal/img/perform/01/3st_type_c_n64.jpg" alt="64번 좌석"></em></a></li>
															<li><a href="#" class="n82"><em><img src="/static/portal/img/perform/01/3st_type_c_n82.jpg" alt="82번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/3st_type_c_10.jpg" alt="10번 좌석에서의 시점(약간 우측으로 위에서 아래로 가까이 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_c_29.jpg" alt="29번 좌석에서의 시점(약간 우측으로 위에서 아래로 가까이 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_c_55.jpg" alt="55번 좌석에서의 시점(약간 우측으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_c_64.jpg" alt="64번 좌석에서의 시점(약간 우측으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_c_82.jpg" alt="82번 좌석에서의 시점(거의 정면으로 위에서 아래로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat3D">
														<img src="/static/portal/img/perform/01/3st_type_d1.png" alt="">
														<div class="hide">3층 D열 좌석배치도 총 163좌석 16열이 있습니다. 1열(1~9 좌석 총 9좌석) 2열(10~18 좌석 총 9좌석) 3열(19~27 좌석 총 9좌석) 4열(28~36 좌석 총 9좌석) 5열(37~45 좌석 총 9좌석) 6열(46~54 좌석 총 9좌석) 7열(55~63 좌석 총 9좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(57~73 좌석 총 10좌석) 9열(59~83 좌석 총 10좌석) 10열(61~93 좌석 총 10좌석) 11열(63~103 좌석 총 10좌석) 12열(70~113 좌석 총 10좌석) 13열(77~123 좌석 총 10좌석) 14열(84~133 좌석 총 10좌석) 14열과 15열 사이에 2열 정도의 공간이 있습니다 15열(134~143 좌석 총 10좌석) 16열144~153 좌석 총 10좌석) 17열(154~163 좌석 총 10좌석) 17번 좌석은 2번째줄 8번째칸 31번좌석은 4번째줄 4번쨰 칸, 65번째 좌석 8번째줄 2번째칸, 98번째 좌석은 11번째줄 5번쨰칸, 132번째 좌석은 16번째 줄 2칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n17 on"><em><img src="/static/portal/img/perform/01/3st_type_d_n17.jpg" alt="17번 좌석"></em></a></li>
															<li><a href="#" class="n31"><em><img src="/static/portal/img/perform/01/3st_type_d_n31.jpg" alt="31번 좌석"></em></a></li>
															<li><a href="#" class="n65"><em><img src="/static/portal/img/perform/01/3st_type_d_n65.jpg" alt="65번 좌석"></em></a></li>
															<li><a href="#" class="n98"><em><img src="/static/portal/img/perform/01/3st_type_d_n98.jpg" alt="98번 좌석"></em></a></li>
															<li><a href="#" class="n132"><em><img src="/static/portal/img/perform/01/3st_type_d_n132.jpg" alt="132번 좌석"></em></a></li>
															<li><a href="#" class="n145"><em><img src="/static/portal/img/perform/01/3st_type_d_n145.jpg" alt="145번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/3st_type_d_17.jpg" alt="17번 좌석에서의 시점(정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_d_31.jpg" alt="31번 좌석에서의 시점(거의 정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_d_65.jpg" alt="65번 좌석에서의 시점(정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_d_98.jpg" alt="98번 좌석에서의 시점(거의 정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_d_132.jpg" alt="132번 좌석에서의 시점(거의 정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_d_145.jpg" alt="145번 좌석에서의 시점(거의 정면으로 위에서 아래로 살짝 멀리 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat3E">
														<img src="/static/portal/img/perform/01/3st_type_e1.png" alt="">
														<div class="hide">3층 E열 좌석배치도 총 163좌석 16열이 있습니다. 1열(1~9 좌석 총 9좌석) 2열(10~18 좌석 총 9좌석) 3열(19~27 좌석 총 9좌석) 4열(28~36 좌석 총 9좌석) 5열(37~45 좌석 총 9좌석) 6열(46~54 좌석 총 9좌석) 7열(55~63 좌석 총 9좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(57~73 좌석 총 10좌석) 9열(59~83 좌석 총 10좌석) 10열(61~93 좌석 총 10좌석) 11열(63~103 좌석 총 10좌석) 12열(70~113 좌석 총 10좌석) 13열(77~123 좌석 총 10좌석) 14열(84~133 좌석 총 10좌석) 14열과 15열 사이에 2열 정도의 공간이 있습니다 15열(134~143 좌석 총 10좌석) 16열(144~153 좌석 총 10좌석) 17열(154~163 좌석 총 10좌석) 11번 좌석은 2번째줄 2번째칸, 32번좌석은 4번째줄 5번쨰 칸, 62번째 좌석 7번째줄 8번째칸, 75번째 좌석은 9번째줄 2번쨰칸, 99번째 좌석은 11번째 줄 6칸, 132번째 좌석은 14번째 줄 9칸, 145번째 좌석은 16번째 줄 2칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n11 on"><em><img src="/static/portal/img/perform/01/3st_type_e_n11.jpg" alt="11번 좌석"></em></a></li>
															<li><a href="#" class="n32"><em><img src="/static/portal/img/perform/01/3st_type_e_n32.jpg" alt="32번 좌석"></em></a></li>
															<li><a href="#" class="n62"><em><img src="/static/portal/img/perform/01/3st_type_e_n62.jpg" alt="62번 좌석"></em></a></li>
															<li><a href="#" class="n75"><em><img src="/static/portal/img/perform/01/3st_type_e_n75.jpg" alt="75번 좌석"></em></a></li>
															<li><a href="#" class="n99"><em><img src="/static/portal/img/perform/01/3st_type_e_n99.jpg" alt="99번 좌석"></em></a></li>
															<li><a href="#" class="n132"><em><img src="/static/portal/img/perform/01/3st_type_d_n132.jpg" alt="132번 좌석"></em></a></li>
															<li><a href="#" class="n145"><em><img src="/static/portal/img/perform/01/3st_type_d_n145.jpg" alt="145번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/3st_type_e_11.jpg" alt="11번 좌석에서의 시점(정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_e_32.jpg" alt="32번 좌석에서의 시점(정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_e_62.jpg" alt="62번 좌석에서의 시점(정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_e_75.jpg" alt="75번 좌석에서의 시점(정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_e_99.jpg" alt="99번 좌석에서의 시점(정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_e_132.jpg" alt="132번 좌석에서의 시점(정면으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_e_145.jpg" alt="145번 좌석에서의 시점(정면으로 위에서 아래로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat3F">
														<img src="/static/portal/img/perform/01/3st_type_f1.png" alt="">
														<div class="hide">3층 F열 좌석배치도 총 96좌석 17열이 있습니다. 1열(1~8 좌석 총 8좌석) 2열(9~16 좌석 총 8좌석) 3열(17~24 좌석 총 8좌석) 4열(25~32 좌석 총 8좌석) 5열(33~40 좌석 총 8좌석) 6열(41~48 좌석 총 8좌석) 7열(49~56 좌석 총 8좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(57~58 좌석 총 2좌석) 9열(59~60 좌석 총 2좌석) 10열(61~62 좌석 총 2좌석) 11열(63~69 좌석 총 7좌석) 12열(70~76 좌석 총 7좌석) 13열(77~83 좌석 총 7좌석) 14열(84~90 좌석 총 7좌석) 14열과 15열 사이에 2열 정도의 공간이 있습니다 15열(91~92 좌석 총 2좌석) 16열(93~94 좌석 총 2좌석) 17열(95~96 좌석 총 2좌석) 10번 좌석은 2번째줄 2번째칸 29번좌석은 4번째줄 5번쨰 칸, 55번째 좌석 7번째줄 7번째칸, 78번째 좌석은 13번째줄 2번쨰칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n10 on"><em><img src="/static/portal/img/perform/01/3st_type_c_n10.jpg" alt="10번 좌석"></em></a></li>
															<li><a href="#" class="n29"><em><img src="/static/portal/img/perform/01/3st_type_c_n29.jpg" alt="29번 좌석"></em></a></li>
															<li><a href="#" class="n55"><em><img src="/static/portal/img/perform/01/3st_type_c_n55.jpg" alt="55번 좌석"></em></a></li>
															<li><a href="#" class="n78"><em><img src="/static/portal/img/perform/01/3st_type_f_n78.jpg" alt="78번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/3st_type_f_10.jpg" alt="10번 좌석에서의 시점(살쬑 왼쪽으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_f_29.jpg" alt="29번 좌석에서의 시점(살쬑 왼쪽으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_f_55.jpg" alt="55번 좌석에서의 시점(살쬑 왼쪽으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_f_78.jpg" alt="78번 좌석에서의 시점(살쬑 왼쪽으로 위에서 아래로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat3G">
														<img src="/static/portal/img/perform/01/3st_type_g1.png" alt="">
														<div class="hide">3층 G열 좌석배치도 총 96좌석 17열이 있습니다. 모든열 8좌석 입니다. 1열(1~8 좌석) 2열(9~16 좌석) 3열(17~24 좌석) 4열(25~32 좌석) 5열(33~40 좌석) 6열(41~48 좌석) 7열(49~56 좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(57~64 좌석) 9열(65~72 좌석) 10열(73~80 좌석) 11열(81~88 좌석) 12열(89~96 좌석) 13열(97~104 좌석) 14열(105~112 좌석) 14열과 15열 사이에 2열 정도의 공간이 있습니다 15열(113~120 좌석) 16열(121~128 좌석) 17열(129~136 좌석) 10번 좌석은 2번째줄 2번째칸 37번좌석은 5번째줄 5번쨰 칸, 63번째 좌석 7번째줄 7번째칸, 85번째 좌석은 11번째줄 5번쨰칸, 98번째 좌석은 13번째줄 2번쨰칸, 125번째 좌석은 16번째줄 4번쨰칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n10 on"><em><img src="/static/portal/img/perform/01/3st_type_c_n10.jpg" alt="62번 좌석"></em></a></li>
															<li><a href="#" class="n37"><em><img src="/static/portal/img/perform/01/3st_type_g_n37.jpg" alt="37번 좌석"></em></a></li>
															<li><a href="#" class="n63"><em><img src="/static/portal/img/perform/01/3st_type_g_n63.jpg" alt="63번 좌석"></em></a></li>
															<li><a href="#" class="n85"><em><img src="/static/portal/img/perform/01/3st_type_b_n85.jpg" alt="85번 좌석"></em></a></li>
															<li><a href="#" class="n98"><em><img src="/static/portal/img/perform/01/3st_type_d_n98.jpg" alt="98번 좌석"></em></a></li>
															<li><a href="#" class="n124"><em><img src="/static/portal/img/perform/01/3st_type_b_n124.jpg" alt="124번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/3st_type_g_10.jpg" alt="10번 좌석에서의 시점(살쬑 왼쪽으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_g_37.jpg" alt="37번 좌석에서의 시점(왼쪽으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_g_63.jpg" alt="63번 좌석에서의 시점(왼쪽으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_g_85.jpg" alt="85번 좌석에서의 시점(왼쪽으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_g_98.jpg" alt="98번 좌석에서의 시점(왼쪽으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_g_124.jpg" alt="124번 좌석에서의 시점(왼쪽으로 위에서 아래로 보입니다)"></li>
												</ul>
											</li>
												<li>
													<div class="seatBg seat3H">
														<img src="/static/portal/img/perform/01/3st_type_h2.png" alt="">
														<div class="hide">3층 H열 좌석배치도 총 119좌석 17열이 있습니다. 1열(1~7 좌석 총 7좌석) 2열(9~14 좌석 총 7좌석) 3열(17~22 좌석 총 9좌석) 4열(25~30 좌석 총 9좌석) 5열(33~39 좌석 총 10좌석) 6열(41~48 좌석 총 10좌석) 7열(49~56 좌석 총 11좌석) 7열과 8열 사이에 2열 정도의 공간이 있습니다 8열(57~61 좌석 총 3좌석) 9열(65~64 좌석 총 3좌석) 10열(73~67 좌석 총 3좌석) 11열(81~77 좌석 총 10좌석) 12열(89~87 좌석 총 10좌석) 13열(97~97 좌석 총 10좌석) 14열(105~107 좌석 총 10좌석) 14열과 15열 사이에 2열 정도의 공간이 있습니다 15열(113~111 좌석 총 4좌석) 16열(121~115 좌석 총 4좌석) 17열(129~119 좌석 총 4좌석) 9번 좌석은 2번째줄 2번째칸 36번좌석은 5번째줄 6번쨰 칸, 57번째 좌석 7번째줄 8번째칸, 67번째 좌석은 10번째줄 3번쨰칸, 93번째 좌석은 13번째줄 6번쨰칸, 111번째 좌석은 15번째줄 4번쨰칸에 있습니다.</div>
														<ul class="seatNum">
															<li><a href="#" class="n9 on"><em><img src="/static/portal/img/perform/01/3st_type_h_n9.jpg" alt="9번 좌석"></em></a></li>
															<li><a href="#" class="n35"><em><img src="/static/portal/img/perform/01/3st_type_a_n35.jpg" alt="35번 좌석"></em></a></li>
															<li><a href="#" class="n57"><em><img src="/static/portal/img/perform/01/3st_type_h_n57.jpg" alt="57번 좌석"></em></a></li>
															<li><a href="#" class="n67"><em><img src="/static/portal/img/perform/01/3st_type_a_n67.jpg" alt="67번 좌석"></em></a></li>
															<li><a href="#" class="n93"><em><img src="/static/portal/img/perform/01/3st_type_a_n93.jpg" alt="93번 좌석"></em></a></li>
															<li><a href="#" class="n111"><em><img src="/static/portal/img/perform/01/3st_type_a_n111.jpg" alt="111번 좌석"></em></a></li>
														</ul>
													</div>

													<ul class="viewpoint">
														<li class="on"><img src="/static/portal/img/perform/01/3st_type_h_9.jpg" alt="9번 좌석에서의 시점(왼쪽으로 위에서 아래로 가까이 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_h_35.jpg" alt="35번 좌석에서의 시점(왼쪽으로 위에서 아래로 가까이 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_h_57.jpg" alt="57번 좌석에서의 시점(왼쪽으로 위에서 아래로 가까이 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_h_67.jpg" alt="67번 좌석에서의 시점(왼쪽으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_h_93.jpg" alt="93번 좌석에서의 시점(왼쪽으로 위에서 아래로 보입니다)"></li>
														<li><img src="/static/portal/img/perform/01/3st_type_h_111.jpg" alt="111번 좌석에서의 시점(왼쪽으로 위에서 아래로 보입니다)"></li>
												</ul>
											</li>
											</ul>
											<!-- seatList -->

											<a href="#another" class="sc btn-seat">다른 좌석 확인</a>
										</div>
									</li>
								</ol>
								<!-- floorList -->

							</div>
						</div>
						<!-- .rel -->
					</article>
					<script src="/static/portal/js/seat.js"></script>
				</div>
			</div>

		</div>




		<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
		<!-- footer Section Begin -->
		<jsp:include page="../common/footer2.jsp" />
		<!-- footer End -->
	</section>
</body>
</html>