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
		<jsp:include page="../common/header2.jsp" />
		<!-- Header End -->

		<!-- 베너  Start -->
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

							// 부모님 동의
							if (isDate($('[name=birthdayYear]').val()
									+ '-'
									+ lpad($('[name=birthdayMonth]').val(), 2,
											'0')
									+ '-'
									+ lpad($('[name=birthdayDay]').val(), 2,
											'0'))) {
								if (isKid($('[name=birthdayYear]').val()
										+ ''
										+ lpad($('[name=birthdayMonth]').val(),
												2, '0')
										+ ''
										+ lpad($('[name=birthdayDay]').val(),
												2, '0'))) {
									var parentName = $('#parentName').val()
											.trim();
									var parentDupinfo = $('#parentDupinfo')
											.val().trim();
									var parentBirthday = $('#parentBirthday')
											.val().trim();
									if (parentName == "" || parentDupinfo == ""
											|| parentBirthday == "") {
										alert("만 14세 미만의 어린이는 보호자 동의가 필요합니다.");
										return;
									}
								}
							}

							v.add("genderFlag", {
								required : true
							});
							v.add("memberZipCd", {
								required : true
							});

							if (!validUtil.checkEmail($("input[name='email']")[0])) {
								return false;
							}
							
							var serverAuth = $("#serverAuth").val();
							if (serverAuth == "") {
								alert('휴대폰인증을 해주세요.');
								return;
							}


							if ($('#vodTextDistYn').is(":checked") != false) {
								$('#ctsId').val('');
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
							$('#memberCel').val(tel);

							var birthdayYear = $('[name=birthdayYear]').val();
							var birthdayMonth = lpad($('[name=birthdayMonth]')
									.val(), 2, '0');
							var birthdayDay = lpad($('[name=birthdayDay]')
									.val(), 2, '0');
							var regNoDate = birthdayYear + birthdayMonth
									+ birthdayDay;
							$("#regNoDate").val(regNoDate);

							var dupinfo = "";
							var extCode = "";
							var extID = "";
							if (extCode != "") {
								extID = "";
								dupinfo = extCode + "_" + extID;
							} else {
								dupinfo = "S_" + $("#userId").val() + "_"
										+ tel;
							}
							$("#dupinfo").val(dupinfo);
							$("#extId").val(extID);


							if ($("#cbdYear").val() != ""
									&& $("#cbdMonth").val() != ""
									&& $("#cbdDay").val() != "") {
								$("#childrenBirthDay1").val(
										$("#cbdYear").val()
												+ $("#cbdMonth").val()
												+ $("#cbdDay").val());
							}
							if ($("#cbdYear2").val() != ""
									&& $("#cbdMonth2").val() != ""
									&& $("#cbdDay2").val() != "") {
								$("#childrenBirthDay2").val(
										$("#cbdYear2").val()
												+ $("#cbdMonth2").val()
												+ $("#cbdDay2").val());
							}
							if ($("#cbdYear3").val() != ""
									&& $("#cbdMonth3").val() != ""
									&& $("#cbdDay3").val() != "") {
								$("#childrenBirthDay3").val(
										$("#cbdYear3").val()
												+ $("#cbdMonth3").val()
												+ $("#cbdDay3").val());
							}
							if ($("#cbdYear4").val() != ""
									&& $("#cbdMonth4").val() != ""
									&& $("#cbdDay4").val() != "") {
								$("#childrenBirthDay4").val(
										$("#cbdYear4").val()
												+ $("#cbdMonth4").val()
												+ $("#cbdDay4").val());
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

							if (!confirm('등록 하시겠습니까?')) {
								return fasle;
							}

							if ($("#memberTel1").val() != ""
									&& $("#memberTel2").val() != ""
									&& $("#memberTel3").val() != "") {
								$("#userPhone").val($("#memberTel1").val() + "-"
												+ $("#memberTel2").val() + "-"
												+ $("#memberTel3").val());
							}

							if ($("#weddingDate1").val() != ""
									&& $("#weddingDate2").val() != ""
									&& $("#weddingDate3").val() != "") {
								$("#weddingDate").val(
										$("#weddingDate1").val()
												+ $("#weddingDate2").val()
												+ $("#weddingDate3").val());
							}

							form.submit();
						}

						function goPopup() {
							var pop = window.open(
											"/juso/popup/jusoPopup.jsp", "pop",
											"width=570,height=420, scrollbars=yes, resizable=yes");
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

						function checkPlusPopup() {
							window.open('',
										'checkPluspopupChk',
										'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
							document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
							document.form_chk.target = "checkPluspopupChk";
							document.form_chk.submit();
						}

						function setAuthIn(dupInfo, name, birth, gender, cell) {
							$('#parentName').val(name);
							$('#parentDupinfo').val(dupInfo);
							$('#parentBirthday').val(birth);
							$('#parentAuthGubun').val('A00008');
							alert('실명확인되었습니다');
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

										if (!id
												.match('^[a-zA-Z0-9]{4,20}$')) {
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
												console.log("통신 성공!")
												console.log("result : " + result)
												
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
			
										/* 
										$.post(
											"checkDupId.me",
											{id : },
											function(data) {

												if (data.idCnt > 0) { 
													alert("아이디가 중복됩니다.");
													$("#chkuserIdYN").val("N");
													$('#userId').focus();
													return false;
												}
												alert("사용 가능한 아이디입니다.");
												$("#chkuserIdYN").val("Y");
											});
										 */
									});


							$(".chkRecommendId").click(function() {
								var id = $("#recommendId").val();

								if (id == '') {
									alert("아이디를 입력해주세요.");
									$('#recommendId').focus();
									return false;
								}

								$.post("/portal/member/user/checkDupId.json", {
									id : id
								}, function(data) {
									if (data.idCnt > 0) {
										alert("사용 가능한 아이디입니다.");
										$("#chkRecommendIdYN").val("Y");
									} else {
										alert("정확한 회원 아이디를 입력해주시기 바랍니다.");
										$('#recommendId').focus();
										$("#chkRecommendIdYN").val("N");
									}
								});

							});
						});
					</script>

					<!-- {(joinExtCode,K)(joinExtID,1234528163)(joinExtEmail,hojin0703@nate.com)(joinExtName,김호진)(joinExtBirthDay,)(joinExtGender,)} -->
					<form name="board" id="board" method="post" action="signup.me">
						<input type="hidden" id="menuNo" name="menuNo" value="200144"> <input type="hidden" name="extId" id="extId" value=""> <input type="hidden" name="extCode" id="extCode" value=""> <input type="hidden" id="stipulationType" name="stipulation_type" value=""> <input type="hidden" id="effectiveDate" name="effective_date" value=""> <input type="hidden" id="parentName" name="parentName" value=""> <input type="hidden" id="parentDupinfo" name="parentDupinfo" value=""> <input type="hidden" id="parentBirthday" name="parentBirthday" value=""> <input type="hidden" id="parentAuthGubun" name="parentAuthGubun" value=""> <input type="hidden" id="joinType" name="joinType" value=""> <input type="hidden" name="regIdCheckFl" value="N"> <input type="hidden" name="joinTypeCode" value="0001"> <input type="hidden" name="receiveSms" value=""> <input type="hidden" name="receivemail" value="">

						<input type="hidden" name="regNoDate" id="regNoDate" value=""> <input type="hidden" name="dupinfo" id="dupinfo" value=""> <input type="hidden" name="siteType" id="siteType" value="">


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
											<input type="text" value="" name="userId" id="userId"> <input type="hidden" name="chkuserIdYN" id="chkuserIdYN" value="N">
											<button type="button" class="bg-black chkuserId">중복확인</button>
											<span class="txt ml">특수문자를 제외한 영문, 숫자 4~20자 이내</span>
										</div>
									</li>
									<li class="item"><label for="userPwd" class="t">비밀번호 <span class="color-purple">*</span></label>
										<div class="cont">
											<input type="userPwd" name="userPwd" id="userPwd"> <span class="txt ml">영문, 숫자, 특수문자 중 2종류 이상 8~12자 이내</span>
										</div>
									</li>
									<li class="item"><label for="reuserPwd" class="t">비밀번호 확인 <span class="color-purple">*</span></label>
										<div class="cont">
											<input type="userPwd" name="reuserPwd" id="reuserPwd"> <span class="txt ml">확인을 위해 한번 더 입력하시기 바랍니다.</span>
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
									<li class="item manAgeSet" style="display: none"><label for="parent" class="t">부모님동의 <span class="color-purple">*</span></label>
										<div class="cont">
											<span class="txt">만 14세 미만의 어린이는 보호자 동의가 필요합니다.</span>
											<button type="button" class="bg-black" onclick="javascript:checkPlusPopup();return false;">부모님 휴대전화 인증</button>
										</div>
									</li>
									<li class="item"><label for="genderFlag" class="t">성별 <span class="color-purple">*</span></label>
										<div class="cont">
											<select name="genderFlag" id="genderFlag" class="small">
												<option value="">성별</option>
												<option value="M">남자</option>
												<option value="F">여자</option>
											</select>
										</div>
									</li>
									<li class="item"><strong class="t">주소 <span class="color-purple">*</span></strong>
										<div class="cont">
											<ul class="add">
												<li class="clearfix a1">
													<div class="zipcode">
														<label for="memberZipCd" class="hide">우편번호</label> <input type="text" name="memberZipCd" id="memberZipCd" value="">
														<button id="addrBtn" type="button" class="bg-black" title="새창으로 열립니다.">우편번호 찾기</button>
														<script>
															$("#addrBtn").click(function() {
																goPopup();
																return false;
															});
														</script>
													</div>
												</li>
												<li class="clearfix a2">
													<span class="l"> <label for="memberAddr1" class="hide">주소</label> <input type="text" name="memberAddr1" id="memberAddr1" value=""></span> 
													<span class="r"> <label for="memberAddr2" class="hide">나머지 주소</label> <input type="text" name="memberAddr2" id="memberAddr2" value="" class="long">
													</span>
												</li>
											</ul>
										</div>
									</li>
									<li class="item"><strong class="t">이메일 <span class="color-purple">*</span></strong>
										<div class="cont">
											<ul class="memberEmail clearfix">
												<li class="e1"><label for="email" class="hide">이메일 아이디와 주소</label> <input type="text" name="email" id="email" value=""></li>
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
												<input type="hidden" name="memberCel" id="memberCel" value="">
											</div>
											<div class="tel_confirm" style="margin-top: 10px;">
												<label for="smsAuthNumber" class="hide">인증번호 입력</label> <input type="text" name="smsAuthNumber" id="smsAuthNumber" placeholder="인증번호 6자리 숫자 입력" maxlength="6"> <input type="hidden" name="serverAuth" id="serverAuth">
											</div>
										</div>
									</li>
								</ul>
							</div>
							<br><br>
							<div class="bbs-btn_w clearfix tac">
								<a href="javascript:formCheck();" class="bbs-btn-st2 bg-purple3">등록</a> <a href="/portal/main/main.do" class="bbs-btn-st2 bg-black_r">취소</a>
							</div>
						</article>
					</form>

					<form name="form_chk" method="post">
						<input type="hidden" name="m" value="checkplusSerivce">
						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
						<input type="hidden" name="EncodeData" value="AgAFRzY2OTk8DAPean4bRcEs2DfOrt8xzDwq50B5ModxJ8R93TmbvUGBS6kaH0geIGMa2q9CDDCTXGOxZ9e14WVJQFZLRNW3I3+bm3RiM5qzFgm5iVT590qFh+OdXtZOSMJXRbGoPK5s6zgJy1njjbJu6GsQxq5Ieeyc3aAkXn2azreIWgzEO19wTrzmlt7uB4NbqD+nx+8V2TTSHN9kD8FlWywC/FJOlwcTIW2wePJSwYctkTBaaegLxCfI+osQ2owzASl9T6mg6pGz/7qMNjni73TnYh/J9DjIH673VNib7EiDJrYSkFsrQHMiw6VC5zB6NQCs2rxGiimiDb7FyN8rZYqOEkqWZy/i3hTwfMS6gw0oJrLMg4WtpwKaKFiSZLHlC62oNlCzfxRpyLyYv6v2omsJR+cxDwMetZHqnCioP0IrQ6RwAZ8pa2bYXW+9KZTZ++I3zX8jYC1FWIpJY1raAg6dx7gyDNtUVldr1VZBCvVOpHzXFg==">
						<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
					</form>

					<script>
						function isKid(birthday) {
							var nowage = birthday;
							var now = new Date();
							var year = now.getFullYear();
							var mon = (now.getMonth() + 1) > 9 ? ''
									+ (now.getMonth() + 1) : '0'
									+ (now.getMonth() + 1);
							var day = now.getDate() > 9 ? '' + now.getDate()
									: '0' + now.getDate();
							var todays = year + mon + day;
							var dif = todays - parseInt(nowage) - 140000;

							if (dif >= 0) {
								return false;
							} else {
								return true;
							}
						}
						function isDate(dayStr) {
							var valid = false;
							if (dayStr
									.search(/\d{4}-(0[1-9]|1[0-2])-([0-3][0-9])/) == 0) {
								var arrDay = dayStr.split("-");
								var year = parseInt(arrDay[0]);
								var month = parseInt(arrDay[1].replace(
										/^0(\d)/g, "$1"));
								var day = parseInt(arrDay[2].replace(/^0(\d)/g,
										"$1"));
								var d = new Date(year, month - 1, day);
								if (d.getMonth() == month - 1
										&& d.getDate() == day)
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

						$('[name=birthdayYear], [name=birthdayMonth], [name=birthdayDay]').change(
										function(event) {
											if (isDate($('[name=birthdayYear]')
													.val()
													+ '-'
													+ lpad(
															$('[name=birthdayMonth]').val(), 2,'0')
													+ '-'
													+ lpad(
															$('[name=birthdayDay]').val(), 2,'0'))) {
												if (isKid($(
														'[name=birthdayYear]')
														.val()
														+ ''
														+ lpad(
																$('[name=birthdayMonth]').val(),2, '0')
														+ ''
														+ lpad(
																$('[name=birthdayDay]').val(),2, '0'))) {
													$('.manAgeSet').show()
												} else {
													$('.manAgeSet').hide()
												}
											} else {
												$('.manAgeSet').hide()
											}
							});
					</script>
				</div>
			</div>
		</div>
		<!-- 본문 끝 -->

		<!-- footer Section Begin -->
		<jsp:include page="../common/footer2.jsp" />
		<!-- footer End -->
	</section>
</body>
</html>