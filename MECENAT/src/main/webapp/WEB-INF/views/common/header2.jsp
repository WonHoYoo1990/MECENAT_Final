<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<body class="hide-focus-ring">
	<c:if test="${not empty alertMsg}">
		<script type="text/javascript">
			alert("${alertMsg}");
		</script>
		<c:remove var="alertMsg" scope="session"/>
	</c:if>
	<section id="wrap">

		<!-- // -->
		<header id="header" class="clearfix">
			<h1 id="logo">
				<a href="index.jsp">MECENAT</a>
			</h1>

			<div id="top_nav">
				<ul class="clearfix">
					<li><a href="/portal/subMain/perform.do?menuNo=200001">공연·전시·강좌</a>
						<ul class="depth2">
							<li><a href="/portal/bbs/B0000033/list.do?menuNo=200003">세종시즌</a></li>
							<li><a href="list.perf">공연일정</a></li>
							<li><a href="/portal/performance/exhibit/performList.do?menuNo=200005">전시일정</a></li>
							<li><a href="http://academy.sejongpac.or.kr/academy/singl/academyProgram/list.do?menuNo=800003" target="_blank" title="새창으로 열립니다.">강좌일정</a></li>
							<li class="arrow"><a href="setInfom.perf">좌석배치도</a>
								<ul class="depth3">
									<li><a href="setInfom.perf">세종대극장</a></li>
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
							<li><a href="application.rv">대관신청</a></li>
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
				<c:choose>
					<c:when test="${empty loginUser}">
						<li class="li link"><a href="loginForm.me">LOGIN</a></li>
					</c:when>
					<c:otherwise>
						<li class="li link login_Y" style=""><a href="#" class="t">MYPAGE</a>
							<ul class="depth">
								<li><a href="/portal/myPage/individual/list.do?menuNo=200153">MYPAGE</a></li>
								<li><a href="logout.me">LOGOUT</a></li>
						</ul></li>
					</c:otherwise>
				</c:choose>
				
				<!-- 
				<li class="li login_N" style="display: none;"><a href="/portal/member/user/forLogin.do?menuNo=200100">LOGIN</a></li>
				<li class="li link login_Y" style=""><a href="#" class="t">MYPAGE</a>
					<ul class="depth">
						<li><a href="/portal/myPage/individual/list.do?menuNo=200153">MYPAGE</a></li>
						<li><a href="loginForm.me">LOGOUT</a></li>
				</ul></li>
				 -->
				
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
							<li class="login_N" style="display: none;"><a href="loginForm.me">LOGIN</a></li>
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
								<li><a href="list.perf"><span>공연일정</span></a></li>
								<li><a href="/portal/performance/exhibit/performList.do?menuNo=200005"><span>전시일정</span></a></li>
								<li><a href="http://academy.sejongpac.or.kr/academy/singl/academyProgram/list.do?menuNo=800003" target="_blank" title="새창으로 열립니다."><span>강좌일정</span></a></li>
								<li><a href="setInfom.perf"><span>좌석배치도</span></a>
									<ul class="depth3 bul-dot">
										<li><a href="setInfom.perf">세종대극장</a></li>
										<li><a href="setInfom.perf">세종M씨어터</a></li>
										<li><a href="/portal/main/contents.do?menuNo=200096">세종 체임버홀</a></li>
										<li><a href="https://www.sejongpac.or.kr/upload/vr/vr2/tour.html" target="_blank" title="새창으로 열립니다.">세종S씨어터</a></li>
										<li><a href="/portal/main/contents.do?menuNo=200221">꿈의숲 퍼포먼스홀</a></li>
										<li><a href="/portal/main/contents.do?menuNo=200224">꿈의숲 콘서트홀</a></li>
								</ul></li>
						</ul></li>
						<li><a href="/portal/bbs/B0000002/list.do?menuNo=200012">대관안내</a>
							<ul class="depth2">
								<li><a href="https://www.sejongpac.or.kr/portal/bbs/B0000002/list.do?menuNo=200012"><span>대관공고</span></a></li>
								<li><a href="application.rv"><span>대관신청</span></a></li>
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
							<span><a href="https://twitter.com/SEJONG_CENTER​" target="_blank" title="새창으로 열립니다."><img src="./resources/sejongpac/static/portal/img/common/m/sns_t2.gif" alt="트위터"></a></span> <span><a href="https://www.facebook.com/sjcenter" target="_blank" title="새창으로 열립니다."><img src="/static/portal/img/common/m/sns_f.gif" alt="페이스북"></a></span> <span><a href="http://blog.naver.com/sejongnanum" target="_blank" title="새창으로 열립니다."><img src="/static/portal/img/common/m/sns_b.gif" alt="블로그"></a></span> <span><a href="https://www.instagram.com/sejongcenter/" target="_blank" title="새창으로 열립니다."><img src="/static/portal/img/common/m/sns_i.gif" alt="인스타그램"></a></span> <span><a href="https://www.youtube.com/channel/UCCqaPJqI5q1kfO51qWWOjrQ" target="_blank" title="새창으로 열립니다."><img src="/static/portal/img/common/m/sns_y.gif" alt="유튜브"></a></span>
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
											<img src="./resources/sejongpac/static/portal/img/bbs/no_img.gif" alt="세종문화회관 로고" class="no_img">
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

		<!-- 베너 -->
		<section id="sub_visual" style="height: 500px;">
			<div class="bg_w">
				<div class="bg" style="background-image: url(./resources/img/member/signupBackground.jpg;); transform: translate(-19.9989px, 10px) scale(1.1); " ></div>
			</div>
		</section>



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
		<script src="./resources/sejongpac/static/portal/js/common.js"></script>

	</section>
	
	----------------------------------------------------------------------------------------------------------
	
</body>
</html>