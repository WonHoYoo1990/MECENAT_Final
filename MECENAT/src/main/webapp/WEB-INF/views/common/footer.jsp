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
<title>Footer | Template|</title>
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
<style>
body.hide-focus-ring *:focus {
	outline: none !important;
}

/*popup*/
.popup_layer {
	
}

/*팝업 박스*/
.popup_box {
	margin-top: 200px;
	margin-left: 550px;
	padding-top: 0px;
	border: solid;
	top: 50%;
	left: 50%;
	overflow: auto;
	height: 400px;
	width: 375px;
	transform: translate(-50%, -50%);
	z-index: 10020;
	box-sizing: border-box;
	background: #fff;
	color: gray;
	box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35);
	-webkit-box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35);
	-moz-box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35);
}
/*컨텐츠 영역*/
.popup_box .popup_cont {
	padding: 50px;
	line-height: 1.4rem;
	font-size: 14px;
}

.popup_box .popup_cont h2 {
	padding: 15px 0;
	color: #333;
	margin: 0;
}

.popup_box .popup_cont p {
	border-top: 1px solid #666;
	padding-top: 30px;
	height: 400px;
}
/*버튼영역*/
.popup_box .popup_btn {
	display: table;
	table-layout: fixed;
	width: 100%;
	height: 70px;
	background: #ECECEC;
	word-break: break-word;
}

.popup_box .popup_btn a {
	position: relative;
	display: table-cell;
	height: 70px;
	font-size: 17px;
	text-align: center;
	vertical-align: middle;
	text-decoration: none;
	background: #ECECEC;
}

.popup_box .popup_btn a:before {
	content: '';
	display: block;
	position: absolute;
	top: 26px;
	right: 29px;
	width: 1px;
	height: 21px;
	background: #fff;
	-moz-transform: rotate(-45deg);
	-webkit-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

.popup_box .popup_btn a:after {
	content: '';
	display: block;
	position: absolute;
	top: 26px;
	right: 29px;
	width: 1px;
	height: 21px;
	background: #fff;
	-moz-transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	-o-transform: rotate(45deg);
	transform: rotate(45deg);
}

.popup_box .popup_btn a.close_day {
	background: #5d5d5d;
}

.popup_box .popup_btn a.close_day:before, .popup_box .popup_btn a.close_day:after
	{
	display: none;
}
/*오버레이 뒷배경*/
.popup_overlay {
	position: fixed;
	top: 0px;
	right: 0;
	left: 0;
	bottom: 0;
	z-index: 1001;;
	background: rgba(0, 0, 0, 0.5);
}
/*popup*/
</style>
</head>
<body class="hide-focus-ring">
	<section id="wrap">
		<footer id="footer">
			<div class="top">
				<div class="inner clearfix">
					<!-- 이용약관 팝업 시작 -->
					<div class="popup_layer" id="popup_layer1" style="display: none;">
						<div class="popup_box">
							<div style="height: 10px; width: 80px; margin-left: 300px;">
								<a href="javascript:closePop('1');"><img src="./resources/sejongpac/static/commons/img/common/ic_close.svg" class="m_header-banner-close" width="80px" height="80px"></a>
							</div>
							<!--팝업 컨텐츠 영역-->
							<div class="popup_cont">
								<h5>KH정보교육원의 이용약관은 다음과 같습니다.</h5>
								<p>
									<b>KH정보교육원 회원 약관</b><br> <br> <br> <b>제 1 장 총칙</b><br> <br> 제 1 조 목적<br> <br> 이 약관은 KH정보교육원이 제공하는 서비스인 http://www.iei.or.kr의 이용조건 및 절차에 관한 사항과 기타 필요한 사항을 규정함을 목적으로 합니다.<br> <br> 제 2 조 약관의 효력과 변경<br> <br> 1) 약관은 이용자에게 공시함으로써 효력을 발생합니다.<br> <br> 2) KH정보교육원은 교육원 사정상 변경의 경우와 영업상 중요사유가 있을 때 약관을 변경할 수 있으며, 변경된 약관은 전항과 같은 방법으로 효력을 발생합니다.<br> <br> 제 3 조 약관 외 준칙<br> <br> 이 약관에 명시되지 않은 사항이 관계법령에 규정되어 있을 경우에는 그 규정에 따릅니다.<br> <br> <br> <b>제 2 장 회원 가입과 서비스 이용</b><br> <br> 제 1 조 이용 계약의 성립<br> <br> 1)KH정보교육원에서 운영하는 모든 회원서비스는 이 약관에 동의한 이용자들에게 무료로 제공 되는 서비스입니다.<br> 이용자가 "동의합니다" 버튼을 누르면 이 약관에 동의하는 것으로 간주됩니다.<br> <br> 2) 회원에 가입하여 서비스를 이용하고자 하는 희망자는 회사에서 요청하는 개인 신상정보를 제공해야 합니다.<br> <br> 3) 등록정보<br> KH정보교육원은 이용자 등록정보를 집단적인 형태로 사용할 수는 있지만 각 이용자 개인 정보는, 불법적이거나 기타 다른 불온한 문제를 일으킬 경우를 제외하고, 이용자의 동의 없이는 절대 공개하지 않습니다.<br> KH정보교육원을 이용하여 타인에게 피해를 주거나
									미풍양속을 해치는 행위를(즉 욕설, 비방성글, 인신공격성 발언, 사회적질서를 혼란시키는 유언비어등)한 이용자는 회원자격이 박탈되며, 이로 인해 발생되는 모든 사회적문제는 KH정보교육원에서 책임지지 않습니다.<br> <br> 4) 약관의 수정<br> KH정보교육원은 이 약관을 변경할 수 있으며 변경된 약관은 서비스 화면에 게재하거나 기타 다른 방법으로 이용자에게 공지함으로써 효력을 발생합니다.<br> <br> 5) ID와 패스워드<br> 이용자번호(ID)와 비밀번호(password)에 관한 모든 관리책임은 이용자에게 있습니다. <br> 이용자에게 부여된 이용자번호(ID) 및 비밀번호(password)의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 이용자에게 있습니다. <br> 자신의 ID가 부정하게 사용된 경우 이용자는 반드시 KH정보교육원에 그 사실을 통보해야 합니다.<br> <br> 6) 사용자 정보<br> KH정보교육원에 기재하는 모든 이용자 정보는 이름을 포함하여 모두 실제 데이타인 것으로 간주됩니다.<br> 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, KH정보교육원의 서비스 제한 조치를 받을 수 있습니다.<br> <br> 7) 광고 게재 및 컨텐츠 제휴<br> KH정보교육원은 광고수익과 컨텐츠 제휴를 기반으로 컨텐츠 서비스를 제공하고 있습니다.<br> KH정보교육원의 서비스를 이용하고자 하는 이용자는 광고게재및 컨텐츠제휴에 대해 동의하는 것으로 간주됩니다.<br> <br> <br> <b>제 3 장 계약 해지 및 서비스 이용제한</b> <br> <br> 제 1 조 계약 해지 및 이용제한<br> <br> 이용자가 이용 계약을 해지 하고자 하는 때에는 이용자 본인이 직접 온라인을 통해
									관리자에게 메일을 보내어 해지 신청을 하여야 합니다.<br> <br> 회사는 이용자가 다음 사항에 해당하는 행위를 하였을 경우 사전 통지 없이 이용 계약을 해지 하거나 또는 기간을 정하여 서비스 이용을 중지할 수 있습니다.<br> <br> (1) 공공 질서 및 미풍 양속에 반하는 경우<br> <br> (2) 범죄적 행위에 관련되는 경우<br> <br> (3) 이용자가 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행 할 경우<br> <br> (4) 타인의 서비스 아이디 및 비밀 번호를 도용한 경우<br> <br> (5) 타인의 명예를 손상시키거나 불이익을 주는 경우<br> <br> (6) 같은 사용자가 다른 아이디로 이중 등록을 한 경우<br> <br> (7) 서비스에 위해를 가하는 등 서비스의 건전한 이용을 저해하는 경우<br> <br> (8) 기타 관련법령이나 회사가 정한 이용조건에 위배되는 경우<br> <br> 제 2 조 이용 제한의 해제 절차<br> <br> (1) 회사는 규정에 의하여 이용제한을 하고자 하는 경우에는 그 사유, 일시 및 기간을 정하여 서면 또는 전화 등의 방법에 의하여 해당 이용자 또는 대리인에게 통지합니다. 다만, 회사가 긴급하게 이용을 정지할 필요가 있다고 인정하는 경우에는 그러하지 아니합니다.<br> <br> (2) 제1항의 규정에 의하여 이용정지의 통지를 받은 이용자 또는 그 대리인은 그 이용정지의 통지에 대하여 이의가 있을 때에는 이의신청을 할 수 있습니다. <br> <br> (3) 회사는 제2항의 규정에 의한 이의신청에 대하여 그 확인을 위한 기간까지 이용정지를 일시 연기할 수 있으며, 그 결과를 이용자 또는 그 대리인에게 통지합니다. <br> <br>
									(4) 회사는 이용정지 기간 중에 그 이용정지 사유가 해소된 것이 확인된 경우 에는 이용정지조치를 즉시 해제합니다.<br> <br> 제 3 조 이용자의 게시물<br> <br> 회사는 이용자가 게시하거나 등록하는 서비스 내의 내용물이 다음 각 사항에 해당된다고 판단되는 경우에 사전 통지 없이 삭제할 수 있습니다.<br> <br> (1) 다른 이용자 또는 제 3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용인 경우<br> <br> (2) 공공질서 및 미풍 양속에 위반되는 내용인 경우<br> <br> (3) 범죄적 행위에 결부된다고 인정되는 내용일 경우<br> <br> (4) 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우<br> <br> (5) 기타 관계 법령이나 회사에서 정한 규정에 위배되는 경우<br> <br> <br> <b>제 4 장 계약변경 등</b><br> <br> 제 1 조 계약사항의 변경<br> <br> (1) 이용자는 주소 또는 이용계약 내용을 변경하거나, 서비스 를 해지할 경우에는 전화나 서비스를 통해서 이용계약을 변경/ 해지하여야 합니다.<br> <br> <br> <b>제 5 장 정보의 제공</b><br> <br> 제 1 조 정보의 제공<br> <br> (1) 회사는 이용자가 서비스 이용 중 필요가 있다고 인정되는 다양한 정보에 대해서는 전자우편이나 서신우편 등의 방법으로 이용자에게 제공할 수 있습니다.<br> <br> <br> <b>제 6 장 손해 배상</b> <br> 제 1 조<br> <br> 1) 손해배상 <br> KH정보교육원은 서비스 이용과 관련하여 이용자에게 발생한 어떠한 손해에 관하여도 책임을
									지지 않습니다. <br> 서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 KH정보교육원의 소재지를 관할하는 법원을 관할법원으로 합니다. <br> <br> [부 칙] <br> <br> <br> ( 시 행 일 ) 이 약관은 2015년 01월 12일부터 시행합니다.<br>
								</p>
							</div>
						</div>
					</div>
					<!-- 이용약관 팝업 끝 -->
					<!-- 개인정보 취급방침 팝업 시작 -->
					<div class="popup_layer" id="popup_layer2" style="display: none;">
						<div class="popup_box">
							<div style="height: 10px; width: 80px; margin-left: 300px;">
								<a href="javascript:closePop('2');"><img src="./resources/sejongpac/static/commons/img/common/ic_close.svg" class="m_header-banner-close" width="80px" height="80px"></a>
							</div>
							<!--팝업 컨텐츠 영역-->
							<div class="popup_cont">
								<h5>KH정보교육원 개인정보 취급방침은 다음과 같습니다.</h5>
								<p>
									<b>제1조(개인정보의 처리목적)</b> ① KH정보교육원은 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보보호법 제 18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다. 1. 상담 문의 - 국가기간 전략산업직종 훈련지원 안내, 훈련생 상담, 과정 및 일정 안내 2. 홈페이지 회원 가입 및 관리, 서비스 제공 - 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지, 각종 고지·통지, 교육 콘텐츠 제공, 평가, 증명서 발급(교육 수료증) 등 서비스 제공 3. 국가기간 전략산업직종 훈련지원 및 수료 후 취업지원 - 훈련생 상담, HRD 훈련생 등록, 훈련장려금 청구, 취업사실 확인, 교육확인서 발급, 수강증명서 발급, 훈련장려금 청구, 취업지원 <b>제2조(개인정보의 처리 및 보유 기간)</b> ① KH정보교육원은 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다. ② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다. 1. 상담 문의 1) 개인정보 이용 기간 : 상담 완료 시 까지 2) 보유기간 : 상담 완료 후 3년 3) 보유근거 : 정보주체의 동의를 받은 경우 2. 홈페이지 회원 가입 및 관리, 서비스제공 : 홈페이지 탈퇴 시 까지 다만, 관계 법령 위반에 따른 수사 조사 등이 진행 중인 경우에는 해당 수사조사 종료 시까지 3. 국가기간 전략산업직종 훈련지원 및 수료 후 취업지원 1) 개인정보 이용 기간 : 국가기간 전략산업직종 훈련과정 수료 후 7개월 2) 보유기간 : 훈련과정 종료 후 5년 3) 보유근거 : 국민내일배움카드 운영규정 제58조, 정보주체의 동의를 받은 경우 <b>제3조(개인정보의 제3자 제공)</b> ① KH정보교육원은 개인정보를 제1조(개인정보의 처리 목적)에서 명시한
									범위 내에서만 처리하며, 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다. ② KH정보교육원은 개인정보보호법 제17조 제1항에 의거하여 다음과 같이 개인정보를 제3자에게 제공하고 있습니다. 1. 직업능력 심사평가원 - 개인정보를 제공받는 자 : 한국기술교육대학교 직업능력 심사평가원 - 제공받는 자의 개인정보 이용목적 : 이수자평가, 인증평가 - 제공하는 개인정보 항목 : 성명, 전화번호, 상담내역, 훈련생 평가내역 - 제공받는 자의 보유.이용기간: 평가 진행 완료 시 까지 2. 온라인 평생교육원 - 개인정보를 제공받는 자 : 한국기술교육대학교 온라인 평생교육원 - 제공받는 자의 개인정보 이용목적 : 이수자평가, 인증평가 - 제공하는 개인정보 항목 : 성명, 전화번호, 상담내역, 훈련생 평가내역 - 제공받는 자의 보유.이용기간: 평가 진행 완료 시 까지 3. 기타 - 특정 사업 참여 시 사업운영 측에서 요구하는 개인정보 ③ 제3자 제공의 내용이나 범위가 변경될 경우에는 지체없이 본 개인정보 처리 방침을 통하여 공개하도록 하겠습니다.
								</p>
							</div>
						</div>
					</div>
					<!-- 개인정보 취급방침 팝업 끝 -->
					<ul class="l">
						<li><a href="javascript:openPop('1')">이용약관</a></li>
						<li><a href="javascript:openPop('2')">개인정보취급방침</a></li>
					</ul>
				</div>
				<script type="text/javascript">
					//팝업 띄우기
					function openPop(num) {
						var num = num;

						console.clear()

						switch (num) {
						case "1":
							document.getElementById("popup_layer1").style.display = "block";
							break;

						case "2":
							document.getElementById("popup_layer2").style.display = "block";
							break;

						default:
							break;
						}

					}

					//팝업 닫기
					function closePop(num) {
						var num = num;

						console.clear()
						switch (num) {
						case "1":
							document.getElementById("popup_layer1").style.display = "none";
							break;

						case "2":
							document.getElementById("popup_layer2").style.display = "none";
							break;

						default:
							break;
						}

					}
				</script>
			</div>
			
			<div class="txt inner">
			
				<div class="foot_notice">
					<h2 class="t">Notice</h2>
					<ul class="fs slick-initialized slick-slider slick-vertical">
						<div aria-live="polite" class="slick-list draggable" style="height: 44.1875px;">
							<div class="slick-track footerNotice footerNoticeSlick" style="opacity: 1; height: 310px; ">
								<!-- footerNotice Ajax 뿌려주는 곳 -->
							</div>
						</div>
					</ul>
				</div>
				<script>
					$(function() {
						footerNotice();
						
					});	
					
					// 공지사항 최근 게시물 slick 반응형 포함 조회
					function footerNotice() {
						$.ajax({
			     			url : "footerNotice.no",
			     			data : {},
			     			success : function(list){
			     				$(".footerNotice").html(list);
			     				
			     				footerNoticeSlick();
			     			},
			     			error : function(){
			     				console.log("footerNotice 통신실패");	
			     			}
			     		})
			     		
			     		
					}
					
					
					// 메인 베너 slick 반응형
					function footerNoticeSlick() {
						$('.footerNotice').slick({
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
							vertical : true,		// 세로 방향 슬라이드 옵션
							draggable : true, 	//드래그 가능 여부 
						});
					}
				</script>
				
				<div class="clearfix">
					<div class="l">
						<address>
							KH정보교육원 ｜ 사업자등록번호 : 851-87-00622 ｜ 서울 강남 제2014-01호 ｜ 대표자 : 양진선 ｜ 책임자 : 최홍석 ｜ 개인정보관리책임자 : 양진선 <br> 강남지원 1관 : 서울특별시 강남구 테헤란로14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F <br> 강남지원 2관 : 서울특별시 강남구 테헤란로10길 9 그랑프리 빌딩 4F, 5F, 7F <br> 강남지원 3관 : 서울특별시 강남구 테헤란로 130 호산빌딩 5F, 6F <br> 종로지원 : 서울특별시 중구 남대문로 120 그레이츠 청계(구 대일빌딩) 2F, 3F <br> 당산지원 : 서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F, 20F <br>
						</address>
						<p class="copyright">Copyright © 1998-2023 KH Information Educational Institute All Right Reserved</p>
					</div>
				</div>
			</div>
			<button type="button" class="gotop" style="opacity: 0.7; cursor: pointer; display: inline-block;">TOP</button>
		</footer>
	</section>
</body>
</html>