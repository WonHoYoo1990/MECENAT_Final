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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

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

				<div class="bg" style="background-image: url(&quot;/static/portal/img/common/subvisual-common.jpg&quot;); transform: translate(-9.48087px, 10px) scale(1.1);"></div>

			</div>

			<h2 class="sub-t">
				<strong class="ani" style="opacity: 1;">로그인</strong>
			</h2>

		</section>
		
		<div id="depth_w" class="">
		<div class="inner">
			<ul class="clearfix dot dep1 li2">
				<li class="home">
					<span><span>HOME</span></span>
				</li>
				<li>
					<div class="rel">
					<a href="#"><span>통합회원서비스</span></a>
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
					<a href="loginForm.me"><span>로그인</span></a>
					<ul class="depth" style="display: none;">
					<li><a href="/portal/main/contents.do?menuNo=200099"><span>서비스소개</span></a></li>
					<li><a href="loginForm.me"><span>로그인</span></a></li>
					<li><a href="/portal/member/user/join.do?menuNo=200144"><span>회원가입</span></a></li>
					<li><a href="findIdForm.me"><span>아이디 찾기</span></a></li>
					<li><a href="findPwdForm.me"><span>패스워드 찾기</span></a></li>
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
		<div class="inner">
			
		</div>

		<script>
		var loc = $("#depth_w > div > ul > li").length - 1;
		$("#depth_w .dep1").addClass("li"+loc);

		var len = $(".tabs-st1 li").length;
		$(".tabs-st1").addClass("li"+len);
		</script>

		<div class="sub_page">
		




<script src="/static/commons/js/validUtil.js"></script>

 <style>
.tabs-st1,.tabs-st2{display: none;}
</style>
<article class="find_member inner member_com">
<form class = "content" action="findPwd.me" method="post">
	<div class="group">
		<h3 class="tit-st4">간편찾기</h3>
		<div class="box">
			<div class="top" id="ck_input">
			</div>
				<div class="form_w form2" style="">
					<h4 class="t">본인확인 이메일주소와 입력한 이메일 주소가 같아야, 비밀번호를 받을 수 있습니다.</h4>
					<ul class="form">
						<li>
							<label for="name2" class="tt">이름</label>
							<div class="cont">
								<input type="text" name="name2" id="name2">
							</div>
						</li>
						<li>
							<span class="tt">이메일 주소</span>
							<div class="cont">
								<div class="tel_confirm">
									<label for="email" class="hide">이메일</label>
									<input type="text" name="chkEmail" id="chkEmail">
								<button type="submit" id="check" class="bg-black">인증번호 받기</button>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</form>
	</div><!-- .group -->

</article>

<form method="post" name="authForm">
	<input type="hidden" name="serverAuth" id="serverAuth">
</form>

<form method="post" name="smsForm" id="smsForm" action="/portal/member/user/findIdResut.do?menuNo=200146">
	<input type="hidden" name="userId" id="userId" value="">
	<input type="hidden" name="userName" id="userName">
	<input type="hidden" name="userDi" id="userDi">
	<input type="hidden" name="userTel" id="userTel">
	<input type="hidden" name="type" id="type">
	<input type="hidden" name="userEmail" id="userEmail">
</form>

<form name="form_chk" method="post">
<input type="hidden" name="m" value="checkplusSerivce">						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
<input type="hidden" name="EncodeData" value="AgAFRzY2OTmM4jMMtT8XZSoplSzjmdVODq5ToLC/cSyy/w91J7pg0EGBS6kaH0geIGMa2q9CDDCTXGOxZ9e14WVJQFZLRNW3si2m9qvshtbmxYkoQMF6VXHaomoIb1nK9NDr8X33qBJR9uGnOqX8wxR0Pk0tfw2kt/dy5xX74LWc7hqCRwqaCFZsSr0TbBqarvG5bDwvFFxWKBfbz5ZEgUg242+sOdDMK4PrW2tgUAUiznHVEI3GWZOYtfXiDpfakpdNBU1+bS71xKeD1wqiDmgbfKlfaWbckMCs/Mb1NxZPcg9zgRrAYDrCIXnX0HrDs8eomrFCuyz8Ab6pdJMpebDgSH/urVR+jCQ83QU3YsbJagZn4DHMDTtcyi3Yb6a82I1MWnb+jZqJ6s6pwGmkPdCuPzGjUrRJ6GzR2MfGt6Xbpu1x8aslwtasefKODKftyxEL1BR+TkgEXqAOcY1gT8dZmrYc+6Xfu+4bkpapQ7H2CeQAaElWtw==">		<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
</form>
<script>

//CHECK PLUS
window.name ="Parent_window";

function checkPlusPopup(){
	window.open('', 'checkPluspopupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
	document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
	document.form_chk.target = "checkPluspopupChk";
	document.form_chk.submit();
}


$(function(){
		$(document).ready(function() {
			var msg = "${msg}";
			if(msg != ""){
			alert(msg);    
			}
			});
});
</script>
		</div>
	</div>

</div>


		<!-- footer Section Begin -->
		<jsp:include page="../common/footer2.jsp" />
		<!-- footer End -->
		
		
	</section>
</body>
</html>