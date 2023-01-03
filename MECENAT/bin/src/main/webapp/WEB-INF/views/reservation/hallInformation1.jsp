<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Core -->
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> <!-- XML -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- I18N -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> <!-- Database -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <!-- Functions -->
<!-- 대관 가능한 공연장 세부내용 소개페이지 + 대관신청 버튼 // 심혜원ing -->
<!DOCTYPE html>
<html lang="zxx">
<title>공연홀 안내</title>

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

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
	<jsp:include page="../common/header.jsp"/>
	<!-- Header End -->

    <!-- Blog Details Section Begin -->
	    <secion id="cont" tabindex="0">
		<div id="sub_page">
			<div class="inner">
				<div class="sub-t">
					<h2 class="t">시설소개</h2>
					<div id="loc">
						<ul class="inner dot clearfix">
							<li class="home"><span class="hide">home</span></li>
							<li>시설소개</li>
							
							<li>세종문화회관</li>
							
							<li>세종대극장</li>
							
						</ul>
					</div>
				</div>
	
				<ul class="tabs-st1 clearfix li2">
					<li><a href=""><span style="height:50px; background-color:#111111; color:#FFFFFF">Concert Hall</span></a></li>
					<li><a href="information.hl?hallName=Dreaming Hall"><span style="height:50px;">Dreaming Hall</span></a></li>
				</ul>
			</div>
	
			<article class="sub_page">
			
	<div class="f18 facility">
			<div class="cont">
				<h3 class="tit-st2">${hallName} 콘서트홀</h3>
				<div class="bg">
					<ul class="s slick-initialized slick-slider">
						<div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 778px;"><li class="item slick-slide slick-current slick-active" style="background-image: url(&quot;/static/organization/img/facility/1/bg.jpg&quot;); width: 389px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;" data-slick-index="0" aria-hidden="false" role="option" tabindex="-1"><span class="hide">대극장 정면 이미지</span></li><li class="item slick-slide" style="background-image: url(&quot;/static/organization/img/facility/1/bg2.jpg&quot;); width: 389px; position: relative; left: -389px; top: 0px; z-index: 998; opacity: 0;" data-slick-index="1" aria-hidden="true" role="option" tabindex="-1"><span class="hide">대극장 측면 이미지</span></li></div></div>
						
					</ul>
					<div class="in inner">						
						<img src="resources/img/reserve/concerthall_info.jpg" style="width:80%; height:auto;"/>
						<h4 class="t">모든 장르의 공연을 담아낼 수 있는 <strong class="color-purple">종합 예술 공간</strong>입니다. </h4>
						<p>세종대극장은 첨단 시설을 갖춘 세계적 수준의 공연장으로 1, 2, 3층에 걸쳐 3,022석의 객석을 갖추고 있으며 1, 2층 객석의자와 3층 벽면에 부착된 국내 유일의 LCD 모니터를 통해 공연자막과 동영상 서비스를 제공하고 있습니다. 특히 최신 음향 장치를 설치하여 객석 구석구석까지 소리가 잘 전달되는 탁월한 음향 수준을 구현했습니다. 또한 무대 전환을 도와주는 배튼이 총 102개로 전환 속도가 빨라 역동적인 무대를 만들어 낼 수 있습니다. 클래식뿐만 아니라 다양한 장르를 소화해 낼 수  있는 다목적홀로 해외 유명 연주자들도 찬사를 보내는 세계적 수준의 공연장입니다.</p>
						<div class="btn clearfix">
<!-- 							<a href="/portal/main/contents.do?menuNo=200119" target="_blank" title="새창 열림" class="btn-down2 long">대관 무대기술자료 다운로드</a> -->
						</div>
					</div>
				</div>
	
				<div class="group_w inner">
					<ul class="group clearfix com_s">
						<li class="img l">
							<ul class="s1 slick-initialized slick-slider">
								<div aria-live="polite" class="slick-list draggable">
									<div class="slick-track" style="opacity: 1; width: 1388px; height:195px; transform: translate3d(-347px, 0px, 0px);">
										<li class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 347px; height:195px;">
											<img src="resources/img/reserve/concerthall_info2.jpg" alt="대극장 기둥 밤사진" style=" height:195px;">
										</li>
										<li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" role="option" tabindex="-1" style="width: 347px;">
											<img src="resources/img/reserve/concerthall_info3.jpg" alt="대극장 기둥 낮사진">
										</li>
										<li class="slick-slide" data-slick-index="1" aria-hidden="true" role="option" tabindex="-1" style="width: 347px; height:100%;">
											<img src="resources/img/reserve/concerthall_info4.jpg" alt="대극장 기둥 밤사진">
										</li>
										<li class="slick-slide slick-cloned" data-slick-index="2" aria-hidden="true" tabindex="-1" style="width: 347px;">
											<img src="resources/img/reserve/concerthall_info5.jpg" alt="대극장 기둥 낮사진" >
										</li>
									</div>
								</div>
								
						</li>
						<li class="txt r">
							<strong class="t">비천상</strong>
							<p>세종대극장 전면 기둥 좌우 벽면에 위치하고 있는 부조작품인 비천상은 김영중이 1년 3개월에 거쳐 만든 작품입니다. 1978년 세종문화회관의 개관과 함께 일반인에 선보인 이 작품은, 전체 높이 11m, 폭은 6.75m, 부조의 두께는 45cm이며, 90cm X 70cm X 45cm짜리 화강석 324조각을 붙여서 완성하였습니다. <br><br>비천상은 세종문화회관이 고전을 현대화한 양식으로 설계되었다는 점에서 건물과 가장 잘 어울리는 예술작품이라고 평가 받고 있습니다. 
							</p>
						</li>
					</ul>

				</div>
				<div>
					
				</div>
			
			</div>
		</div><!-- .facility -->
			</article>
	
		</div><!-- #sub_page -->
			
	
	<footer id="footer">
		<div class="top">
			<div class="inner clearfix">
				<ul class="r clearfix">
					<li>
					<label for="footlink" class="hide">패밀리 사이트 링크</label>
					<select id="footlink">
						<option value="">패밀리 사이트</option>
						<option value="http://academy.sejongpac.or.kr">세종예술아카데미​</option>
						<option value="http://happy1000.sejongpac.or.kr">천원의행복</option>
						<option value="http://sjartgroups.or.kr">서울시예술단​</option>
						<option value="http://sejongstory.or.kr">세종이야기·충무공이야기​</option>
						<!-- <option value="http://samcheonggak.or.kr">삼청각</option> -->
						<!-- <option value="http://dfac.sejongpac.or.kr">꿈의숲 아트센터</option> -->
					</select>
					<button type="button">GO</button>
					</li>
					<li>
					<label for="footlink2" class="hide">관련 사이트 링크</label>
					<select id="footlink2">
						<option value="">관련사이트</option>
						<option value="http://www.seoul.go.kr/main/index.html">서울특별시​</option>
						<option value="https://www.clean.go.kr/cmm/secCtfc.do?menuId=M0406&amp;uprMenuId=M0392&amp;rqsTyCd=005&amp;menuCode=acs">공공기관 채용비리신고​</option>
						<option value="http://www.acrc.go.kr/acrc/index.do">국민권익 위원회</option>
						<option value="https://seoulsolution.kr/">서울정책아카이브</option>
						<option value="https://www.120dasan.or.kr/dsnc/main/main.do">120 다산콜센터​</option>
						<option value="http://eungdapso.seoul.go.kr/">서울특별시 응답소</option>
						<option value="http://culture.seoul.go.kr/index.do?_method=meet">서울문화포털</option>
						<option value="https://opengov.seoul.go.kr/">서울정보소통광장</option>
					</select>
					<button type="button">GO</button>
					</li>
				</ul>
				<ul class="l">
					<li><a href="/portal/main/contents.do?menuNo=200148">개인정보처리방침</a></li>
					<li><a href="/portal/main/contents.do?menuNo=200150">이메일무단수집거부</a></li>
					<li><a href="/portal/main/contents.do?menuNo=200151">고객서비스헌장</a></li>
					<li><a href="/portal/main/contents.do?menuNo=200082">오시는 길 </a></li>
					
					<li><a href="http://210.91.5.180" target="_blank" title="새 창 열림">원격지원</a></li>
				</ul>
			</div>
		</div>
		<div class="txt inner">
			<div class="foot_notice">
				<h2 class="t">Notice</h2>
				<ul class="fs slick-initialized slick-slider slick-vertical"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous slide" role="button" style="display: block;">Previous slide</button>
					
					<div aria-live="polite" class="slick-list draggable" style="height: 37px;"><div class="slick-track" style="opacity: 1; height: 259px; transform: translate3d(0px, -37px, 0px);"><li class="item slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 269px;">
						<a href="/portal/bbs/B0000001/view.do?nttId=45918&amp;menuNo=200042" tabindex="-1">세종문화회관 미술관 기획전시 도슨트 및 스탭 모집 공고</a>
					</li><li class="item slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" role="option" tabindex="-1" style="width: 269px;">
						<a href="/portal/bbs/B0000001/view.do?nttId=45926&amp;menuNo=200042" tabindex="0">라이브러리컴퍼니 자선음악회 추가 좌석 티켓오픈 안내</a>
					</li><li class="item slick-slide" data-slick-index="1" aria-hidden="true" role="option" tabindex="-1" style="width: 269px;">
						<a href="/portal/bbs/B0000001/view.do?nttId=45925&amp;menuNo=200042" tabindex="-1">세종문화회관 터보냉동기 구매설치 입찰공고(긴급)</a>
					</li><li class="item slick-slide" data-slick-index="2" aria-hidden="true" role="option" tabindex="-1" style="width: 269px;">
						<a href="/portal/bbs/B0000001/view.do?nttId=45924&amp;menuNo=200042" tabindex="-1">꿈의숲아트센터 시설(시설,청소,경비,무대)관리 용역 전자입찰 공고</a>
					</li><li class="item slick-slide" data-slick-index="3" aria-hidden="true" role="option" tabindex="-1" style="width: 269px;">
						<a href="/portal/bbs/B0000001/view.do?nttId=45923&amp;menuNo=200042" tabindex="-1">세종문화티켓 (서비스플라자, 현장매표소) 위탁 운영사 선정 입찰공고</a>
					</li><li class="item slick-slide" data-slick-index="4" aria-hidden="true" role="option" tabindex="-1" style="width: 269px;">
						<a href="/portal/bbs/B0000001/view.do?nttId=45918&amp;menuNo=200042" tabindex="-1">세종문화회관 미술관 기획전시 도슨트 및 스탭 모집 공고</a>
					</li><li class="item slick-slide slick-cloned" data-slick-index="5" aria-hidden="true" tabindex="-1" style="width: 269px;">
						<a href="/portal/bbs/B0000001/view.do?nttId=45926&amp;menuNo=200042" tabindex="-1">라이브러리컴퍼니 자선음악회 추가 좌석 티켓오픈 안내</a>
					</li></div></div>
					
					
					
					
					
					
					
					
					
				<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next slide" role="button" style="display: block;">Next slide</button></ul>
			</div>
			<div class="clearfix">
				<div class="l">
					<address>
					재단법인 세종문화회관 서울특별시 종로구 세종대로 175 (세종로) (우)03172<br>
					대표자 : 안호상 사업자등록번호 : 101-82-06773 <br>
					통신판매업신고 : 서울종로-0988호 <a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1018206773" target="_blank" class="link" title="새 창 열림">사업자 정보 확인</a>
					</address>
	
					<p class="copyright">COPYRIGHT(C) SEJONG CENTER FOR THE PERFORMING ARTS. ALL RIGHTS RESERVED</p>
				</div>
				<div class="r_w">
					<a href="http://www.i-award.or.kr/Web/Assess/FinalCandidateView.aspx?REG_SEQNO=10198" target="_blank" title="새창 열림"><img src="/static/portal/img/common/WA2020_winner.png" alt="WEB AWARD 20 WINNER" width="85"></a>
					<div class="link clearfix">
						<a href="http://delivery.acecounter.com/delivery/www/delivery/ck.php?n=e2230b85&amp;cb=INSERT_RANDOM_NUMBER_HERE" target="_blank">
							<img src="http://delivery.acecounter.com/delivery/www/delivery/avw.php?zoneid=509&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=e2230b85" border="0" alt="코로나 19 대응을 위한 의료 인력 모집">
						</a>
					</div>
					<div class="r">
						<ul class="banner clearfix">
							<!-- <li><a href="http://www.goodcontent.kr/upload_public/CERTIDW/2018-06-0021_d9el2kqx85l531f20180607075350.png" target="_blank" title="새 창 열림"><img src="/static/portal/img/common/f_b1.gif" alt="굿 콘텐츠 서비스 Good Content Service" /></a></li> -->
							<li class="seoul">
								<a href="https://www.seoul.go.kr/main/index.jsp" target="_blank">
									<img src="/static/portal/img/common/seoul.png" alt="서울시 휘장">
								</a>
							</li>
						</ul>
						<p>전화예매 및 문의 : <strong>02-399-1000</strong></p>
					</div>
				</div>
			</div>
		</div>
		<button type="button" class="gotop" style="opacity: 0.7; cursor: pointer; display: block;">TOP</button>
	</footer>
	
	<script>
	$('.foot_notice .fs').slick({
		vertical:true,
		verticalSwiping:true
	});
	</script>
	
	
	<!--  Google Analytics -->
	<script type="text/javascript">
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	
	  ga('create', 'UA-69200327-1', 'auto');
	  ga('send', 'pageview');
	
	</script>
		<script src="/static/organization/js/common.js"></script>
	
	</secion>
        <!-- Blog Details Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer">
            <div class="page-up">
                <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="footer__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="footer__nav">
                            <ul>
                                <li class="active"><a href="./index.html">Homepage</a></li>
                                <li><a href="./categories.html">Categories</a></li>
                                <li><a href="./blog.html">Our Blog</a></li>
                                <li><a href="#">Contacts</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                          Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

                      </div>
                  </div>
              </div>
          </footer>
          <!-- Footer Section End -->

          <!-- Search model Begin -->
          <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch"><i class="icon_close"></i></div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here.....">
                </form>
            </div>
        </div>
        <!-- Search model end -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/player.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

    </body>

    </html>