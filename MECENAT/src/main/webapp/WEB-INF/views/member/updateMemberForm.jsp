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
<title>회원가입 | 통합회원 서비스|</title>
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
<!-- 주소 찾기 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
body.hide-focus-ring *:focus {
	outline: none !important;
}
</style>
</head>
<body class="vsc-initialized hide-focus-ring">
	<section id="wrap">
	
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->
		
		<section id="sub_visual">
			<div class="bg_w">
				<div class="bg" style="background-image: url(./resources/sejongpac/static/commons/img/member/signupBackground.jpg); transform: translate(-19.9989px, 9.99961px) scale(1.1);"></div>
			</div>
			<h2 class="sub-t">
				<strong class="ani" style="opacity: 1;">회원정보 수정</strong>
			</h2>
		</section>
		
		<div id="depth_w" class="">
			<div class="inner">
				<ul class="clearfix dot dep1 li2">
					<li class="home"><span><span>HOME</span></span></li>
					<li>
						<div class="rel">
							<a href="#"><span>마이페이지</span></a>
							<ul class="depth">
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
							<a href="#"><span>회원정보 수정</span></a>
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
		
		<!-- #cont -->
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
					<script src="/static/jslibrary/miya_validator.js"></script>
					
					<form name="board" id="board" method="post" action="/portal/myPage/acntMng/update.do">
						<input type="hidden" id="menuNo" name="menuNo" value="200168">
						<article class="member_join inner">
							<div class="group">
								<h3 class="tit-st4 rel">기본정보입력 <span class="ab f16 color-purple">* 필수 입력 값</span></h3>
								<ul class="sect">
									<li class="item"><label for="name" class="t">이름 <span class="color-purple">*</span></label>
										<div class="cont">	
											<div class="btn-member_w dib">
												<input type="text" value="유원호" name="memberName" id="name" readonly="">
												<button class="bg-black" id="nameModal">수정</button>
											</div>
										</div>
									</li>
									<li class="item"><label for="id" class="t">ID <span class="color-purple">*</span></label>
										<div class="cont">
											<input type="text" value="ywh080" name="memberId" id="id" readonly="">
										</div>
									</li>
									<li class="item"><label for="password" class="t">비밀번호 <span class="color-purple">*</span></label>
										<div class="cont">
											<input type="password" name="password" id="password"> <span class="txt ml">영문, 숫자, 특수문자 중 2종류 이상 10자 ~ 12자 이내</span>
										</div>
									</li>
									<li class="item"><label for="repassword" class="t">비밀번호 확인 <span class="color-purple">*</span></label>
										<div class="cont">
											<input type="password" name="repassword" id="repassword"> <span class="txt ml">확인을 위해 한번 더 입력하시기 바랍니다.</span>
										</div>
									</li>
									<li class="item"><strong class="t">생년월일 <span class="color-purple">*</span></strong>
										<div class="cont">
											<div class="birth_w clearfix">
												<ul class="clearfix birth">
													<li><label for="birthdayYear" class="hide">연도 선택</label> 
														<select name="birthdayYear" id="birthdayYear"> 
															<option value="2022">2022</option>
															<option value="2021">2021</option>
															<option value="2020">2020</option>
															<option value="2019">2019</option>
															<option value="2018">2018</option>
															<option value="2017">2017</option>
															<option value="2016">2016</option>
															<option value="2015">2015</option>
															<option value="2014">2014</option>
															<option value="2013">2013</option>
															<option value="2012">2012</option>
															<option value="2011">2011</option>
															<option value="2010">2010</option>
															<option value="2009">2009</option>
															<option value="2008">2008</option>
															<option value="2007">2007</option>
															<option value="2006">2006</option>
															<option value="2005">2005</option>
															<option value="2004">2004</option>
															<option value="2003">2003</option>
															<option value="2002">2002</option>
															<option value="2001">2001</option>
															<option value="2000">2000</option>
															<option value="1999">1999</option>
															<option value="1998">1998</option>
															<option value="1997">1997</option>
															<option value="1996">1996</option>
															<option value="1995">1995</option>
															<option value="1994">1994</option>
															<option value="1993">1993</option>
															<option value="1992">1992</option>
															<option value="1991">1991</option>
															<option value="1990" selected="selected">1990</option>
															<option value="1989">1989</option>
															<option value="1988">1988</option>
															<option value="1987">1987</option>
															<option value="1986">1986</option>
															<option value="1985">1985</option>
															<option value="1984">1984</option>
															<option value="1983">1983</option>
															<option value="1982">1982</option>
															<option value="1981">1981</option>
															<option value="1980">1980</option>
															<option value="1979">1979</option>
															<option value="1978">1978</option>
															<option value="1977">1977</option>
															<option value="1976">1976</option>
															<option value="1975">1975</option>
															<option value="1974">1974</option>
															<option value="1973">1973</option>
															<option value="1972">1972</option>
															<option value="1971">1971</option>
															<option value="1970">1970</option>
															<option value="1969">1969</option>
															<option value="1968">1968</option>
															<option value="1967">1967</option>
															<option value="1966">1966</option>
															<option value="1965">1965</option>
															<option value="1964">1964</option>
															<option value="1963">1963</option>
															<option value="1962">1962</option>
															<option value="1961">1961</option>
															<option value="1960">1960</option>
															<option value="1959">1959</option>
															<option value="1958">1958</option>
															<option value="1957">1957</option>
															<option value="1956">1956</option>
															<option value="1955">1955</option>
															<option value="1954">1954</option>
															<option value="1953">1953</option>
															<option value="1952">1952</option>
															<option value="1951">1951</option>
															<option value="1950">1950</option>
															<option value="1949">1949</option>
															<option value="1948">1948</option>
															<option value="1947">1947</option>
															<option value="1946">1946</option>
															<option value="1945">1945</option>
															<option value="1944">1944</option>
															<option value="1943">1943</option>
															<option value="1942">1942</option>
															<option value="1941">1941</option>
															<option value="1940">1940</option>
															<option value="1939">1939</option>
															<option value="1938">1938</option>
															<option value="1937">1937</option>
															<option value="1936">1936</option>
															<option value="1935">1935</option>
															<option value="1934">1934</option>
															<option value="1933">1933</option>
															<option value="1932">1932</option>
															<option value="1931">1931</option>
															<option value="1930">1930</option>
															<option value="1929">1929</option>
															<option value="1928">1928</option>
															<option value="1927">1927</option>
															<option value="1926">1926</option>
															<option value="1925">1925</option>
															<option value="1924">1924</option>
															<option value="1923">1923</option>
															<option value="1922">1922</option>
															<option value="1921">1921</option>
															<option value="1920">1920</option>
															<option value="1919">1919</option>
															<option value="1918">1918</option>
															<option value="1917">1917</option>
															<option value="1916">1916</option>
															<option value="1915">1915</option>
															<option value="1914">1914</option>
															<option value="1913">1913</option>
															<option value="1912">1912</option>
															<option value="1911">1911</option>
															<option value="1910">1910</option>
															<option value="1909">1909</option>
															<option value="1908">1908</option>
															<option value="1907">1907</option>
															<option value="1906">1906</option>
															<option value="1905">1905</option>
															<option value="1904">1904</option>
															<option value="1903">1903</option>
															<option value="1902">1902</option>
															<option value="1901">1901</option>
															<option value="1900">1900</option>
													</select> <span>년</span></li>
													<li><label for="birthdayMonth" class="hide">월 선택</label> 
														<select name="birthdayMonth" id="birthdayMonth">
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11" selected="selected">11</option>
															<option value="12">12</option>
													</select> <span>월</span></li>
													<li><label for="birthdayDay" class="hide">일 선택</label> 
														<select name="birthdayDay" id="birthdayDay">
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11" selected="selected">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
													</select> <span>일</span></li>
												</ul> 
												<input type="hidden" name="birthDay" id="birthDay" value="19901111"> 
												<input type="hidden" name="birthMonth" id="birthMonth" value="1111">
												<div class="solar ck_com">
													<input type="radio" name="lunarFlag" id="lunarFlag1" value="N" checked="checked"> <label for="lunarFlag1">양력</label> <input type="radio" name="lunarFlag" id="lunarFlag2" value="Y"> <label for="lunarFlag2">음력</label>
												</div>
											</div>
										</div>
									</li>
									<li class="item"><label for="genderFlag" class="t">성별 <span class="color-purple">*</span></label>
										<div class="cont">
											<select name="genderFlag" id="genderFlag" class="small">
												<option value="M" selected="selected">남자</option>
												<option value="F">여자</option>
											</select>
										</div></li>
									<li class="item"><strong class="t">주소 <span class="color-purple">*</span></strong>
										<div class="cont">
											<ul class="add">
												<li class="clearfix a1">
													<div class="zipcode">
														<label for="memberZipCd" class="hide">우편번호</label> <input type="text" name="memberZipCd" id="memberZipCd" value="06928" readonly="">
														<button id="addrBtn" type="button" class="bg-black" title="새창으로 열립니다.">우편번호 찾기</button>
														<script>
															$("#addrBtn").click(
																function() {
																	goPopup();
																	return false;
															});
														</script>
													</div>
													<div class="select ck_com">
														<input type="radio" name="defaultContact" id="defaultContact1" value="P" checked="checked"> <label for="defaultContact1">자택 </label> <input type="radio" name="defaultContact" id="defaultContact2" value="C"> <label for="defaultContact2">직장</label>
													</div>
												</li>
												<li class="clearfix a2">
													<span class="l"> <label for="memberAddr1" class="hide">주소</label> <input type="text" name="memberAddr1" id="memberAddr1" value="서울특별시 동작구 노량진로8길 55, 712호(노량진동, 더 클래식 동작)" readonly=""></span> 
													<span class="r"> <label for="memberAddr2" class="hide">나머지 주소</label> <input type="text" name="memberAddr2" id="memberAddr2" value="712호" class="long"></span>
												</li>
											</ul>
										</div>
									</li>
									<li class="item"><strong class="t">이메일 <span class="color-purple">*</span></strong>
										<div class="cont">
											<ul class="email clearfix">
												<li class="e1"><label for="memberEmail1" class="hide">이메일 아이디</label><input type="text" name="memberEmail1" id="memberEmail1" value="you_yearning"></li>
												<li class="dash">@</li>
												<li class="e2"><label for="memberEmail2" class="hide">이메일 주소</label><input type="text" name="memberEmail2" id="memberEmail2" value="hanmail.net" class="long"></li>
												<li class="e3"><label for="email3" class="hide">이메일 주소 선택</label> 
													<select name="emailDomain" id="emailDomain">
														<option value="">직접입력</option>
														<option value="naver.com">naver.com</option>
														<option value="hanmail.net" selected="selected">hanmail.net</option>
														<option value="gmail.com">gmail.com</option>
														<option value="yahoo.com">yahoo.com</option>
														<option value="nate.com">nate.com</option>
														<option value="hotmail.com">hotmail.com</option>
														<option value="param.com">param.com</option>
														<option value="empas.com">empas.com</option>
														<option value="korea.com">korea.com</option>
													</select> 
													<input type="hidden" name="memberEmail" id="memberEmail" value="you_yearning@hanmail.net"> 
													<script>
														$("#emailDomain").change(
															function() {
																if ($(this).val() == "") {
																	$("#memberEmail2").val("");
																	$("#memberEmail2").prop("readonly",false);
																} else {
																	$("#memberEmail2").val($(this).val());
																	$("#memberEmail2").prop("readonly",true);
																}
														});
													</script>
												</li>
											</ul>
										</div>
									</li>
									<li class="item"><strong class="t">휴대폰 <span class="color-purple">*</span></strong>
										<div class="cont">
											<div class="tel_w">
												<ul class="clearfix tel">
													<li><label for="memberCel1" class="hide">휴대폰 앞</label> 
														<select name="memberCel1" id="memberCel1">
															<option value="010" selected="selected">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
														</select>
													</li>
													<li><label for="memberCel2" class="hide">휴대폰 중간</label> <input type="text" name="memberCel2" id="memberCel2" class="small" value="3322" maxlength="4" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"></li>
													<li><label for="memberCel3" class="hide">휴대폰 끝</label> <input type="text" name="memberCel3" id="memberCel3" class="small" value="2574" maxlength="4" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"></li>
												</ul>
												<button type="button" class="bg-black" onclick="javascript:registUserAuth();return false;">인증</button>
											</div>
											<input type="hidden" name="memberCel" id="memberCel" value="010-3322-2574"> <input type="hidden" name="memberCelOri" id="memberCelOri" value="010-3322-2574"> <input type="hidden" name="changeCel" id="changeCel" value="0">
											<div class="tel_confirm" style="margin-top: 10px;">
												<label for="smsAuthNumber" class="hide">인증번호 입력</label> <input type="text" name="smsAuthNumber" id="smsAuthNumber" placeholder="인증번호 6자리 숫자 입력" maxlength="6"> <input type="hidden" name="serverAuth" id="serverAuth">
											</div>
										</div>
									</li>
									<li class="item"><strong class="t">전화번호</strong>
										<div class="cont">
											<ul class="clearfix tel">
												<li><label for="memberTel1" class="hide">전화번호 앞</label> 
													<select name="memberTel1" id="memberTel1">
														<option value="02">02</option>
														<option value="070">070</option>
														<option value="051">051</option>
														<option value="053">053</option>
														<option value="032">032</option>
														<option value="062">062</option>
														<option value="042">042</option>
														<option value="052">052</option>
														<option value="044">044</option>
														<option value="031">031</option>
														<option value="033">033</option>
														<option value="043">043</option>
														<option value="041">041</option>
														<option value="063">063</option>
														<option value="061">061</option>
														<option value="054">054</option>
														<option value="055">055</option>
														<option value="064">064</option>
													</select>
												</li>
												<li><label for="memberTel2" class="hide">전화번호 중간</label> <input type="text" name="memberTel2" id="memberTel2" class="small" value="" maxlength="4" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"></li>
												<li><label for="memberTel3" class="hide">전화번호 끝</label> <input type="text" name="memberTel3" id="memberTel3" class="small" value="" maxlength="4" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"></li>
											</ul> 
											<input type="hidden" name="memberTel" id="memberTel" value="">
										</div>
									</li>
									<li class="item"><strong class="t">환불계좌관리</strong>
										<div class="cont">
											<span class="txt" style="display: block; margin: 10px 0 20px;"><strong>※계좌등록/변경을 위해 계좌인증을 진행해주세요.</strong></span> <input type="text" name="" placeholder="은행명" value="" readonly=""> <input type="text" name="" placeholder="계좌번호" readonly="" value=""> <input type="text" name="" placeholder="예금주" value="" readonly="">
											<button class="bg-black" id="accountModal" style="height: 60px; width: 120px;">계좌인증</button>
											<p class="txt">
												[유의사항]<br> - 환불계좌는 본인 명의의 계좌만 등록/변경 가능합니다.<br> - 개명 등의 사유로 회원이름과 예금주가 일치하지 않은 경우, 본인인증 후 이름을 변경할 수 있습니다.<br> - 본인명의의 계좌가 없는 경우, 직계가족 명의의 계좌로 환불이 가능합니다.<br> &nbsp;&nbsp;타인계좌 환불동의서 및 제출서류를 첨부하여 ticket@sejongpac.or.kr로 보내주시기 바랍니다.<br> <br> ※ 제출서류 : 타인계좌환불동의서, 가족관계확인서, 예금주 통장사본, 예매자 및 예금주 신분증 각 1부<br> - 기타 문의사항은 고객센터로 문의하시기 바랍니다. (02-399-1000, 오전9시 ~ 오후8시)
											</p>
											<button class="bg-black" style="height: 60px; width: 200px; margin-top: 10px;">
												<a href="/portal/cmmn/file/fileDown.do?atchFileId=6ea31730ad5f4e84bb79fb2044e126f2&amp;fileSn=1">타인계좌 환불동의서<br>다운로드
												</a>
											</button>
										</div></li>
								</ul>
							</div>
							<div style="display: none;">
								<ul>
									<li><label for="cbdYear" class="hide">생년</label> 
										<select name="cbdYear" id="cbdYear">
											<option value="2022">2022</option>
											<option value="2021">2021</option>
											<option value="2020">2020</option>
											<option value="2019">2019</option>
											<option value="2018">2018</option>
											<option value="2017">2017</option>
											<option value="2016">2016</option>
											<option value="2015">2015</option>
											<option value="2014">2014</option>
											<option value="2013">2013</option>
											<option value="2012">2012</option>
											<option value="2011">2011</option>
											<option value="2010">2010</option>
											<option value="2009">2009</option>
											<option value="2008">2008</option>
											<option value="2007">2007</option>
											<option value="2006">2006</option>
											<option value="2005">2005</option>
											<option value="2004">2004</option>
											<option value="2003">2003</option>
											<option value="2002">2002</option>
											<option value="2001">2001</option>
											<option value="2000">2000</option>
											<option value="1999">1999</option>
											<option value="1998">1998</option>
											<option value="1997">1997</option>
											<option value="1996">1996</option>
											<option value="1995">1995</option>
											<option value="1994">1994</option>
											<option value="1993">1993</option>
											<option value="1992">1992</option>
											<option value="1991">1991</option>
											<option value="1990">1990</option>
											<option value="1989">1989</option>
											<option value="1988">1988</option>
											<option value="1987">1987</option>
											<option value="1986">1986</option>
											<option value="1985">1985</option>
											<option value="1984">1984</option>
											<option value="1983">1983</option>
											<option value="1982">1982</option>
											<option value="1981">1981</option>
											<option value="1980">1980</option>
											<option value="1979">1979</option>
											<option value="1978">1978</option>
											<option value="1977">1977</option>
											<option value="1976">1976</option>
											<option value="1975">1975</option>
											<option value="1974">1974</option>
											<option value="1973">1973</option>
											<option value="1972">1972</option>
											<option value="1971">1971</option>
											<option value="1970">1970</option>
											<option value="1969">1969</option>
											<option value="1968">1968</option>
											<option value="1967">1967</option>
											<option value="1966">1966</option>
											<option value="1965">1965</option>
											<option value="1964">1964</option>
											<option value="1963">1963</option>
											<option value="1962">1962</option>
											<option value="1961">1961</option>
											<option value="1960">1960</option>
											<option value="1959">1959</option>
											<option value="1958">1958</option>
											<option value="1957">1957</option>
											<option value="1956">1956</option>
											<option value="1955">1955</option>
											<option value="1954">1954</option>
											<option value="1953">1953</option>
											<option value="1952">1952</option>
											<option value="1951">1951</option>
											<option value="1950">1950</option>
											<option value="1949">1949</option>
											<option value="1948">1948</option>
											<option value="1947">1947</option>
											<option value="1946">1946</option>
											<option value="1945">1945</option>
											<option value="1944">1944</option>
											<option value="1943">1943</option>
											<option value="1942">1942</option>
											<option value="1941">1941</option>
											<option value="1940">1940</option>
											<option value="1939">1939</option>
											<option value="1938">1938</option>
											<option value="1937">1937</option>
											<option value="1936">1936</option>
											<option value="1935">1935</option>
											<option value="1934">1934</option>
											<option value="1933">1933</option>
											<option value="1932">1932</option>
											<option value="1931">1931</option>
											<option value="1930">1930</option>
											<option value="1929">1929</option>
											<option value="1928">1928</option>
											<option value="1927">1927</option>
											<option value="1926">1926</option>
											<option value="1925">1925</option>
											<option value="1924">1924</option>
											<option value="1923">1923</option>
											<option value="1922">1922</option>
											<option value="1921">1921</option>
											<option value="1920">1920</option>
											<option value="1919">1919</option>
											<option value="1918">1918</option>
											<option value="1917">1917</option>
											<option value="1916">1916</option>
											<option value="1915">1915</option>
											<option value="1914">1914</option>
											<option value="1913">1913</option>
											<option value="1912">1912</option>
											<option value="1911">1911</option>
											<option value="1910">1910</option>
											<option value="1909">1909</option>
											<option value="1908">1908</option>
											<option value="1907">1907</option>
											<option value="1906">1906</option>
											<option value="1905">1905</option>
											<option value="1904">1904</option>
											<option value="1903">1903</option>
											<option value="1902">1902</option>
											<option value="1901">1901</option>
											<option value="1900">1900</option>
									</select> <span>년</span></li>
									<li><label for="cbdMonth" class="hide">월 선택</label> <select name="cbdMonth" id="cbdMonth">
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
									</select> <span>월</span></li>
									<li><label for="cbdDay" class="hide">일 선택</label> 
										<select name="cbdDay" id="cbdDay">
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
										</select> <span>일</span>
									</li>
								</ul>
							</div>
							<div class="group">
								<h3 class="tit-st4 rel">
									부가정보입력[선택사항]<span class="color-grey">(입력 항목에 따라 세종문화회관 멤버십 혜택을 제공합니다.)</span>
								</h3>
								<ul class="sect">
									<li class="item"><strong class="t">관심분야</strong>
										<div class="cont">
											<ul class="clearfix ck">
												<li><input type="checkbox" name="interestCode" id="interestCode1" value="1"><label for="interestCode1">미술</label></li>
												<li><input type="checkbox" name="interestCode" id="interestCode2" value="2"><label for="interestCode2">클래식</label></li>
												<li><input type="checkbox" name="interestCode" id="interestCode3" value="3"><label for="interestCode3">무용</label></li>
												<li><input type="checkbox" name="interestCode" id="interestCode4" value="4" checked="checked"><label for="interestCode4">연극/뮤지컬</label></li>
												<li><input type="checkbox" name="interestCode" id="interestCode5" value="5"><label for="interestCode5">국악</label></li>
												<li><input type="checkbox" name="interestCode" id="interestCode6" value="6"><label for="interestCode6">대중음악</label></li>
												<li><input type="checkbox" name="interestCode" id="interestCode7" value="7" checked="checked"><label for="interestCode7">오페라/합창</label></li>
												<li><input type="checkbox" name="interestCode" id="interestCode8" value="8"><label for="interestCode8">아카데미</label></li>
											</ul>
										</div> <input type="hidden" name="interestCodeArr" id="interestCodeArr" value=""></li>
									<li class="item"><strong class="t">관심예술단</strong>
										<div class="cont">
											<p class="txt mb">세종문화회관은 9개의 예술단을 운영하고 있습니다.(9개 예술단 중 관심있는 예술단에 표기하여 주시기 바랍니다.)</p>
											<ul class="clearfix ck wide">
												<li><input type="checkbox" name="interestGroupCode" id="interestGroupCode1" value="1"><label for="interestGroupCode1">서울시국악관현악단</label></li>
												<li><input type="checkbox" name="interestGroupCode" id="interestGroupCode2" value="2"><label for="interestGroupCode2">서울시청소년국악단</label></li>
												<li><input type="checkbox" name="interestGroupCode" id="interestGroupCode3" value="3"><label for="interestGroupCode3">서울시무용단</label></li>
												<li><input type="checkbox" name="interestGroupCode" id="interestGroupCode4" value="4"><label for="interestGroupCode4">서울시유스오케스트라단</label></li>
												<li><input type="checkbox" name="interestGroupCode" id="interestGroupCode5" value="5"><label for="interestGroupCode5">서울시오페라단</label></li>
												<li><input type="checkbox" name="interestGroupCode" id="interestGroupCode6" value="6"><label for="interestGroupCode6">서울시뮤지컬단</label></li>
												<li><input type="checkbox" name="interestGroupCode" id="interestGroupCode7" value="7"><label for="interestGroupCode7">서울시합창단</label></li>
												<li><input type="checkbox" name="interestGroupCode" id="interestGroupCode8" value="8"><label for="interestGroupCode8">서울시소년소녀합창단</label></li>
												<li><input type="checkbox" name="interestGroupCode" id="interestGroupCode9" value="9"><label for="interestGroupCode9">서울시극단</label></li>
											</ul>
										</div> <input type="hidden" name="interestGroupCodeArr" id="interestGroupCodeArr" value=""></li>
									<li class="item"><label for="jobType" class="t">직업</label>
										<div class="cont">
											<select name="jobType" id="jobType" class="small">
												<option value="01" selected="selected">사무직</option>
												<option value="02">연구/개발</option>
												<option value="03">전문직</option>
												<option value="04">자영업</option>
												<option value="05">대학생미만</option>
												<option value="06">대학생이상</option>
												<option value="07">농수축산업</option>
												<option value="08">주부</option>
												<option value="09">예술가</option>
												<option value="10">마케팅</option>
												<option value="11">공무원</option>
												<option value="12">기타</option>
											</select>
										</div>
									</li>
									<li class="item"><strong class="t">결혼유무</strong>
										<div class="cont ck_com">
											<input type="radio" name="martialFlag" id="martialFlag1" value="N"> <label for="martialFlag1">미혼</label> <input type="radio" name="martialFlag" id="martialFlag2" value="Y"> <label for="martialFlag2">기혼</label>
										</div>
									</li>
									<li class="item"><strong class="t">결혼기념일 </strong>
										<div class="cont">
											<div class="birth_w clearfix">
												<ul class="clearfix birth">
													<li><label for="weddingDate1" class="hide">생년</label> 
														<select name="weddingDate1" id="weddingDate1">
															<option value="2022" selected="selected">2022</option>
															<option value="2021">2021</option>
															<option value="2020">2020</option>
															<option value="2019">2019</option>
															<option value="2018">2018</option>
															<option value="2017">2017</option>
															<option value="2016">2016</option>
															<option value="2015">2015</option>
															<option value="2014">2014</option>
															<option value="2013">2013</option>
															<option value="2012">2012</option>
															<option value="2011">2011</option>
															<option value="2010">2010</option>
															<option value="2009">2009</option>
															<option value="2008">2008</option>
															<option value="2007">2007</option>
															<option value="2006">2006</option>
															<option value="2005">2005</option>
															<option value="2004">2004</option>
															<option value="2003">2003</option>
															<option value="2002">2002</option>
															<option value="2001">2001</option>
															<option value="2000">2000</option>
															<option value="1999">1999</option>
															<option value="1998">1998</option>
															<option value="1997">1997</option>
															<option value="1996">1996</option>
															<option value="1995">1995</option>
															<option value="1994">1994</option>
															<option value="1993">1993</option>
															<option value="1992">1992</option>
															<option value="1991">1991</option>
															<option value="1990">1990</option>
															<option value="1989">1989</option>
															<option value="1988">1988</option>
															<option value="1987">1987</option>
															<option value="1986">1986</option>
															<option value="1985">1985</option>
															<option value="1984">1984</option>
															<option value="1983">1983</option>
															<option value="1982">1982</option>
															<option value="1981">1981</option>
															<option value="1980">1980</option>
															<option value="1979">1979</option>
															<option value="1978">1978</option>
															<option value="1977">1977</option>
															<option value="1976">1976</option>
															<option value="1975">1975</option>
															<option value="1974">1974</option>
															<option value="1973">1973</option>
															<option value="1972">1972</option>
															<option value="1971">1971</option>
															<option value="1970">1970</option>
															<option value="1969">1969</option>
															<option value="1968">1968</option>
															<option value="1967">1967</option>
															<option value="1966">1966</option>
															<option value="1965">1965</option>
															<option value="1964">1964</option>
															<option value="1963">1963</option>
															<option value="1962">1962</option>
															<option value="1961">1961</option>
															<option value="1960">1960</option>
															<option value="1959">1959</option>
															<option value="1958">1958</option>
															<option value="1957">1957</option>
															<option value="1956">1956</option>
															<option value="1955">1955</option>
															<option value="1954">1954</option>
															<option value="1953">1953</option>
															<option value="1952">1952</option>
															<option value="1951">1951</option>
															<option value="1950">1950</option>
															<option value="1949">1949</option>
															<option value="1948">1948</option>
															<option value="1947">1947</option>
															<option value="1946">1946</option>
															<option value="1945">1945</option>
															<option value="1944">1944</option>
															<option value="1943">1943</option>
															<option value="1942">1942</option>
															<option value="1941">1941</option>
															<option value="1940">1940</option>
															<option value="1939">1939</option>
															<option value="1938">1938</option>
															<option value="1937">1937</option>
															<option value="1936">1936</option>
															<option value="1935">1935</option>
															<option value="1934">1934</option>
															<option value="1933">1933</option>
															<option value="1932">1932</option>
															<option value="1931">1931</option>
															<option value="1930">1930</option>
															<option value="1929">1929</option>
															<option value="1928">1928</option>
															<option value="1927">1927</option>
															<option value="1926">1926</option>
															<option value="1925">1925</option>
															<option value="1924">1924</option>
															<option value="1923">1923</option>
															<option value="1922">1922</option>
															<option value="1921">1921</option>
															<option value="1920">1920</option>
															<option value="1919">1919</option>
															<option value="1918">1918</option>
															<option value="1917">1917</option>
															<option value="1916">1916</option>
															<option value="1915">1915</option>
															<option value="1914">1914</option>
															<option value="1913">1913</option>
															<option value="1912">1912</option>
															<option value="1911">1911</option>
															<option value="1910">1910</option>
															<option value="1909">1909</option>
															<option value="1908">1908</option>
															<option value="1907">1907</option>
															<option value="1906">1906</option>
															<option value="1905">1905</option>
															<option value="1904">1904</option>
															<option value="1903">1903</option>
															<option value="1902">1902</option>
															<option value="1901">1901</option>
															<option value="1900">1900</option>
													</select> <span>년</span></li>
													<li><label for="weddingDate2" class="hide">월 선택</label> 
														<select name="weddingDate2" id="weddingDate2">
															<option value="01" selected="selected">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select> <span>월</span></li>
													<li><label for="weddingDate3" class="hide">일 선택</label> 
														<select name="weddingDate3" id="weddingDate3">
															<option value="01" selected="selected">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
														</select> <span>일</span></li>
												</ul> 
												<input type="hidden" name="weddingDate" id="weddingDate" value="20220101">
											</div>
										</div>
									</li>
									<li class="item"><label for="child" class="t">자녀수</label>
										<div class="cont">
											<select name="childrenCnt" id="childrenCnt" class="small">
												<option value="0" selected="selected">0</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
											</select>
											<script>
												$("#childrenCnt").change(
													function() {
														var cnt = $(this).val();
														var $this = $(this);
														$(".childItem").each(
															function(idx) {
																$(this).hide();
														});
														$('#childInfo').hide();
														$(".childItem").each(
															function(idx) {
																if (cnt > idx) {
																	$(this).show();
																	$('#childInfo').show();
																}
														});
													});
											</script>
										</div>
									</li>
									<li class="item" id="childInfo" style="display: none;"><strong class="t">자녀생년월일 </strong>
										<div class="cont kids">
											<p class="txt mb">자녀의 생년월일을 입력하시면, 어린이 공연 시 추천대상으로 선정될 수 있습니다.</p>
											<div class="birth_w clearfix childItem" style="display: none;">
												<span>자녀 1</span>
												<ul class="clearfix birth">
													<li><label for="cbdYear" class="hide">생년</label> 
														<select name="cbdYear" id="cbdYear">
															<option value="">선택</option>
															<option value="2022">2022</option>
															<option value="2021">2021</option>
															<option value="2020">2020</option>
															<option value="2019">2019</option>
															<option value="2018">2018</option>
															<option value="2017">2017</option>
															<option value="2016">2016</option>
															<option value="2015">2015</option>
															<option value="2014">2014</option>
															<option value="2013">2013</option>
															<option value="2012">2012</option>
															<option value="2011">2011</option>
															<option value="2010">2010</option>
															<option value="2009">2009</option>
															<option value="2008">2008</option>
															<option value="2007">2007</option>
															<option value="2006">2006</option>
															<option value="2005">2005</option>
															<option value="2004">2004</option>
															<option value="2003">2003</option>
															<option value="2002">2002</option>
															<option value="2001">2001</option>
															<option value="2000">2000</option>
															<option value="1999">1999</option>
															<option value="1998">1998</option>
															<option value="1997">1997</option>
															<option value="1996">1996</option>
															<option value="1995">1995</option>
															<option value="1994">1994</option>
															<option value="1993">1993</option>
															<option value="1992">1992</option>
															<option value="1991">1991</option>
															<option value="1990">1990</option>
															<option value="1989">1989</option>
															<option value="1988">1988</option>
															<option value="1987">1987</option>
															<option value="1986">1986</option>
															<option value="1985">1985</option>
															<option value="1984">1984</option>
															<option value="1983">1983</option>
															<option value="1982">1982</option>
															<option value="1981">1981</option>
															<option value="1980">1980</option>
															<option value="1979">1979</option>
															<option value="1978">1978</option>
															<option value="1977">1977</option>
															<option value="1976">1976</option>
															<option value="1975">1975</option>
															<option value="1974">1974</option>
															<option value="1973">1973</option>
															<option value="1972">1972</option>
															<option value="1971">1971</option>
															<option value="1970">1970</option>
															<option value="1969">1969</option>
															<option value="1968">1968</option>
															<option value="1967">1967</option>
															<option value="1966">1966</option>
															<option value="1965">1965</option>
															<option value="1964">1964</option>
															<option value="1963">1963</option>
															<option value="1962">1962</option>
															<option value="1961">1961</option>
															<option value="1960">1960</option>
															<option value="1959">1959</option>
															<option value="1958">1958</option>
															<option value="1957">1957</option>
															<option value="1956">1956</option>
															<option value="1955">1955</option>
															<option value="1954">1954</option>
															<option value="1953">1953</option>
															<option value="1952">1952</option>
															<option value="1951">1951</option>
															<option value="1950">1950</option>
															<option value="1949">1949</option>
															<option value="1948">1948</option>
															<option value="1947">1947</option>
															<option value="1946">1946</option>
															<option value="1945">1945</option>
															<option value="1944">1944</option>
															<option value="1943">1943</option>
															<option value="1942">1942</option>
															<option value="1941">1941</option>
															<option value="1940">1940</option>
															<option value="1939">1939</option>
															<option value="1938">1938</option>
															<option value="1937">1937</option>
															<option value="1936">1936</option>
															<option value="1935">1935</option>
															<option value="1934">1934</option>
															<option value="1933">1933</option>
															<option value="1932">1932</option>
															<option value="1931">1931</option>
															<option value="1930">1930</option>
															<option value="1929">1929</option>
															<option value="1928">1928</option>
															<option value="1927">1927</option>
															<option value="1926">1926</option>
															<option value="1925">1925</option>
															<option value="1924">1924</option>
															<option value="1923">1923</option>
															<option value="1922">1922</option>
															<option value="1921">1921</option>
															<option value="1920">1920</option>
															<option value="1919">1919</option>
															<option value="1918">1918</option>
															<option value="1917">1917</option>
															<option value="1916">1916</option>
															<option value="1915">1915</option>
															<option value="1914">1914</option>
															<option value="1913">1913</option>
															<option value="1912">1912</option>
															<option value="1911">1911</option>
															<option value="1910">1910</option>
															<option value="1909">1909</option>
															<option value="1908">1908</option>
															<option value="1907">1907</option>
															<option value="1906">1906</option>
															<option value="1905">1905</option>
															<option value="1904">1904</option>
															<option value="1903">1903</option>
															<option value="1902">1902</option>
															<option value="1901">1901</option>
															<option value="1900">1900</option>
														</select> <span>년</span>
													</li>
													<li><label for="cbdMonth" class="hide">월 선택</label> 
														<select name="cbdMonth" id="cbdMonth">
															<option value="">선택</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select> <span>월</span></li>
													<li><label for="cbdDay" class="hide">일 선택</label> 
														<select name="cbdDay" id="cbdDay">
															<option value="">선택</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
														</select> <span>일</span>
													</li>
												</ul> 
												<input type="hidden" name="childrenBirthDay1" id="childrenBirthDay1" value="">
											</div>
											<div class="birth_w clearfix childItem" style="display: none;">
												<span>자녀 2</span>
												<ul class="clearfix birth">
													<li><label for="cbdYear2" class="hide">생년</label> 
														<select name="cbdYear2" id="cbdYear2">
															<option value="">선택</option>
															<option value="2022">2022</option>
															<option value="2021">2021</option>
															<option value="2020">2020</option>
															<option value="2019">2019</option>
															<option value="2018">2018</option>
															<option value="2017">2017</option>
															<option value="2016">2016</option>
															<option value="2015">2015</option>
															<option value="2014">2014</option>
															<option value="2013">2013</option>
															<option value="2012">2012</option>
															<option value="2011">2011</option>
															<option value="2010">2010</option>
															<option value="2009">2009</option>
															<option value="2008">2008</option>
															<option value="2007">2007</option>
															<option value="2006">2006</option>
															<option value="2005">2005</option>
															<option value="2004">2004</option>
															<option value="2003">2003</option>
															<option value="2002">2002</option>
															<option value="2001">2001</option>
															<option value="2000">2000</option>
															<option value="1999">1999</option>
															<option value="1998">1998</option>
															<option value="1997">1997</option>
															<option value="1996">1996</option>
															<option value="1995">1995</option>
															<option value="1994">1994</option>
															<option value="1993">1993</option>
															<option value="1992">1992</option>
															<option value="1991">1991</option>
															<option value="1990">1990</option>
															<option value="1989">1989</option>
															<option value="1988">1988</option>
															<option value="1987">1987</option>
															<option value="1986">1986</option>
															<option value="1985">1985</option>
															<option value="1984">1984</option>
															<option value="1983">1983</option>
															<option value="1982">1982</option>
															<option value="1981">1981</option>
															<option value="1980">1980</option>
															<option value="1979">1979</option>
															<option value="1978">1978</option>
															<option value="1977">1977</option>
															<option value="1976">1976</option>
															<option value="1975">1975</option>
															<option value="1974">1974</option>
															<option value="1973">1973</option>
															<option value="1972">1972</option>
															<option value="1971">1971</option>
															<option value="1970">1970</option>
															<option value="1969">1969</option>
															<option value="1968">1968</option>
															<option value="1967">1967</option>
															<option value="1966">1966</option>
															<option value="1965">1965</option>
															<option value="1964">1964</option>
															<option value="1963">1963</option>
															<option value="1962">1962</option>
															<option value="1961">1961</option>
															<option value="1960">1960</option>
															<option value="1959">1959</option>
															<option value="1958">1958</option>
															<option value="1957">1957</option>
															<option value="1956">1956</option>
															<option value="1955">1955</option>
															<option value="1954">1954</option>
															<option value="1953">1953</option>
															<option value="1952">1952</option>
															<option value="1951">1951</option>
															<option value="1950">1950</option>
															<option value="1949">1949</option>
															<option value="1948">1948</option>
															<option value="1947">1947</option>
															<option value="1946">1946</option>
															<option value="1945">1945</option>
															<option value="1944">1944</option>
															<option value="1943">1943</option>
															<option value="1942">1942</option>
															<option value="1941">1941</option>
															<option value="1940">1940</option>
															<option value="1939">1939</option>
															<option value="1938">1938</option>
															<option value="1937">1937</option>
															<option value="1936">1936</option>
															<option value="1935">1935</option>
															<option value="1934">1934</option>
															<option value="1933">1933</option>
															<option value="1932">1932</option>
															<option value="1931">1931</option>
															<option value="1930">1930</option>
															<option value="1929">1929</option>
															<option value="1928">1928</option>
															<option value="1927">1927</option>
															<option value="1926">1926</option>
															<option value="1925">1925</option>
															<option value="1924">1924</option>
															<option value="1923">1923</option>
															<option value="1922">1922</option>
															<option value="1921">1921</option>
															<option value="1920">1920</option>
															<option value="1919">1919</option>
															<option value="1918">1918</option>
															<option value="1917">1917</option>
															<option value="1916">1916</option>
															<option value="1915">1915</option>
															<option value="1914">1914</option>
															<option value="1913">1913</option>
															<option value="1912">1912</option>
															<option value="1911">1911</option>
															<option value="1910">1910</option>
															<option value="1909">1909</option>
															<option value="1908">1908</option>
															<option value="1907">1907</option>
															<option value="1906">1906</option>
															<option value="1905">1905</option>
															<option value="1904">1904</option>
															<option value="1903">1903</option>
															<option value="1902">1902</option>
															<option value="1901">1901</option>
															<option value="1900">1900</option>
														</select> <span>년</span>
													</li>
													<li><label for="cbdMonth2" class="hide">월 선택</label> 
														<select name="cbdMonth2" id="cbdMonth2">
															<option value="">선택</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select> <span>월</span>
													</li>
													<li><label for="cbdDay2" class="hide">일 선택</label> 
														<select name="cbdDay2" id="cbdDay2">
															<option value="">선택</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
														</select> <span>일</span>
													</li>
												</ul> 
												<input type="hidden" name="childrenBirthDay2" id="childrenBirthDay2" value="">
											</div>
											<div class="birth_w clearfix childItem" style="display: none;">
												<span>자녀 3</span>
												<ul class="clearfix birth">
													<li><label for="cbdYear3" class="hide">생년</label> 
														<select name="cbdYear3" id="cbdYear3">
															<option value="">선택</option>
															<option value="2022">2022</option>
															<option value="2021">2021</option>
															<option value="2020">2020</option>
															<option value="2019">2019</option>
															<option value="2018">2018</option>
															<option value="2017">2017</option>
															<option value="2016">2016</option>
															<option value="2015">2015</option>
															<option value="2014">2014</option>
															<option value="2013">2013</option>
															<option value="2012">2012</option>
															<option value="2011">2011</option>
															<option value="2010">2010</option>
															<option value="2009">2009</option>
															<option value="2008">2008</option>
															<option value="2007">2007</option>
															<option value="2006">2006</option>
															<option value="2005">2005</option>
															<option value="2004">2004</option>
															<option value="2003">2003</option>
															<option value="2002">2002</option>
															<option value="2001">2001</option>
															<option value="2000">2000</option>
															<option value="1999">1999</option>
															<option value="1998">1998</option>
															<option value="1997">1997</option>
															<option value="1996">1996</option>
															<option value="1995">1995</option>
															<option value="1994">1994</option>
															<option value="1993">1993</option>
															<option value="1992">1992</option>
															<option value="1991">1991</option>
															<option value="1990">1990</option>
															<option value="1989">1989</option>
															<option value="1988">1988</option>
															<option value="1987">1987</option>
															<option value="1986">1986</option>
															<option value="1985">1985</option>
															<option value="1984">1984</option>
															<option value="1983">1983</option>
															<option value="1982">1982</option>
															<option value="1981">1981</option>
															<option value="1980">1980</option>
															<option value="1979">1979</option>
															<option value="1978">1978</option>
															<option value="1977">1977</option>
															<option value="1976">1976</option>
															<option value="1975">1975</option>
															<option value="1974">1974</option>
															<option value="1973">1973</option>
															<option value="1972">1972</option>
															<option value="1971">1971</option>
															<option value="1970">1970</option>
															<option value="1969">1969</option>
															<option value="1968">1968</option>
															<option value="1967">1967</option>
															<option value="1966">1966</option>
															<option value="1965">1965</option>
															<option value="1964">1964</option>
															<option value="1963">1963</option>
															<option value="1962">1962</option>
															<option value="1961">1961</option>
															<option value="1960">1960</option>
															<option value="1959">1959</option>
															<option value="1958">1958</option>
															<option value="1957">1957</option>
															<option value="1956">1956</option>
															<option value="1955">1955</option>
															<option value="1954">1954</option>
															<option value="1953">1953</option>
															<option value="1952">1952</option>
															<option value="1951">1951</option>
															<option value="1950">1950</option>
															<option value="1949">1949</option>
															<option value="1948">1948</option>
															<option value="1947">1947</option>
															<option value="1946">1946</option>
															<option value="1945">1945</option>
															<option value="1944">1944</option>
															<option value="1943">1943</option>
															<option value="1942">1942</option>
															<option value="1941">1941</option>
															<option value="1940">1940</option>
															<option value="1939">1939</option>
															<option value="1938">1938</option>
															<option value="1937">1937</option>
															<option value="1936">1936</option>
															<option value="1935">1935</option>
															<option value="1934">1934</option>
															<option value="1933">1933</option>
															<option value="1932">1932</option>
															<option value="1931">1931</option>
															<option value="1930">1930</option>
															<option value="1929">1929</option>
															<option value="1928">1928</option>
															<option value="1927">1927</option>
															<option value="1926">1926</option>
															<option value="1925">1925</option>
															<option value="1924">1924</option>
															<option value="1923">1923</option>
															<option value="1922">1922</option>
															<option value="1921">1921</option>
															<option value="1920">1920</option>
															<option value="1919">1919</option>
															<option value="1918">1918</option>
															<option value="1917">1917</option>
															<option value="1916">1916</option>
															<option value="1915">1915</option>
															<option value="1914">1914</option>
															<option value="1913">1913</option>
															<option value="1912">1912</option>
															<option value="1911">1911</option>
															<option value="1910">1910</option>
															<option value="1909">1909</option>
															<option value="1908">1908</option>
															<option value="1907">1907</option>
															<option value="1906">1906</option>
															<option value="1905">1905</option>
															<option value="1904">1904</option>
															<option value="1903">1903</option>
															<option value="1902">1902</option>
															<option value="1901">1901</option>
															<option value="1900">1900</option>
														</select> <span>년</span>
													</li>
													<li><label for="cbdMonth3" class="hide">월 선택</label> 
														<select name="cbdMonth3" id="cbdMonth3">
															<option value="">선택</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select> <span>월</span>
													</li>
													<li><label for="cbdDay3" class="hide">일 선택</label> 
														<select name="cbdDay3" id="cbdDay3">
															<option value="">선택</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
														</select> <span>일</span>
													</li>
												</ul> 
												<input type="hidden" name="childrenBirthDay3" id="childrenBirthDay3" value="">
											</div>
											<div class="birth_w clearfix childItem" style="display: none;">
												<span>자녀 4</span>
												<ul class="clearfix birth">
													<li><label for="cbdYear4" class="hide">생년</label> 
														<select name="cbdYear4" id="cbdYear4">
															<option value="">선택</option>
															<option value="2022">2022</option>
															<option value="2021">2021</option>
															<option value="2020">2020</option>
															<option value="2019">2019</option>
															<option value="2018">2018</option>
															<option value="2017">2017</option>
															<option value="2016">2016</option>
															<option value="2015">2015</option>
															<option value="2014">2014</option>
															<option value="2013">2013</option>
															<option value="2012">2012</option>
															<option value="2011">2011</option>
															<option value="2010">2010</option>
															<option value="2009">2009</option>
															<option value="2008">2008</option>
															<option value="2007">2007</option>
															<option value="2006">2006</option>
															<option value="2005">2005</option>
															<option value="2004">2004</option>
															<option value="2003">2003</option>
															<option value="2002">2002</option>
															<option value="2001">2001</option>
															<option value="2000">2000</option>
															<option value="1999">1999</option>
															<option value="1998">1998</option>
															<option value="1997">1997</option>
															<option value="1996">1996</option>
															<option value="1995">1995</option>
															<option value="1994">1994</option>
															<option value="1993">1993</option>
															<option value="1992">1992</option>
															<option value="1991">1991</option>
															<option value="1990">1990</option>
															<option value="1989">1989</option>
															<option value="1988">1988</option>
															<option value="1987">1987</option>
															<option value="1986">1986</option>
															<option value="1985">1985</option>
															<option value="1984">1984</option>
															<option value="1983">1983</option>
															<option value="1982">1982</option>
															<option value="1981">1981</option>
															<option value="1980">1980</option>
															<option value="1979">1979</option>
															<option value="1978">1978</option>
															<option value="1977">1977</option>
															<option value="1976">1976</option>
															<option value="1975">1975</option>
															<option value="1974">1974</option>
															<option value="1973">1973</option>
															<option value="1972">1972</option>
															<option value="1971">1971</option>
															<option value="1970">1970</option>
															<option value="1969">1969</option>
															<option value="1968">1968</option>
															<option value="1967">1967</option>
															<option value="1966">1966</option>
															<option value="1965">1965</option>
															<option value="1964">1964</option>
															<option value="1963">1963</option>
															<option value="1962">1962</option>
															<option value="1961">1961</option>
															<option value="1960">1960</option>
															<option value="1959">1959</option>
															<option value="1958">1958</option>
															<option value="1957">1957</option>
															<option value="1956">1956</option>
															<option value="1955">1955</option>
															<option value="1954">1954</option>
															<option value="1953">1953</option>
															<option value="1952">1952</option>
															<option value="1951">1951</option>
															<option value="1950">1950</option>
															<option value="1949">1949</option>
															<option value="1948">1948</option>
															<option value="1947">1947</option>
															<option value="1946">1946</option>
															<option value="1945">1945</option>
															<option value="1944">1944</option>
															<option value="1943">1943</option>
															<option value="1942">1942</option>
															<option value="1941">1941</option>
															<option value="1940">1940</option>
															<option value="1939">1939</option>
															<option value="1938">1938</option>
															<option value="1937">1937</option>
															<option value="1936">1936</option>
															<option value="1935">1935</option>
															<option value="1934">1934</option>
															<option value="1933">1933</option>
															<option value="1932">1932</option>
															<option value="1931">1931</option>
															<option value="1930">1930</option>
															<option value="1929">1929</option>
															<option value="1928">1928</option>
															<option value="1927">1927</option>
															<option value="1926">1926</option>
															<option value="1925">1925</option>
															<option value="1924">1924</option>
															<option value="1923">1923</option>
															<option value="1922">1922</option>
															<option value="1921">1921</option>
															<option value="1920">1920</option>
															<option value="1919">1919</option>
															<option value="1918">1918</option>
															<option value="1917">1917</option>
															<option value="1916">1916</option>
															<option value="1915">1915</option>
															<option value="1914">1914</option>
															<option value="1913">1913</option>
															<option value="1912">1912</option>
															<option value="1911">1911</option>
															<option value="1910">1910</option>
															<option value="1909">1909</option>
															<option value="1908">1908</option>
															<option value="1907">1907</option>
															<option value="1906">1906</option>
															<option value="1905">1905</option>
															<option value="1904">1904</option>
															<option value="1903">1903</option>
															<option value="1902">1902</option>
															<option value="1901">1901</option>
															<option value="1900">1900</option>
														</select> <span>년</span>
													</li>
													<li><label for="cbdMonth4" class="hide">월 선택</label> 
														<select name="cbdMonth4" id="cbdMonth4">
															<option value="">선택</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select> <span>월</span>
													</li>
													<li><label for="cbdDay4" class="hide">일 선택</label> 
													<select name="cbdDay4" id="cbdDay4">
															<option value="">선택</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
														</select> <span>일</span>
													</li>
												</ul> 
												<input type="hidden" name="childrenBirthDay4" id="childrenBirthDay4" value="">
											</div>
										</div>
									</li>
										
									<!--
								<li class="item">
									<strong class="t">자주이용하는장소</strong>
									<div class="cont">
										<ul class="clearfix ck">
											
											<li><input type="checkbox" name="favoriteArea" id="favoriteArea1" value="1"   /><label for="favoriteArea1">세종대극장</label></li>
											
											<li><input type="checkbox" name="favoriteArea" id="favoriteArea2" value="2"   /><label for="favoriteArea2">세종M씨어터</label></li>
											
											<li><input type="checkbox" name="favoriteArea" id="favoriteArea3" value="8"   /><label for="favoriteArea3">세종체임버홀</label></li>
											
											<li><input type="checkbox" name="favoriteArea" id="favoriteArea4" value="3"   /><label for="favoriteArea4">세종미술관1관</label></li>
											
											<li><input type="checkbox" name="favoriteArea" id="favoriteArea5" value="9"   /><label for="favoriteArea5">세종미술관2관</label></li>
											
											<li><input type="checkbox" name="favoriteArea" id="favoriteArea6" value="4"   /><label for="favoriteArea6">광화랑</label></li>
											
											<li><input type="checkbox" name="favoriteArea" id="favoriteArea7" value="5"   /><label for="favoriteArea7">야외공간</label></li>
											
											<li><input type="checkbox" name="favoriteArea" id="favoriteArea8" value="6"   /><label for="favoriteArea8">세종예술아카데미</label></li>
											
										</ul>
									</div>
									<input type="hidden" name="favoriteAreaArr" id="favoriteAreaArr" value="" />
								</li>
								-->
								</ul>
							</div>
							<div class="agree_w f18">
								<dl>
									<dt class="bul-dot b">세종문화회관에서 제공하는 정보를 메일로 받아보시겠습니까?</dt>
									<dd class="ck_com">
										<input type="radio" name="emailFlag" id="emailFlag1" value="Y"> <label for="emailFlag1">예</label> <input type="radio" name="emailFlag" id="emailFlag2" value="N" checked="checked"> <label for="emailFlag2">아니오</label>
									</dd>
								</dl>
								<dl>
									<dt class="bul-dot b">세종문화회관에서 제공하는 정보를 SMS 서비스로 받아보시겠습니까?</dt>
									<dd class="ck_com">
										<input type="radio" name="smsFlag" id="smsFlag1" value="Y"> <label for="smsFlag1">예</label> <input type="radio" name="smsFlag" id="smsFlag2" value="N" checked="checked"> <label for="smsFlag2">아니오</label>
									</dd>
								</dl>
							</div>
							<div class="bbs-btn_w clearfix tac flr mt">
								<span class="fl">
									<button class="bbs-btn-st2 bg-black_r" onclick="memberOut();return false;">회원탈퇴</button>
								</span> <span class="fr">
									<button class="bbs-btn-st2 bg-purple3" onclick="formCheck();return false;">수정</button>
									<button class="bbs-btn-st2 bg-black_r" onclick="history.back();return false;">취소</button>
								</span>
							</div>
						</article>
						
						<div class="allmenu_bg" style="display: none;">
							<div class="modal_w wide2 transform" id="nameModalItem" tabindex="0">
								<article class="pop_com pop_confirm">
									<div class="tit-st2">
										<h2 class="tit-caution">이름 변경</h2>
										<button type="button" class="layerClose close-st1">CLOSE</button>
									</div>
									<div class="cont member_join">
										<ul class="sect">
											<li class="item"><label for="name" class="t">이름 <span class="color-purple">*</span></label>
												<div>
													<input type="text" value="유원호" name="memberName" id="name" readonly="">
													<!-- <button class="bg-black" style="height:60px; width:80px;" onclick="javascript:nameModalClose();return false;">취소</button> -->
													<span class="txt" style="display: block; margin: 10px 0 20px;">개명 혹은 SNS 간편가입의 경우 휴대폰 인증을 통해 이름을 변경하실 수 있습니다.</span>
													<button class="bg-black" id="nameModal" style="height: 60px; width: 100%;" onclick="javascript:checkPlusPopup();return false;">본인명의 휴대폰으로 인증</button>
													<span class="txt" style="display: block; margin: 10px 0 0;">※ 이동통신사 및 신용평가기관 모두 변경할 이름으로 등록 후 변경하실 수 있습니다.</span>
												</div>
											</li>
										</ul>
									</div>
								</article>
							</div>
							
							<div class="modal_w wide2 transform" id="accountModalItem" tabindex="0">
								<article class="pop_com pop_confirm">
									<div class="tit-st2">
										<h2 class="tit-caution">환불 계좌 인증</h2>
										<button type="button" class="layerClose close-st1">CLOSE</button>
									</div>
									<div class="cont member_join">
										<ul class="sect">
											<li class="item"><label for="name" class="t">예금주</label>
												<div>유원호</div> <input type="hidden" name="ownerNm" id="ownerNm" value="유원호"></li>
											<li class="item"><label for="bankCode" class="t">은행명</label>
												<div>
													<select id="bankCode" name="bankCode" class="frmselect">
														<option value="" selected="">선택</option>
														<option value="02">산업은행</option>
														<option value="03">기업은행</option>
														<option value="04">국민은행</option>
														<option value="07">수협</option>
														<option value="11">농협중앙회</option>
														<option value="12">단위농협</option>
														<option value="16">축협중앙회</option>
														<option value="20">우리은행</option>
														<option value="23">제일은행</option>
														<option value="27">한미은행</option>
														<option value="31">대구은행</option>
														<option value="32">부산은행</option>
														<option value="34">광주은행</option>
														<option value="35">제주은행</option>
														<option value="37">전북은행</option>
														<option value="39">경남은행</option>
														<option value="45">새마을금고</option>
														<option value="48">신협</option>
														<option value="50">상호저축</option>
														<option value="54">HSBC</option>
														<option value="55">도이치은행</option>
														<option value="71">우체국</option>
														<option value="81">하나은행</option>
														<option value="88">신한은행</option>
														<option value="89">케이뱅크</option>
														<option value="90">카카오뱅크</option>
													</select>
												</div></li>
											<li class="item"><label for="accountNo" class="t">계좌번호</label>
												<div>
													<input type="text" name="accountNo" id="accountNo">
													<p class="txt">계좌번호는 -를 제외한 숫자의 연속으로 기입</p>
												</div></li>
										</ul>
										<p class="mt20">
											[유의사항]<br> - 환불계좌는 본인 명의의 계좌만 등록/변경 가능합니다.<br> - 개명 등의 사유로 회원이름과 예금주가 일치하지 않은 경우, 본인인증 후 이름을 변경할 수 있습니다.<br> - 본인명의의 계좌가 없는 경우, 직계가족 명의의 계좌로 환불이 가능합니다.<br> &nbsp;&nbsp;타인계좌 환불동의서 및 제출서류를 첨부하여 ticket@sejongpac.or.kr로 보내주시기 바랍니다.<br> ※ 제출서류 : 타인계좌환불동의서, 가족관계확인서, 예금주 통장사본, 예매자 및 예금주 신분증 각 1부<br> - 기타 문의사항은 고객센터로 문의하시기 바랍니다. (02-399-1000, 오전9시 ~ 오후8시)
										</p>
										<div class="bbs-btn_w clearfix tac flr mt">
											<button class="bbs-btn-st2 bg-purple3" onclick="javascript:checkAccount();return false;">조회</button>
											<!-- <button class="bbs-btn-st2 bg-black_r" onclick="javascript:accountModalClose()">취소</button> -->
											<input type="button" value="취소" class="layerClose bbs-btn-st2 bg-black_r" style="margin-left: 1px;">
										</div>
									</div>
								</article>
							</div>
						</div>
					</form>
					
					<form name="form_chk" method="post">
						<input type="hidden" name="m" value="checkplusSerivce">
						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
						<input type="hidden" name="EncodeData" value="AgAFRzY2OTlRSJKgxkoJiBV9PKgXxkVf46Km8h/ftwSa/7jBk598sEGBS6kaH0geIGMa2q9CDDCTXGOxZ9e14WVJQFZLRNW33HwykATjehFJm0QwIxuluvvIlxskdM9vQf9PjhUy0Oj0uDdEFK1at7tkMw2H1EokzyRFrB6Ks+Uih/F2LJOeKw2LOz3OUDFTHyTpye1XhBnoXfXPGhfd1T2wOU1+7twHSHFNeR6vcAbIOOaCNN7oK0ijKdknCO51wvKQud9DmmDjONDxHzTi6TeTVrYOywm7lHuuhLpELq+dmP0WDDiCrE/L5/LtaCcwFFZtduL9+UE88oTVTblEAdmUBkk4Y5h80FEhXpif7mYVKlLYHulM7WgAJtH9QHqwxJQHcqXov+jAlNlp7XPC+eBtWRmdMNejai283N+uN8CdDjXVEfbE7SFsPZKxI2vTsbZbBCoydxcioat6oBVDdnYbQf5GXC1YAoXtQNgRpaL06lbekJ9Pmg==">
						<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
					</form>
					
					<input type="hidden" id="memberNo" value="2299913564"> <input type="hidden" id="userId" value="ywh080">
					<script>
						function nameModalClose() {
							$(this).closest('.modal_w').hide();
							$('.allmenu_bg').hide();
						}

						function accountModalClose() {
							$("#accountModalItem").hide();
							$('.allmenu_bg').hide();
						}

						function checkPlusPopup() {
							window.open('','checkPluspopupChk','width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
							document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
							document.form_chk.target = "checkPluspopupChk";
							document.form_chk.submit();
						}

						function setAuthIn(dupInfo, name, birth, gender, cell) {
							var memberNo = $("#memberNo").val();
							var userId = $("#userId").val();

							var params = {'memberName' : name};

							$.ajax({
								url : '/portal/member/user/memberNameUpdate.json',
								type : "POST",
								dataType : 'json',
								data : params,
								async : false,
								success : function(result) {
									if (result.resultCode == 'success') {
										if (name == '유원호') {
											alert("이름 변동 사항이 없습니다.");
										} else {
											alert("인증 되었습니다.");
										}
										location.reload();
									} else {
										alert("오류가 발생했습니다.")
									}
								}
							});
						}

						function checkAccount() {
							var bankCode = $("select[name='bankCode']").val();
							var accountNo = $("input[name='accountNo']").val();
							var ownerNm = $("input[name='ownerNm']").val();

							if (bankCode == "" || accountNo == "" || ownerNm == "") {
								alert("은행명, 예금주명, 계좌번호를 확인해주세요.");
								return;
							}

							if (!$.isNumeric(accountNo)) {
								alert('계좌번호는 숫자만 입력해주세요.');
								$("input[name='accountNo']").val('');
								return;
							}

							var params = {
								'bankCode' : bankCode,
								'accountNo' : accountNo,
								'ownerNm' : ownerNm
							};

							$.ajax({
								url : '/portal/member/user/checkAccount.json',
								type : "POST",
								dataType : 'json',
								data : params,
								success : function(result) {
									if (result.resultCode == 'success') {
										alert("계좌가 인증되었습니다.");
										location.reload();
									} else if (result.resultCode == 'fail') {
										alert("계좌정보 확인 후 다시 시도해주세요.");
									} else {
										alert("오류가 발생했습니다.")
									}
								}
							});
						}

						function goPopup() {
							// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrCoordUrl.do)를 호출하게 됩니다.
							var pop = window.open("/juso/popup/jusoPopup.jsp", "pop","width=570,height=420, scrollbars=yes, resizable=yes");
						}

						function jusoCallBack(roadFullAddr, roadAddrPart1,
								addrDetail, roadAddrPart2, engAddr, jibunAddr,
								zipNo, admCd, rnMgtSn, bdMgtSn, detBdNmList,
								bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn,
								udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm,
								lnbrSlno, emdNo, entX, entY) {

							$("#memberZipCd").val(zipNo);
							$("#memberAddr1").val(roadFullAddr);
							$("#memberAddr2").val(addrDetail);
						}

						function registUserAuth() {
							var tel1 = $("#memberCel1").val();
							var tel2 = $("#memberCel2").val();
							var tel3 = $("#memberCel3").val();
							var tel = tel1 + '-' + tel2 + '-' + tel3;

							if (tel1 == "") {
								alert("전화번호를 입력해 주세요.");
								$("#tel1").focus();
								return false;
							}
							if (tel2 == "") {
								alert("전화번호를 입력해 주세요.");
								$("#tel2").focus();
								return false;
							}
							if (tel3 == "") {
								alert("전화번호를 입력해 주세요.");
								$("#tel3").focus();
								return false;
							}

							$.post("/portal/singl/sms/updateUserAuth.json", {
								"utel" : tel
							}, function(data) {
								if (data.resultCode == 'success') {
									alert('인증 번호를 발송했습니다.');
									$("input[name='smsAuthNumber']").val('');
									$("input[name='smsAuthNumber']").focus();
									$('#serverAuth').val(data.serverAuth);
								} else {
									alert(data.resultMessage);
								}
							});
						}

						function formCheck() {

							var form = $("#board")[0];
							var v = new MiyaValidator(form);

							v.add("password", {
								required : true
							});
							v.add("password", {
								pattern : "^([a-zA-Z!@#$%^&*()_+=<>?0-9]{8,20})$",
								message : "영문,숫자,특수문자(!@#$%^) 조합 8~20자로 입력해 주세요."
							});
							v.add("repassword", {
								required : true
							});
							v.add("password", {
								match : "repassword",
								message : "비밀번호가 일치하지 않습니다."
							});

							v.add("birthdayYear", {
								required : true
							});

							v.add("birthdayMonth", {
								required : true
							});

							v.add("birthdayDay", {
								required : true
							});

							v.add("jobType", {
								required : true
							});

							v.add("memberZipCd", {
								required : true
							});

							v.add("memberEmail1", {
								required : true
							});

							v.add("memberEmail2", {
								required : true
							});

							v.add("memberCel1", {
								required : true
							});

							v.add("memberCel2", {
								required : true
							});

							v.add("memberCel3", {
								required : true
							});

							var result = v.validate();
							if (!result) {
								alert(v.getErrorMessage());
								v.getErrorElement().focus();
								return;
							}

							if ($("#cbdYear").val() != "" && $("#cbdMonth").val() != "" && $("#cbdDay").val() != "") {
								$("#childrenBirthDay1").val($("#cbdYear").val() + $("#cbdMonth").val() + $("#cbdDay").val());
							}
							if ($("#cbdYear2").val() != "" && $("#cbdMonth2").val() != "" && $("#cbdDay2").val() != "") {
								$("#childrenBirthDay2").val(
										$("#cbdYear2").val() + $("#cbdMonth2").val() + $("#cbdDay2").val());
							}
							if ($("#cbdYear3").val() != "" && $("#cbdMonth3").val() != "" && $("#cbdDay3").val() != "") {
								$("#childrenBirthDay3").val($("#cbdYear3").val() + $("#cbdMonth3").val() + $("#cbdDay3").val());
							}
							if ($("#cbdYear4").val() != "" && $("#cbdMonth4").val() != "" && $("#cbdDay4").val() != "") {
								$("#childrenBirthDay4").val($("#cbdYear4").val() + $("#cbdMonth4").val() + $("#cbdDay4").val());
							}

							if ($("#childrenCnt").val() > 0) {
								if ($("#childrenBirthDay1").val() == "") {
									alert("자녀의 생년월일을 선택해 주세요.");
									$("#cbdYear").focus();
									return;
								}
							}

							if ($("#childrenCnt").val() > 1) {
								if ($("#childrenBirthDay2").val() == "") {
									alert("자녀의 생년월일을 선택해 주세요.");
									$("#cbdYear2").focus();
									return;
								}
							}

							if ($("#childrenCnt").val() > 2) {
								if ($("#childrenBirthDay3").val() == "") {
									alert("자녀의 생년월일을 선택해 주세요.");
									$("#cbdYear3").focus();
									return;
								}
							}

							if ($("#childrenCnt").val() > 3) {
								if ($("#childrenBirthDay4").val() == "") {
									alert("자녀의 생년월일을 선택해 주세요.");
									$("#cbdYear4").focus();
									return;
								}
							}

							if (!confirm('수정하시겠습니까?')) {
								return;
							}

							if ($("#birthdayYear").val() != "" && $("#birthdayMonth").val() != "" && $("#birthdayDay").val() != "") {
								$("#birthDay").val(
										$("#birthdayYear").val() + $("#birthdayMonth").val() + $("#birthdayDay").val());
								$("#birthMonth").val($("#birthdayMonth").val() + $("#birthdayDay").val());
							}

							if ($("#memberEmail1").val() != "" && $("#memberEmail2").val() != "") {
								$("#memberEmail").val(
										$("#memberEmail1").val() + "@" + $("#memberEmail2").val());
							}

							if ($("#memberCel1").val() != "" && $("#memberCel2").val() != "" && $("#memberCel3").val() != "") {
								$("#memberCel").val(
										$("#memberCel1").val() + "-" + $("#memberCel2").val() + "-" + $("#memberCel3").val());
								// 휴대폰 번호가 수정 된 경우 인증번호 체크
								if ($("#memberCel").val() != $("#memberCelOri").val()) {
									var serverAuth = $("#serverAuth").val();
									if (serverAuth == "") {
										alert('휴대폰인증을 해주세요.');
										return;
									}
									$("#changeCel").val("1");
								}
							}

							if ($("#memberTel1").val() != "" && $("#memberTel2").val() != "" && $("#memberTel3").val() != "") {
								$("#memberTel").val($("#memberTel1").val() + "-" + $("#memberTel2").val() + "-" + $("#memberTel3").val());
							}

							if ($("#weddingDate1").val() != "" && $("#weddingDate2").val() != "" && $("#weddingDate3").val() != "") {
								$("#weddingDate").val($("#weddingDate1").val() + $("#weddingDate2").val() + $("#weddingDate3").val());
							}

							form.submit();
							return;

						}

						function memberOut() {
							location.href = '/portal/myPage/acntMng/memberOut.do?menuNo=' + 200168;
						}

						$("#nameModal").on('click', function() {
							$(".allmenu_bg").show();
							$(".allmenu_bg").find('#nameModalItem').show();
							return false;
						});

						$("#accountModal").on('click', function() {
							$(".allmenu_bg").show();
							$(".allmenu_bg").find('#accountModalItem').show();
							return false;
						});

						$('.layerClose').on('click', function() {
							$(this).closest('.modal_w').hide();
							$('.allmenu_bg').hide();
						});
					</script>
				</div>
			</div>
		</div>
		<!-- #cont -->
		
		<!-- footer Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- footer End -->
	</section>
</body>
</html>