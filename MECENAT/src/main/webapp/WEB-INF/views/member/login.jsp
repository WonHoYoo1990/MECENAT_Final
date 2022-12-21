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
		<jsp:include page="../common/header.jsp" />
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
					<a href="login.me"><span>로그인</span></a>
					<ul class="depth" style="display: none;">
					<li><a href="/portal/main/contents.do?menuNo=200099"><span>서비스소개</span></a></li>
					<li><a href="login.me"><span>로그인</span></a></li>
					<li><a href="signupForm.me"><span>회원가입</span></a></li>
					<li><a href="findIdForm.me"><span>아이디 찾기</span></a></li>
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
		





<style>
.tabs-st1,.tabs-st2{display: none;}
</style>

<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- 캡차주석 웃는남자 -->
<!--  
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"></script>
 -->
 
<article class="login inner member_com">
<form name="memberLoginForm" id="memberLoginForm" action="login.me" enctype="multipart/form-data" method="post" onsubmit="return actionLogin(this);">
	<input type="hidden" name="loginFlag" value="">
	<input type="hidden" name="menuNo" value="200100">
	<input type="hidden" name="csrfToken" id="csrfToken" value="7f0d129f-5bde-4462-86d0-ea838c826de6">
	<ul class="clearfix half_w">
		<li class="l form_w">
			<h3 class="tit-st4">세종문화회관  회원  로그인</h3>

			<ul class="form f20">
			 <c:choose>
               <c:when test="${cookie.userId.value}">
					<li class="id"><label for="userId" class="hide">아이디</label><input type="text" name="userId" id="userId" placeholder="아 이 디"></li>
					<li class="pw"><label for="password" class="hide">패스워드</label><input type="password" name="userPwd" id="userPwd" autocomplete="off" onkeypress="return loginEnter(event);" "="" placeholder="비밀번호"></li>
				</c:when>
				<c:otherwise>
				  	<li class="id"><label for="userId" class="hide">아이디</label><input type="text" name="userId" id="userId" value="${cookie.userId.value}" placeholder="아 이 디"></li>
					<li class="pw"><label for="password" class="hide">패스워드</label><input type="password" name="userPwd" id="userPwd" autocomplete="off" onkeypress="return loginEnter(event);" "="" placeholder="비밀번호"></li>
				</c:otherwise>
             </c:choose>
			</ul>
			<div class="remeber">
				<input type="checkbox" id="saveId" name="saveId">
				<label for="saveCookieUserId">아이디 저장</label>
			</div>
			<!-- 캡차주석 -->
			<!-- <div id="g-recaptcha" style="display:flex; justify-content:center;"></div>  -->

			<button type="submit" class="bg-black btn-login f20">로그인</button>

			<p class="bul-stars b">입력하신 로그인정보가 5회 연속 불일치 시 로그인이 제한되며   아래의 비밀번호 찾기를 통해 해제하실 수 있습니다.</p>

			<div class="etc">
				<span><a href="findIdForm.me">아이디 찾기</a></span>
				<span><a href="findPwdForm.me">비밀번호 찾기</a></span>
				<span><a href="signupForm.me">회원가입</a></span>
				<span><a href="/portal/main/contents.do?menuNo=200091">회원혜택안내</a></span>
			</div>
		</li>
		<li class="r sns_join">
			<h3 class="tit-st4">시민이 자랑하고 싶은 예술 명소!
			<strong class="small">세종문화회관에 오신 것을 환영합니다.</strong>
			</h3>
			<div id="naverIdLogin"></div>
			<ul class="clearfix">
				<li class="">
					<a href="#" id="naverIdLogin_loginButton" title="새창열림">
					<span class="naver icon"></span>
					<span class="block-pc">네이버 계정으로</span>로그인
					</a>
				</li>
				<!--
				<li class="">
					<a href="javascript:authGoogle();">
					<span class="google icon"></span>
					<span class="block-pc">구글 계정으로</span> 로그인
					</a>
				</li>
				-->
				<li>
					<a href="#googleAuthBtn" id="googleAuthBtn" title="새창열림">
					<span class="google icon"></span>
					<span class="block-pc">구글 계정으로</span> 로그인
					</a>
				</li>

				<li class="">
					<a href="javascript:loginWithKakao();" title="새창열림">
					<span class="kakao icon"></span>
					<span class="block-pc">카카오 계정으로</span> 로그인
					</a>
				</li>

			</ul>

		</li>
	</ul>
</form>
</article>
<input type="hidden" id="reUrl" name="reUrl" value="/">

<script>
//화면 시작 시 g-recaptcha 생성
//캡차주석 - 웃는남자
/*
 var onloadCallback = function() {
	grecaptcha.render('g-recaptcha', {
	'sitekey' : '6LfQUYMfAAAAAMGmYQj6eLslOLs_BLxvJDET0KJg', // real
	//'sitekey' : '6LcrQWQfAAAAAJL76rCMf6fPJ2tSo5x18uvd6rNv', // local
	});
};

//구글캡차체크
function captchaChk(){
	var rtn = false;
	
	//구글캡차체크
	$.ajax({
		url: '/portal/member/user/verifyRecaptcha.json',
		type: 'post',
		dataType: 'json',
		async :false,
		data: {
			recaptcha: $("#g-recaptcha-response").val()
		},
		success: function(data) {
			if(data.status == "success"){
				rtn = true;
			}else{
				alert("자동입력방지 서비스(로봇이 아닙니다)를 체크 바랍니다.");
				rtn = false;
			}
		}
	});
	return rtn;
} 
*/
$(document).ready(function() {
	var msg = "${msg}";
	if(msg != ""){
	alert(msg);    
	}
	});


function actionLogin(form){
	var username = $("#userId").val();
	var password = $("#userPwd").val();

	if (username == "" || username == null ) {
		alert("아이디를 입력하셔야 합니다.");
		$("#username").focus();
		return false;
	}

	if (password == "" || password == null ) {
		alert("비밀번호를 입력하셔야 합니다.");
		$("#userPwd").focus();
		return false;
	}

	if($('#saveCookieUserId').is(':checked')){
		saveLogin($('#userId').val());
	}else{
		saveLogin('');
	}
	
	//캡차주석 - 웃는남자
	/*
	if(captchaChk()){
		return true;
	}else{
		return false;
	} 
	*/
	
	return true;
}

function loginEnter(e){
    if(e.keyCode == 13){  /* IE기준으로 설명 */
    	actionLogin();
    }
}

//아이디저장
		$(function(){
			<c:choose>
			<c:when test="${not empty cookie.userId.value}">
				$("#saveId").attr("checked",true);
			</c:when>
			<c:otherwise>
				$("#saveId").attr("checked",false);
			</c:otherwise>
			</c:choose>
		});
</script>

<script>
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "EAb7CewzwpTuSWU1vAZ4",
			callbackUrl: "https://www.sejongpac.or.kr/static/view/callback.html",
			isPopup: true, /* 팝업을 통한 연동처리 여부 */
			callbackHandle: false
		}
	);

	naverLogin.init();

	function setAuthNaver(id, nickname,email,birthday,age){
		if( id == undefined || id == null) {
			alert("연결이 실패하였습니다");
			document.location.href = "/portal/member/user/join.do?menuNo=200144";
			return;
		}
		var returnUrl = $("#reUrl").val();
		$.post(
			"/portal/member/user/setSnsAuth.json",
			{memberId : id, crtfcSeCd : "N", returnUrl: returnUrl},
			function(data){
				if ( data.resultCode == 'success' ) {
					alert('로그인 하였습니다.');
					location.href = data.goUrl;
				}else{
					alert("연동된 SNS 계정이 없습니다.\n신규가입화면으로 이동합니다.");
					location.href = "/portal/member/user/join.do?menuNo=200144";
				}
			}
		);
	}

</script>
<script>
    Kakao.init('bbe665ff03be7273519e7e76ac4c4c19');
    function loginWithKakao() {
      Kakao.Auth.login({
        success: function(authObj) {
			Kakao.API.request({
				url: '/v2/user/me',
				success: function(res) {
					var memberId = res.id;
					var email = res.kakao_account.email;

					if( memberId == undefined || memberId == null) {
						alert("카카오 연결이 실패하였습니다");
						document.location.href = "/portal/member/user/forLogin.do?menuNo=200100";
						return;
					}
					var returnUrl = $("#reUrl").val();
					$.post(
						"/portal/member/user/setSnsAuth.json",
						{email : email, memberId : memberId, crtfcSeCd : "K", returnUrl: returnUrl},
						function(data){
							if ( data.resultCode == 'success' ) {
								alert('로그인 하였습니다.');
								location.href = data.goUrl;
							}else{
								alert("연동된 SNS 계정이 없습니다.\n신규가입화면으로 이동합니다.");
								location.href = "/portal/member/user/join.do?menuNo=200144";
							}
						}
					);
            },
            fail: function(error) {
              alert("카카오 로그인 처리에 실패하였습니다. - " + JSON.stringify(error));
            }
          });
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
    };
  //]]>
</script>
<script>
function onLoadGoogleCallback() {
	gapi.load('auth2', function() {
		auth2 = gapi.auth2.init({
			client_id : '113025989816-nnav0npepl2lv7h086hhmrekli0bk1tt.apps.googleusercontent.com',
			cookiepolicy : 'single_host_origin',
			scope : 'profile email'
		});

		auth2.attachClickHandler(element, {}, function(googleUser) {
			var profile = googleUser.getBasicProfile();
			//console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
			//console.log('Name: ' + profile.getName());
			//console.log('Image URL: ' + profile.getImageUrl());
			//console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.

			var memberId = profile.getId();
			var email = profile.getEmail();
			var returnUrl = $("#reUrl").val();
			$.post(
				"/portal/member/user/setSnsAuth.json",
				{email : email, memberId : memberId, crtfcSeCd : "G", returnUrl: returnUrl},
				function(data){
					if ( data.resultCode == 'success' ) {
						alert('로그인 하였습니다.');
						location.href = data.goUrl;
					}else{
						alert("연동된 SNS 계정이 없습니다.\n신규가입화면으로 이동합니다.");
						location.href = "/portal/member/user/joinAgre.do?menuNo=200144";
					}
				}
			);

		}, function(error) {
			console.log('Sign-in error', error);
		});
	});

	element = document.getElementById('googleAuthBtn');
}
</script>
<script src="https://apis.google.com/js/platform.js?onload=onLoadGoogleCallback" async="" defer="" gapi_processed="true"></script>
		</div>
	</div>

</div>
		<!-- footer Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- footer End -->
		
		
	</section>
</body>
</html>