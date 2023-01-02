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
<title>공연일정 | 공연·전시·강좌 | </title>

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
<body spellcheck="false" class="vsc-initialized hide-focus-ring">
	<section id="wrap">
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
						<a href="#"><span>공연·전시·강좌</span></a>
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
						<a href="#"><span>공연일정</span></a>
						<ul class="depth" style="display: none;">
						<li><a href="/portal/bbs/B0000033/list.do?menuNo=200003"><span>세종시즌</span></a></li><li><a href="/portal/performance/performance/performList.do?menuNo=200004"><span>공연일정</span></a></li><li><a href="/portal/performance/exhibit/performList.do?menuNo=200005"><span>전시일정</span></a></li><li><a href="http://academy.sejongpac.or.kr/academy/singl/academyProgram/list.do?menuNo=800003" target="_blank" title="새창 열림"><span>강좌일정</span></a></li><li><a href="/portal/main/contents.do?menuNo=200094"><span>좌석배치도</span></a></li>
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
				<div class="inner"></div>
				<script>
				var loc = $("#depth_w > div > ul > li").length - 1;
				$("#depth_w .dep1").addClass("li"+loc);
		
				var len = $(".tabs-st1 li").length;
				$(".tabs-st1").addClass("li"+len);
				</script>
		
				<div class="sub_page">
					<script>
					//<![CDATA[
						var arrPerformIdxs = [];
						arrPerformIdxs.push('32384'); 
						// arrPerformIdxs.push('33768'); 
						// arrPerformIdxs.push('33567'); 
						// arrPerformIdxs.push('33568'); 
						
						var RemainDate, tid;
					
						function booking_button_chk(performIdx,openDate){
							var pchk = false;
							if ($.inArray(performIdx, arrPerformIdxs) > -1) {
								pchk = true;
							}
							
							if (pchk == true) {
					
								//예매 타이머
								var nowDate = "java.text.SimpleDateFormat@e863f5a0";
								var teTime = "";
								var stDate = new Date().getTime(nowDate.replace(/-/g, '/').replace(/[a-z]+/gi, ' '));//사파리 처리
								
								//var edDate = Date.parse('2022-06-28 14:00:00'.replace(/-/g, '/').replace(/[a-z]+/gi, ' ')); // TODO 웃는남자 오픈시간 수정필요 //사파리
								var edDate = Date.parse(openDate.replace(/-/g, '/').replace(/[a-z]+/gi, ' ')); // TODO 웃는남자 오픈시간 수정필요 //사파리
								if (teTime !="") {
									var tmpTime = teTime.substr(0, 4) +"-"+ teTime.substr(4, 2) +"-"+ teTime.substr(6, 2) +" "+ teTime.substr(8, 2) +":"+ teTime.substr(10, 2)+":"+teTime.substr(12, 2)
									var edDate = Date.parse(tmpTime.replace(/-/g, '/').replace(/[a-z]+/gi, ' ')); // TODO 웃는남자 오픈시간 수정필요 //사파리
								} else {
								}
								
								RemainDate = edDate - stDate;
						
								tid=setInterval('msg_time()',1000);// 타이머 1초간격으로 수행
							}
						}
					
						$(function(){
							var openDateTmep = "2022-10-19";
							if (openDateTmep) {
								var openDate = openDateTmep + " " + "14:00:00" ;
							}
							
							booking_button_chk('33630',openDate);
						});
						
					
					
						function msg_time() {
							//var hours = addZeros(Math.floor((RemainDate % (1000 * 60 * 60 * 24)) / (1000*60*60)),2);
							var hours = addZeros(Math.floor((RemainDate) / (1000*60*60)),2);
							var miniutes = addZeros(Math.floor((RemainDate % (1000 * 60 * 60)) / (1000*60)),2);
							var seconds = addZeros(Math.floor((RemainDate % (1000 * 60)) / 1000),2);
							
							var openTime = hours + ":" +  miniutes + ":" + seconds ; // 남은 시간 text형태로 변경
							//if (RemainDate < 1000) { //1초는 1000
							if (RemainDate < 0) { //1초는 1000
								// 시간이 종료 되었으면..
								clearInterval(tid);   // 타이머 해제
								/*
								$("#clock1").html("예매하기"); //날짜를 출력해 줌
								$(".clock_time").html("예매하기"); //날짜를 출력해 줌
								$(".clockChk").attr("onclick","showPerformPop2('grpm2204131016a01');return false;");
								$(".clockChk").addClass("bg-yellow_r");
								$(".clockChk").removeAttr("style");
								*/
								if ($(".ori_button").length) {
									//예매하기 버튼이 생성되었으면 기존 버튼 사용
								} else {
									//캐시로 인해 예매버튼이 생성되지 않았으면 임시 버튼 사용
									$(".imsi_button").css("display", "");
								}
								
							}else{
								/*
								$("#clock1").html("티켓오픈 남은시간. "+openTime); //날짜를 출력해 줌
								$(".clock_time").html("티켓오픈 남은시간.. "+openTime); //날짜를 출력해 줌
								
								$(".clockChk").removeAttr("onclick");
								$(".clockChk").attr("style","background-color:gray;");
								*/
								RemainDate = RemainDate - 1000; // 남은시간 -1초
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
		
					<script>
					$( function() {
						calendar("");
					});
					function donationApply(){
						$.ajax({
							type: 'post',
							url: "donationApply.json",
							dataType: "json",
							success: function(data) {
								if(data.erroryn == 'Y') {
									if(data.errortype == "L") {
										moveToLogin();
										return false;
									}
									if(data.errortype == "M") {
										;
									}
									alert(data.errormsg);
									return false;
								} else if(data.erroryn == 'N') {
									location.href="/portal/myPage/donationApply/list.do?menuNo=200251";
								}
					
					        }
					   });
					}
					function moveToLogin() {
						location.href="/portal/member/user/forLogin.do?menuNo=200100&returnUrl="+encodeURIComponent(window.location.href);
					}
					</script>
		
		<article class="bbs-view_schedule">
		<div class="inner">
		<!-- <style>
		.tabs-st1,.tabs-st2{display: none;}
		</style> -->
		
			
		
			<div class="sv_top">
				<div class="in">
					<div class="poster">
						<!-- 포스터 테스트 -->
						<!-- <img src="/static/portal/img/thumb/poster_temp.jpg" alt="" /> -->
						
								<img src="/cmmn/file/imageSrc.do?fileStreCours=faec0c25744c22e99776405c0fa728020ced1ac91b5fc82bb55dac72d913a231&amp;streFileNm=27421d60498f608e44a4bcda329fdf4139140131461b1ec4fbc79f9f1d2d9b11" alt="유니버설발레단 '호두까기인형' 2022.12.22(Thu) ~ 12.31 (Sat) 세종문화회관 대극장">
							
					</div>
					<div class="txt">
						<div class="tit">
							<h2 class="t">유니버설발레단 '호두까기인형'</h2>
							
							<div class="sns" data-snstitle="유니버설발레단 '호두까기인형'" id="link-clipboard" data-clipboard-text="https://www.sejongpac.or.kr:443/portal/performance/performance/view.do?performIdx=33630&amp;menuNo=200004&amp;sdate=2022-12-26&amp;searchWrd=&amp;searchSort=1&amp;searchCnd=1&amp;searchPlaceCdStr=P%2CALL&amp;edate=2023-01-26&amp;searchPackage=&amp;pageIndex=1">
								<button type="button" data-sns="facebook" title="새창 열림"><img src="./resources/sejongpac/static/portal/img/common/m/sns_f.gif" alt="페이스북"></button>
								<button type="button" data-sns="naver" title="새창 열림"><img src="/static/portal/img/common/sns_b_new.png" alt="블로그"></button>
								<button type="button" data-sns="kakao" title="새창 열림"><img src="/static/portal/img/common/sns_kakao.png" alt="카카오"></button>
								<!-- <button type="button" data-sns="insta" title="새창 열림"><img src="/static/portal/img/common/sns_i_new.png" alt="인스타" /></button> -->
								<!-- <button type="button" data-sns="youtube" title="새창 열림"><img src="/static/portal/img/common/sns_y_new.png" alt="유튜브" /></button> -->
								<button type="button" data-sns="copy"><img src="/static/portal/img/common/sns_url.png" alt="URL"></button>
							</div>
						</div>
						<ul class="detail">
							<li><span class="dt">기간</span>
								2022.12.22 (목)
								~ 2022.12.31 (토)
		
							</li>
							<li><span class="dt">장소</span>
								세종대극장
							</li>
							<li><span class="dt">시간</span>
								 화-목 19:30 / 금 15:00, 19:30 / 주말 14:00, 18:00 / 12.31(토) 14:00
		<br> * 공연없음 : 12.26(월)&nbsp;
								
									
											(공연시간 : 120  분 / 인터미션 : 20 분)
										
								
		
							</li>
							<li><span class="dt">연령</span> 5세 이상&nbsp;</li>
							<li><span class="dt">티켓</span> VIP석 120,000원 / R석 100,000원 / S석 70,000원 / A석 30,000원 &nbsp;</li>
							
							<li><span class="dt">문의</span> <!-- 세종문화티켓 02-399-1000&nbsp; --> 세종문화회관 02-399-1000</li>
							
						</ul>
		
						<div class="schedule_btn2 clearfix mt20">
							
							<!-- <button type="button" class="btn-st2 bg-black_r w1" onclick="alert('회원전용 서비스 입니다.');"><span class="ico-stars">관심공연</span></button> -->
							<button type="button" class="btn-st2 bg-black_r w1" onclick="interestPerformance('grpb2210111117a01');"><span class="ico-stars">관심공연</span></button>
							
							
							
		
							
							
								<button type="button" class="btn-st2 bg-black w1 butt_remain" onclick="remain();" title="새창 열림">잔여석정보</button>
							
							
								<button type="button" onclick="javascript:showPerformPop('grpb2210111117a01');return false;" class="btn-st2 bg-yellow_r w2 ori_button ReservationTitle">예매하기</button>
							
							<button type="button" onclick="javascript:showPerformPop('grpb2210111117a01');return false;" class="btn-st2 bg-yellow_r w2 imsi_button ReservationTitle" style="display:none">예매하기</button>
							
							
							
							<!-- <a href="/portal/bbs/B0000011/step.do?menuNo=200024&pageIndex=1&performIdx=33630" class="btn-st2 bg-purple_r w3 ">관람후기</a> -->
		
							
		
							
						</div>
					</div>
					<div class="mobile btn">
		
						<ul class="clearfix yn half">
							
							<li><button type="button" class="btn-pop_m ori_button">예매하기</button></li>
							<script>
							$(".yn").addClass("half")
							</script>
							
							
							<li><button type="button" class="btn-pop_m imsi_button" style="display:none;">예매하기</button></li>
							<script>
							$(".yn").addClass("half")
							</script>
		
							
							
							<li><button type="button" onclick="remain();" title="새창열림" class="butt_remain">잔여석정보</button></li>
							
		
							
		
							
						</ul>
		
						
		
					</div>
				</div>
			</div>
			<div class="schedule_cont new">
				<ul class="tabs-st4 clearfix li4">
					
						<li class=""><a href="#"><span>공지사항</span></a></li>
					
					
		
						<li class="active"><a href="#" title="선택됨"><span>작품소개</span></a></li>
					
					
						<li><a href="#"><span>할인정보 및 이벤트</span></a></li>
					
					
					<li><a href="#"><span>주차·입장안내/취소·환불안내</span></a></li>
				</ul>
				<script>
				var len = $(".tabs-st4 li").length;
				$(".tabs-st4").addClass("li"+len);
				</script>
		
				<ul class="tab_cont2 w">
					
						<li class="">
							<div class="editor">
								<h3 class="hide">공지사항</h3>
								<p style="font-family: &quot;Malgun Gothic&quot;; font-size: 16px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""><strong><span style="font-size: 14pt; color: rgb(255, 0, 0); font-family: &quot;Malgun Gothic&quot;; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""><span malgun="" gothic";="" font-size:="" 18.6667px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="" style="color: rgb(255, 0, 0); font-family: &quot;Malgun Gothic&quot;; font-size: 18.6667px; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span style="color: rgb(255, 0, 0); font-family: &quot;Malgun Gothic&quot;; font-size: 18.6667px; line-height: normal; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 18.6667px;="" line-height:="" normal;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"="">※ 모든 회차 오케스트라 LIVE로 진행됩니다.</span></span></span><br></strong><br><br><img src="https://www.sejongpac.or.kr:443/upload/2022/10/20221018_165226980_69213.jpg" alt="알립니다. NOTICE * 관람연령안내 - 본 공연은 5세 이상 관람가입니다. (2019년생부터 입장 불가) 아동 관객 동반 시 연령 확인 증빙서류(건강보험증, 여권, 주민등록등본 등)를 반드시 지참하시기 바랍니다. - 관람연령에 부합하지 않은 관객은 티켓 유무, 보호자 동반 여부와 상관없이 객석 입장이 제한되며, 이와 관련한 공연당일 취소, 환불 및 변경이 불가합니다. * 티켓 수령 안내 - 예매티켓수령 및 현장구매는 당일 공연시작 2시간 전부터 가능합니다. - 증빙이 필요한 할인 티켓(UBC 릴레이 할인, 국가유공자, 장애인 등) 의 경우, 키오스크(무인 티켓 발권기) 발권이 불가하며 별도의 유인창구에서만 수령이 가능합니다. - 할인받은 내용이 있을 경우, 필요 증빙서류를 미리 준비해주시기 바랍니다. 할인 증빙자료 미지참 시 정가에 대한 차액을 지불하셔야 티켓수령이 가능합니다. - 예매 티켓은 공연당일 현장수령만 가능하며 사전 배송이 불가합ㄴ이다. 기발권 된 티켓 및 분실 티켓은 재발권이 불가하니 이점 유의하시기 바랍니다. - 각 예매처 취소 마감시간 이후에는 예매티켓의 취소, 환불, 변경은 불가합니다. * 공연관람안내 - 객석입장은 공연시작 30분 전부터 가능합니다. 원활한 공연 진행을 위해 공연 10분 전까지는 입장을 완료해주시기 바랍니다. - 공연시작 후에는 정해진 시간 외에는 입장이 제한됩니다. 공연 시작 전 여유롭게 도착하셔서 편안하고 기분 좋은 관람을 시작하시기 바랍니다. - 커튼콜을 제외한 공연장 사전에 협의되지 않은 사진촬영, 영상녹화 및 녹음은 절대불가 합니다 - 공연장 인근 교통이 상시 혼잡합니다. 주차 및 교통난으로 인해 공연 당일 관람이 불가하거나 관람을 취소한 경우 환불 및 변경이 불가하니, 여유롭게 출발하시기 바랍니다. - 세종문화회관은 지하철 5호선 광화문역과 가까우니 대중교통을 이용하시면 편리합니다. 자가용 이용 시 : 세종로공영주차장 이용 (4시간에 5,600원 | 이후 초과 5분당 430원) " border="0" style="width: 950px; height: 1858px; border: 0px solid;"><br><img src="https://www.sejongpac.or.kr:443/upload/2022/12/20221223_161907202_05469.jpg" title="" alt="유니버설발레단 <호두까기인형> 예매티켓 현장수령 안내 (1) 공연 3시간 전 티켓 수령 안내 카카오톡 확인! (2) QR코드 확인 (3) 공연 2시간 전부터 세종문화회관 대극장 매표소에 설치된 키오스크(무인 티켓 발권기)로 직접 티켓 수령! * 각 예매처에 올바른 연락처가 등록되어 있는지 반드시 확인하시기 바랍니다. * UBC 릴레이 할인, 국가유공자, 장애인 등 할인 증빙자료 확인이 필요한 티켓은 별도의 [할인 증빙] 창구에서만 수령하실 수 있습니다. * QR코드 미소지 시 예매번호와 연락처 정보 입력으로도 발권이 가능하나, 예매정보 직접 입력 시 많은 시간이 소요될 수 있으므로 QR코드는 사전에 준비하여 주시기 바랍니다. " border="0" style="width: 950px; height: 1184px; border: 0px solid;"><br></p>
							</div>
						</li>
					
					
						<li class="tab_detail on">
							<div class="editor">
								<h3 class="hide">작품소개</h3>
								<p style="line-height: 180%; text-align: left; font-family: &quot;Malgun Gothic&quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""><img src="https://www.sejongpac.or.kr:443/upload/2022/11/20221109_100614202_71938.jpg" alt="일 시 : 2022년 12월 22일(목) ~ 12월 31일(토) *월요일 공연없음 * 화~목 19:30/ 금 15:00, 19:30/ 주말 14:00, 18:00 * 12월 31일(토) 14:00 (31일은 1회 공연만 진행) 장 소 : 세종문화회관 대극장 가 격 : VIP석 12만원 / R석 10만원/ S석 7만원 / A석 3만원/ B석 2만원 소요시간 : 120분 (인터미션 포함) 관람등급 :5세 이상 (2019년생부터 입장불가) 협 연 : 코리아쿱오케스트라 지 휘 : 김광현 주 최 : 유니버설발레단, (재)세종문화회관 주 관 : 효정한국문화재단 후 원 : 통일그룹 협 찬 : 신영증권 공연문의 : 유니버설발레단 070-7124-1734 원작 E.T.A 호프만 | 대본 마리우스 프티파 안무 레프 이바노프 (1892), 바실리 바이노넨(1934) 음악 표트르 차이콥스키 | 연출 올레그 비노그라도프 | 개정안무 로이 토비아스, 유병헌 크리스마스 최고의 선물! 매년 겨울이면 전세계에서 울려퍼지는 크리마스마스 전령사 <호두까기 인형> 1986년 초연 후 36년간 이어진 연속 매진의 흥행 신화! 2년 연속 세종문화회관에서 전 회차 오케스트라 라이브 연주로 만나는 환상의 무대! 2006년 한국 발레단 사상 최초 미국 무대 진출! 2009년 신화의 나라 그리스 아테네 단독 24회 공연! 신비하고 환상적인 무대와 수준 높은 춤들이 어우러진 유니버설발레단 <호두까기인형> 호두까기인형과 생쥐 왕의 실감나는 전투 눈부시게 아름다운 하얀 눈송이 요정들의 아름다운 왈츠 과자나라에서 펼쳐지는 러시아, 스페인, 중국 등 세계 각국의 춤 차이콥스키 음악에 맞춘 클라라와 호두까기 왕자의 그랑파드되 여러분의 송년을 더욱 특별하게 만들어 드립니다! Cast : 클라라 Clara (강미선 Misun Kang | 엘리자베타 체프라소바 Elizaveta Cheprasova | 홍향기 Hyang-gee Hong | 손유희 Youhee Son | 한상이 Sangyi Han | 서혜원 Haewon Suh | 김수민 Soomin Kim) 호두까기왕자 Prince (콘스탄틴 노보셀로프 Konstantin Novoselov | 이현준 Hyonjun Rhee | 드미트리 디아츠코프 Dmitry Diachkov | 이동탁 Dongtak Lee | 간토지 오콤비얀바 Gantsooj Otgonbyamba | 강민우 Minwoo Kang | 이고르 콘타레프 Igor Kontarev)  Cast Schedule 12월 22일(목) 19:30 클라라 Clara : 강미선 | 호두까기왕자 Prince : 콘스탄틴 노보셀로프 12월 22일(목) 15:00 클라라 Clara : 서혜원 | 호두까기왕자 Prince : 이고르 콘타레프 12월 23일(금) 19:30 클라라 Clara : 김수민 | 호두까기왕자 Prince : 간토지 오콤비얀바 12월 24일(토) 14:00 클라라 Clara : 엘리자베타 체프라소바 | 호두까기왕자 Prince : 이동탁 12월 24일(토) 18:00 클라라 Clara : 손유희 | 호두까기왕자 Prince : 이현준 12월 25일(일) 14:00 클라라 Clara : 강미선 | 호두까기왕자 Prince : 콘스탄틴 노보셀로프 12월 25일(일) 18:00 클라라 Clara : 홍향기 | 호두까기왕자 Prince : 드미트리 디아츠코프 12월 26일(월) 공연없음 12월 27일(화) 19:30 클라라 Clara : 한상이 | 호두까기왕자 Prince : 강민우 12월 28일(수) 19:30 클라라 Clara : 엘리자베타 체프라소바 | 호두까기왕자 Prince : 이동탁 12월 29일(목) 19:30 클라라 Clara : 홍향기 | 호두까기왕자 Prince : 드미트리 디아츠코프 12월 30일(금) 15:00 클라라 Clara : 한상이 | 호두까기왕자 Prince : 강민우 12월 30일(금) 19:30 클라라 Clara : 강미선 | 호두까기왕자 Prince : 콘스탄틴 노보셀로프 12월 31일(토) 14:00 클라라 Clara : 손유희 | 호두까기왕자 Prince : 이현준 ※ 상기 캐스팅은 발레단 사정에 의해 사전 공지없이 변경될 수 있습니다. ※ 캐스팅 변경으로 인한 티켓환불 시 취소 수수료가 부과될 수 있는 점 양해 부탁드립니다. Synopsis 1막 크리스마스 파티 하얀 눈이 내리는 크리스마스 이브, 클라라의 집에서 크리스마스 파티가 열린다. 대부 드로셀마이어는 클라라에게 호두까기인형을 선물한다. 모두가 잠든 밤, 갑자기 나타난 생쥐 대왕과 그의 군단이 크리스마스 트리를 망가뜨리자, 호두까기인형과 병정들이 이들과 맞서 싸운다. 클라라는 위기에 처한 호두까기인형을 구하고 함께 힘을 합쳐 생쥐 대왕과 군단을 물리친다. 왕자가 된 호두까기인형과 클라라는 눈송이 요정들의 축복 속에 사슴 썰매를 타고 환상의 나라로 여행을 떠난다. 2막 신비한 환상의 나라 환상의 나라에서 클라라와 호두까기왕자를 위한 축제가 열린다. 초콜릿,사탕 등 과자를 의인화한 세계 각국의 개성있는 민속춤이 펼쳐진다. 이윽고 사탕요정으로 변한 클라라는 호두까기왕자와 아름다운 그랑 파드되를 선보인다. 다음날 아침, 아름답고 환상적인 여행에서 돌아온 클라라는 옆에 놓인 호두까기인형을 끌어안으며 행복한 크리스마스를 맞는다. UNIVERSAL BALLET 070.7124.1734| www.universalballet, com  " border="0" style="width: 950px; height: 8496px; border: 0px solid;"><br><br><img src="https://www.sejongpac.or.kr/upload/2022/11/20221114_100736375_32036.jpg" title="" alt="2023 리틀엔젤스예술단 신입단원모집 예술꿈나무들의 재능을 꽃피우세요! 모집대상 초등학교 1~5학년(2023년도 기준) 남,여 어린이 접수기간 2023.02.02(목)~02.15(수)16:00까지 오디션 2023.02.18 토 13시 리틀엔젤스예술단" border="0" style="width: 950px; height: 608px; border: 0px solid;"></p>
							</div>
						</li>
					
					
						<li>
							<div class="editor">
								<h3 class="hide">할인정보 및 이벤트</h3>
								<p style="text-align: center; line-height: 180%; font-family: &quot;Malgun Gothic&quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""><img src="https://www.sejongpac.or.kr:443/upload/2022/11/20221130_102419457_26245.jpg" title="" alt="" border="0" style="width: 950px; height: 1670px; border: 0px solid;"><br></p>
							</div>
						</li>
					
					
					<li>
						<div class="editor">
							<h3 class="hide">주차·입장안내/취소·환불안내</h3>
							<div class="ticket_info _part1">
								<p class="tit">주차안내</p>
								<div class="cont">
									<ul class="bul-dot t2">
										<li><strong>세종문화회관</strong>
										<p>공연, 전시(유료), 체험(유료전시의 체험) 이용 관객은 세종로 공영주차장 이용 시 주차요금 할인을 받을 수 있습니다. 출차 전 무인정산기에서 사전 정산을 완료하시면 출차 시 혼잡을 피할 수 있습니다. 기타 할인 적용은 관련 증서를 지참하여 유인 정산소를 이용해 주시기 바랍니다.</p>
									<a href="https://www.sejongpac.or.kr/portal/main/contents.do?menuNo=200082" class="btn bg-navy" target="_blank" title="새창으로 열립니다.">자세히보기</a>
										</li>
										<li><strong>꿈의숲아트센터</strong>
										<p>공연, 전시(유료), 체험(유료전시의 체험) 이용 관객은 꿈의숲아트센터주차장(서문주차장) 이용 시 주차요금 할인을 받을 수 있습니다. 이용 방법은 공연장과 전시장 안내 데스크에서 티켓에 확인 도장(차량당 1개)을 받으신 후 출차 시 제출 하시면 됩니다. 공연 종료 후 10분이 지나면 확인이 어려울 수 있으니 공연시작 전에 미리 확인을 받으시면 더욱 편안한 공연시간이 되실 수 있습니다.</p>
										<p class="color-gold">
										<strong>
										※ 단, 공동주최 및 대관 전시의 경우 운영 사정에 따라 할인 적용이 불가한 경우가 있을 수 있습니다.<br>
										   요금할인 여부는 개별 전시 공지사항 및 유선 문의를 통해 사전에 반드시 확인하시기 바랍니다.
										</strong>
										</p>
										<a href="https://www.sejongpac.or.kr/portal/main/contents.do?menuNo=200237" class="btn bg-navy" target="_blank" title="새창으로 열립니다.">자세히보기</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="ticket_info _part2">
								<p class="tit">입장안내</p>
								<div class="cont">공연이 시작된 이후에는 안내원의 유도에 따라서만 입장할 수 있으며, 본인 좌석이 아닌 빈 좌석으로 안내될 수 있습니다.</div>
							</div>
							<div class="ticket_info _part3">
								<p class="tit">취소방법</p>
								<div class="cont">
									<ul class="bul-dot t2">
										<li><strong>인터넷 확인방법</strong>
											<p>세종문화회관 홈페이지 &gt; 마이페이지 &gt; 예매 내역 확인/취소</p>
											<p>홈페이지 로그인 후 마이페이지 – 예매내역 확인/취소에서 취소공연을 선택 후 취소하시면 됩니다.</p>
										</li>
										<li><strong>서비스플라자 현장방문</strong>
											<p>
											세종문화회관 중앙계단 위 서비스플라자 방문로 방문해주세요. <br>
											운영시간 10:00 ~ 20:00 (점심시간 13:00 ~ 14:00)
											</p>
										</li>
										<li><strong>전화문의</strong>
											<p>
											세종문화회관 콜센터 02-399-1000로 문의주세요.  <br>
											운영시간 09:00 ~ 20:00
											</p>
										 </li>
									</ul>
									<p class="bul-mark2 b mt20">사전 수령 티켓의 경우 실물 티켓 회수 후 취소/환불처리 됩니다. 반드시 실물 티켓을 지참 후 서비스플라자로 방문바랍니다. (티켓 분실 시 취소불가)</p>
									<p class="bul-mark2 b">취소 마감 시간과 취소 수수료는 아래 확인 바랍니다.</p>
								</div>
							</div>
							<div class="ticket_info _part4">
								<p class="tit">취소마감시간</p>
								<div class="cont">
									<ul class="bul-dot t2">
										<li>관람일 전일 오후 5시까지 예매취소 및 변경 가능 (평일 / 주말(토, 일요일) / 공휴일)</li>
										<li>관람일 당일에는 예매취소, 변경, 환불 불가</li>
									</ul>
								</div>
							</div>
							<div class="ticket_info _part5">
								<p class="tit">취소수수료</p>
								<div class="cont">
									<table class="tbl-st1">
										<caption>구분, 취소수수료로 구성된 예매 취소 수수료 안내 테이블</caption>
										<thead>
											<tr>
												<th scope="col" colspan="2">구분</th>
												<th scope="col">취소수수료</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td rowspan="2">공연일 기준</td>
												<td>공연 <strong> 10일전</strong></td>
												<td>없음</td>
											</tr>
											<tr>
												<td>공연 <strong> 9일 전부터 취소 마감시간</strong></td>
												<td>티켓 금액의 10%</td>
											</tr>
											<tr>
												<td rowspan="3">예매당일 취소</td>
												<td>공연 <strong> 3일전</strong></td>
												<td>없음</td>
											</tr>
											<tr>
												<td>공연 <strong> 2일 전부터 취소마감시간</strong></td>
												<td>티켓 금액의 10%</td>
											</tr>
											<tr>
												<td>공연 <strong> 당일 취소</strong></td>
												<td>취소 불가</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div><!-- //editor -->
					</li>
		
					<li class="r item">
						<div class="mg">
						<div class="clearfix mobile"><button class="close-st1 close">닫기</button></div>
		
						<!--
						<div class="schedule_com">
							<div class="schedule_t">공연달력
								<div class="label_w">
									<span class="label t1"><span></span>오늘</span>
									<span class="label t2"><span></span>공연일</span>
								</div>
							</div>
							<div class="cal-st1 bg">
								<div class="cal-select">
									<button type="button" class="prev">이전달</button>
									<strong><span class="dt" id="searchYM"></span></strong>
									<button type="button" class="next">다음달</button>
								</div>
								<div id="scheduleForm"></div>
							</div>
						</div>
						 -->
						<!-- 캘린더 -->
		
						<div class="schedule_com">
							<strong class="schedule_t">티켓정보</strong>
							<div class="seat bg">
							
							VIP석 120,000원 / R석 100,000원 / S석 70,000원 / A석 30,000원 
							</div>
						</div>
		
						
							<div class="schedule_com">
								<strong class="schedule_t">할인정보</strong>
								<div class="dis bg">
									<strong class="color-navy">
										&nbsp;<p style="text-align: center; line-height: 180%; font-family: &quot;Malgun Gothic&quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;" malgun="" gothic";="" font-size:="" 16px;="" margin-top:="" 0px;="" margin-bottom:="" 0px;"=""><img src="https://www.sejongpac.or.kr:443/upload/2022/11/20221130_102419457_26245.jpg" title="" alt="" border="0" style="width: 950px; height: 1670px; border: 0px solid;"><br></p>
									</strong>
								</div>
							</div>
						
		
						
							<div class="schedule_com">
								<strong class="schedule_t">문의 전화</strong>
								<div class="dis bg">
									<strong class="color-navy">
										&nbsp;세종문화회관 02-399-1000
									</strong>
								</div>
							</div>
						
		
					<div class="schedule_btn clearfix">
						
						<!-- <button type="button" class="btn-st2 bg-black_r w1" onclick="alert('회원전용 서비스 입니다.');"><span class="ico-stars">관심공연</span></button> -->
						<button type="button" class="btn-st2 bg-black_r w1" onclick="interestPerformance('grpb2210111117a01');"><span class="ico-stars">관심공연</span></button>
						
						
		
						
						
						<button type="button" class="btn-st2 bg-black w2 butt_remain" onclick="remain();" title="새창 열림">잔여석정보</button>
						
						
							<button type="button" onclick="javascript:showPerformPop('grpb2210111117a01');return false;" class="btn-st2 bg-yellow_r ori_button ReservationTitle">예매하기</button>
						
						
						<button type="button" onclick="javascript:showPerformPop('grpb2210111117a01');return false;" class="btn-st2 bg-yellow_r imsi_button ReservationTitle" style="display:none">예매하기</button>
						
						
						
						<!-- <a href="/portal/bbs/B0000011/step.do?menuNo=200024&pageIndex=1&performIdx=33630" class="btn-st2 bg-purple_r w3 ">관람후기</a> -->
		
						
		
						
		
					</div>
					</div>
		
					<button type="button" class="hide sc mobile close">탭으로 이동</button>
					</li>
		
		
		
				</ul>
			</div><!-- //schedule_cont -->
		</div><!-- //inner -->
		</article><!-- //bbs-view_schedule -->
		<script src="/static/ticket/js/ticket.js"></script>
		<script src="/static/portal/js/schedule.js"></script>
		<script src="/static/jslibrary/clipboard.min.js"></script>
		<script src="/static/portal/js/snsShare.js"></script>
		<script>
		
		function reView() {
			location.href = '/portal/bbs/B0000011/step.do?menuNo=200024&pageIndex=1&performIdx=33630';
		}
		
		function book() {
			url = "https://flex.sejongpac.or.kr/Flex/pkg_list.do";
			window.open(url, "callBook", "resizable=no, status=no, scrollbars=no, toolbar=no, menubar=no, width=1000, height=700");
		}
		
		function remain() {
			url = "/portal/performance/performance/remain.do?viewType=BODY&performCd=10006077";
			window.open(url, "deptName", "resizable=no, status=no, scrollbars=no, toolbar=no, menubar=no, width=1000, height=700");
		}
		
		function interestPerformance(pc) {
			if (interestLoginChk != true) { 
				alert("회원전용 서비스 입니다.");
				return;
			}
			if(confirm("관심공연으로 등록하시겠습니까?")){
				 var data = { performCd : pc};
				 $.post("/portal/singl/scrap/insert.json",
				 data,
				 function(data) {
					if( data.resultCode == 'success' ){
						alert("관심공연에 등록되었습니다.\n\n마이페이지에서 확인하실 수 있습니다.");
					}else{
						alert('작업에 실패하였습니다.');
					}
					return false;
				 });
			}
		}
		
		$(".prev").click(function() {
			calendar("pre");
		});
		
		$(".next").click(function() {
			calendar("nxt");
		});
		function calendar(idx){
		
			/*
			var url = "/portal/performance/scheduleMng/schedule.do?viewType=CONTBODY";
			var params = {year : $("#searchYear").val() , month : $("#searchMonth").val() , idx : idx, startDate : "20221222" , endDate : "20221231" , performIdx : "33630" };
			$.post(url,params,function(data) {
				$("#scheduleForm").html(data);
				$("#searchYM").text($("#searchYear").val()+"."+$("#searchSMonth").val());
			},"html");
			*/
		}
		
		
		$('.cut_w .s').slick({
		});
		
		$('.schedule_cont .tabs-st4 >li > a').on('click', function(){
			var i = $(this).parent("li").index();
		
		    $('.schedule_cont .tabs-st4 >li').removeClass('active');
		    $('.schedule_cont .tab_cont2 >li').removeClass('on');
		
			if ($(this).parent("li").hasClass("active")){
			    $(this).parent("li").removeClass("active");
		    }else{
		        $(this).parent("li").addClass("active");
				$('.schedule_cont .tab_cont2 >li').eq(i).addClass('on');
			}
		
		    $(".tabs-st4 a").attr("title","");
		    $(this).attr("title","선택됨");
		    
		    $('.cut_w .s').slick('setPosition');
		    $('.com_s .s').slick('setPosition');
			return false;
			//e.preventDefault();
		});
		
		</script>
		
		
		
		
				</div>
			</div>
		
		</div>
		
		
		
		
		
		<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
		<!-- footer Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- footer End -->
		
		
		
		</section>
</body>
</html>