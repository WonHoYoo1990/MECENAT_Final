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


		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->

		<!-- 베너  Start -->
		<section id="sub_visual">
			<div class="bg_w">
				<div class="bg" style="background-image: url(./resources/sejongpac/static/commons/img/member/signupBackground.jpg); transform: translate(-19.9989px, 9.99961px) scale(1.1);"></div>
			</div>
			<h2 class="sub-t">
				<strong class="ani" style="opacity: 1;">회원가입</strong>
			</h2>
		</section>
		<!-- 배너 End -->

		<!-- DropDown List Start -->
		<div id="depth_w" class="">
			<div class="inner">
				<ul class="clearfix dot dep1 li2">
					<li class="home"><span><span>HOME</span></span></li>
					<li>
						<div class="rel">
							<a href="#"><span>통합회원서비스</span></a>
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
							<a href="#"><span>회원가입</span></a>
							<ul class="depth" style="display: none;">
								<li><a href="/portal/main/contents.do?menuNo=200099"><span>서비스소개</span></a></li>
								<li><a href="loginForm.me"><span>로그인</span></a></li>
								<li><a href="signupForm.me"><span>회원가입</span></a></li>
								<li><a href="/portal/member/user/idSearch.do?menuNo=200145"><span>아이디 찾기</span></a></li>
								<li><a href="/portal/member/user/findPw.do?menuNo=200146"><span>패스워드 찾기</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200148"><span>개인정보처리방침</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200150"><span>이메일무단수집거부</span></a></li>
								<li><a href="/portal/main/contents.do?menuNo=200164"><span>고객서비스헌장</span></a></li>
								<li><a href="/portal/singl/siteMap/list.do?menuNo=200162"><span>사이트 맵</span></a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- DropDown List End -->
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
					<script src="./resources/sejongpac/static/commons/js/validUtil.js"></script>
					<script src="./resources/sejongpac/static/jslibrary/miya_validator.js"></script>
					
					<script>
						function formCheck() {
							var form = $("#board")[0];
							var v = new MiyaValidator(form);
							var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@#$%&\\\=\(\'\"]/gi;
							
							var memberAddr1 =  $("#memberAddr1").val();
							var memberAddr2 =  $("#memberAddr2").val();
							var address =  memberAddr1 + memberAddr2;
							
							$("#address").val(address);
							

							if (regExp.test($("#userName").val())) {
								alert("이름에 특수문자를 입력 할수 없습니다.");
								$('#userName').focus();
								return;
							}

							if ($("#chkuserIdYN").val() != 'Y') {
								alert("아이디 중복체크를 하셔야 합니다.");
								$('#userId').focus();
								return;
							}

							if ($("#chkuserEmailYN").val() != 'Y') {
								alert("이메일 중복체크를 하셔야 합니다.");
								$('#email').focus();
								return;
							}

							v.add("userName", {
								required : true
							});
							v.add("userId", {
								pattern : "^[a-zA-Z0-9]{4,20}$",
								message : "아이디는 특수문자를 제외한 4~20자입니다."
							});
							v.add("userPwd", {
								required : true
							});
							v.add("userPwd",{
								pattern : "^([a-zA-Z!@#$%^&*()_+=<>?0-9]{8,20})$",
								message : "영문,숫자,특수문자(!@#$%^) 조합 8~20자로 입력해 주세요."
							});
							v.add("reuserPwd", {
								required : true
							});
							v.add("userPwd", {
								match : "reuserPwd",
								message : "비밀번호가 일치하지 않습니다."
							});

							v.add("memberZipCd", {
								required : true
							});

							if (!validUtil.checkEmail($("input[name='email']")[0])) {
								return false;
							}
							
							var result = v.validate();
							
							if (!result) {
								alert(v.getErrorMessage());
								v.getErrorElement().focus();
								return;
							}

							var tel1 = $("#tel1").val();
							var tel2 = $("#tel2").val();
							var tel3 = $("#tel3").val();
							var tel = tel1 + '-' + tel2 + '-' + tel3;
							
							$('#userPhone').val(tel);

							var birthdayYear = $('[name=birthdayYear]').val();
							var birthdayMonth = lpad($('[name=birthdayMonth]').val(), 2, '0');
							var birthdayDay = lpad($('[name=birthdayDay]').val(), 2, '0');
							var regNoDate = birthdayYear + birthdayMonth + birthdayDay;
							$("#regNoDate").val(regNoDate);

							var dupinfo = "";
							var extCode = "";
							var extID = "";
							if (extCode != "") {
								extID = "";
								dupinfo = extCode + "_" + extID;
							} else {
								dupinfo = "S_" + $("#userId").val() + "_" + tel;
							}
							
							$("#dupinfo").val(dupinfo);
							$("#extId").val(extID);

							if (!confirm('등록 하시겠습니까?')) {
								return fasle;
							}

							if ($("#tel1").val() != "" && $("#tel2").val() != "" && $("#tel3").val() != "") {
								$("#userPhone").val($("#tel1").val() + "-"+ $("#tel2").val() + "-"+ $("#tel3").val());
							}

							form.submit();
						}

						function registUserAuth() {
							var tel1 = $("#tel1").val();
							var tel2 = $("#tel2").val();
							var tel3 = $("#tel3").val();
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

						}

						// 아이디 중복 체크
						$(function() {
							$("#userId").change(function() {
								$("#chkuserIdYN").val("N");
							});
							
							$(".chkuserId").click(
									function() {
										var id = $("#userId").val();
										
										if (id == '') {
											alert("아이디를 입력해주세요.");
											$('#userId').focus();
											return false;
										}

										if (!id.match('^[a-zA-Z0-9]{4,20}$')) {
											alert('아이디는 특수문자를 제외한 영문, 숫자 조합 4~20자로 사용 가능합니다.');
											$('#userId').focus();
											return false;
										}
										
										$.ajax({
											url : "checkDupId.me",
											data : {
												checkId : id
											},
											success : function(result) {
												if (result == "NNNNN") { 
													alert("아이디가 중복됩니다.");
													$("#chkuserIdYN").val("N");
													$('#userId').focus();
													return false;
												}
												alert("사용 가능한 아이디입니다.");
												$("#chkuserIdYN").val("Y");
											},
											error : function() {
												console.log("통신 실패!")
											}
										})
									});
						});
						
						// 이메일 중복 체크
						$(function() {
							$("#email").change(function() {
								$("#chkuserEmailYN").val("N");
							});
							
							$(".chkuserEmail").click(function() {
								var email = $("#email").val();
								
								if (email == '') {
									alert("이메일을 입력해주세요.");
									$('#email').focus();
									return false;
								}

								if (!email.match('^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')) {
									alert('이메일은 ex) abcd@mecenat.com 의 형식에 맞춰서 작성해 주세요.');
									$('#email').focus();
									return false;
								}
								
								$.ajax({
									url : "checkDupEmail.me",
									data : {
										checkEmail : email
									},
									success : function(result) {
										if (result == "NNNNN") { 
											alert("이메일이 중복됩니다.");
											$("#chkuserEmailYN").val("N");
											$('#email').focus();
											return false;
										}
										alert("사용 가능한 이메일입니다.");
										$("#chkuserEmailYN").val("Y");
									},
									error : function() {
										console.log("통신 실패!")
									}
								})
							});
						});
					</script>

					<!-- {(joinExtCode,K)(joinExtID,1234528163)(joinExtEmail,hojin0703@nate.com)(joinExtName,김호진)(joinExtBirthDay,)(joinExtGender,)} -->
					<form name="board" id="board" method="post" action="signup.me">
						<input type="hidden" id="menuNo" name="menuNo" value="200144"> 
						<input type="hidden" name="extId" id="extId" value=""> 
						<input type="hidden" name="extCode" id="extCode" value=""> 
						<input type="hidden" id="stipulationType" name="stipulation_type" value=""> 
						<input type="hidden" id="effectiveDate" name="effective_date" value=""> 
						<input type="hidden" id="joinType" name="joinType" value=""> 
						<input type="hidden" name="regIdCheckFl" value="N"> 
						<input type="hidden" name="joinTypeCode" value="0001"> 
						<input type="hidden" name="receiveSms" value=""> 
						<input type="hidden" name="receivemail" value="">
						<input type="hidden" name="regNoDate" id="regNoDate" value=""> 
						<input type="hidden" name="dupinfo" id="dupinfo" value=""> 
						<input type="hidden" name="siteType" id="siteType" value="">
						<input type="hidden" name="address" id="address">

						<article class="member_join inner member_com">
							<div class="group">
								<h3 class="tit-st4 rel">
									기본정보입력 <span class="ab f16 color-purple">* 필수 입력 값</span>
								</h3>
								<ul class="sect">
									<li class="item"><label for="userName" class="t">이름 <span class="color-purple">*</span></label>
										<div class="cont">
											<input type="text" name="userName" id="userName" value=""> <span class="txt ml">예매 등 서비스의 원활한 이용을 위해서 반드시 본명을 입력해주시기 바랍니다.</span>
										</div>
									</li>
									<li class="item"><label for="userId" class="t">ID <span class="color-purple">*</span></label>
										<div class="cont ck_id">
											<input type="text" value="" name="userId" id="userId"> 
											<input type="hidden" name="chkuserIdYN" id="chkuserIdYN" value="N">
											<button type="button" class="bg-black chkuserId">중복확인</button>
											<span class="txt ml">특수문자를 제외한 영문, 숫자 4~20자 이내</span>
										</div>
									</li>
									<li class="item">
										<label for="userPwd" class="t">비밀번호 <span class="color-purple">*</span></label>
										<div class="cont">
											<input type="password" name="userPwd" id="userPwd"> <span class="txt ml">영문, 숫자, 특수문자 중 2종류 이상 8~12자 이내</span>
										</div>
									</li>
									<li class="item"><label for="reuserPwd" class="t">비밀번호 확인 <span class="color-purple">*</span></label>
										<div class="cont">
											<input type="password" name="reuserPwd" id="reuserPwd"> <span class="txt ml">확인을 위해 한번 더 입력하시기 바랍니다.</span>
										</div>
									</li>
									<li class="item"><strong class="t">생년월일 <span class="color-purple">*</span></strong>
										<div class="cont">
											<div class="birth_w clearfix">
												<ul class="clearfix birth">
													<li><label for="year" class="hide">연도 선택</label> 
														<select name="birthdayYear" id="year">
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
														</select><span>년</span>
													</li>
													<li><label for="month" class="hide">월 선택</label> 
														<select name="birthdayMonth" id="month">
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select> <span>월</span>
													</li>
													<li><label for="day" class="hide">일 선택</label> 
														<select name="birthdayDay" id="day">
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
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
										</div>
									</li>
									<li class="item"><strong class="t">주소 <span class="color-purple">*</span></strong>
										<div class="cont">
											<ul class="add">
												<li class="clearfix a1">
													<div class="zipcode">
														<label for="memberZipCd" class="hide">우편번호</label> <input type="text" name="memberZipCd" id="memberZipCd" value="">
														<button id="addrBtn" type="button" class="bg-black" title="새창으로 열립니다." onclick="findAddr()">우편번호 찾기</button>
													</div>
												</li>
												<li class="clearfix a2">
													<span class="l"> <label for="memberAddr1" class="hide">주소</label> <input type="text" name="memberAddr1" id="memberAddr1" value=""></span> 
													<span class="r"> <label for="memberAddr2" class="hide">나머지 주소</label> <input type="text" name="memberAddr2" id="memberAddr2" value="" class="long">
													<input type="hidden" name="memberAddr" id="memberAddr" value="" class="long">
													</span>
												</li>
											</ul>
											<script>
												// 주소 찾기 API
												function findAddr(){
													new daum.Postcode({
												        oncomplete: function(data) {
												        	console.log("data : "+data);
												            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
												            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
												            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.

												            var roadAddr = data.roadAddress; // 도로명 주소 변수
												            var jibunAddr = data.jibunAddress; // 지번 주소 변수
												            var zoneCode = data.zoneCode; // zoneCode??
												           
												            // 우편번호와 주소 정보를 해당 필드에 넣는다.
												            document.getElementById('memberZipCd').value = data.zonecode;
												            if(roadAddr !== ''){
												                document.getElementById("memberAddr1").value = roadAddr;
												            } 
												            else if(jibunAddr !== ''){
												                document.getElementById("memberAddr1").value = jibunAddr;
												            }
												        }
												    }).open();
												}
											</script>
										</div>
									</li>
									<li class="item"><strong class="t">이메일 <span class="color-purple">*</span></strong>
										<div class="cont ck_email" >
											<ul class="memberEmail clearfix">
												<li class="e1"><label for="email" class="hide">이메일 아이디와 주소</label> 
													<input type="text" name="email" id="email" value="">
													<input type="hidden" name="chkuserEmailYN" id="chkuserEmailYN" value="N">
													<button type="button" class="bg-black chkuserEmail">중복확인</button>
												</li>
											</ul>
										</div></li>
									<li class="item"><strong class="t">휴대폰 <span class="color-purple">*</span></strong>
										<div class="cont">
											<div class="tel_w">
												<ul class="clearfix tel">
													<li><label for="tel1" class="hide">휴대폰 앞</label> 
														<select name="tel1" id="tel1">
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
														</select>
													</li>
													<li><label for="tel2" class="hide">휴대폰 중간</label> <input type="text" name="tel2" id="tel2" class="small" maxlength="4" value="" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"></li>
													<li><label for="tel3" class="hide">휴대폰 끝</label> <input type="text" name="tel3" id="tel3" class="small" maxlength="4" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"></li>
												</ul>
												<input type="hidden" name="userPhone" id="userPhone" value="">
											</div>
										</div>
									</li>
								</ul>
							</div>
							<br><br>
							<div class="bbs-btn_w clearfix tac">
								<a href="javascript:formCheck();" class="bbs-btn-st2 bg-purple3">등록</a> <a href="index.jsp" class="bbs-btn-st2 bg-black_r">취소</a>
							</div>
						</article>
					</form>
					<script>
						function isDate(dayStr) {
							var valid = false;
							if (dayStr.search(/\d{4}-(0[1-9]|1[0-2])-([0-3][0-9])/) == 0) {
								var arrDay = dayStr.split("-");
								var year = parseInt(arrDay[0]);
								var month = parseInt(arrDay[1].replace(/^0(\d)/g, "$1"));
								var day = parseInt(arrDay[2].replace(/^0(\d)/g,"$1"));
								var d = new Date(year, month - 1, day);
								if (d.getMonth() == month - 1 && d.getDate() == day)
									valid = true;
							}
							return valid;
						}

						function lpad(val, padLength, padString) {
							while (val.length < padLength) {
								val = padString + val;
							}
							return val;
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