<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Core -->
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!-- XML -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- I18N -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!-- Database -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section id="wrap">
<dl class="accessibilityWrap">
	<dt class="hide"><strong>바로가기 메뉴</strong></dt>
	<dd><a href="#cont">본문 바로가기</a></dd>
	<dd><a href="#top_nav">주메뉴 바로가기</a></dd>
</dl>


<!-- // -->

<span itemscope="" itemtype="http://schema.org/Organization" style="display: none;">
<a itemprop="sameAs" href="https://www.youtube.com/channel/UCCqaPJqI5q1kfO51qWWOjrQ"><span class="hide">유튜브</span></a>
<a itemprop="sameAs" href="https://www.instagram.com/sejongcenter/"><span class="hide">인스타그램</span></a>
<a itemprop="sameAs" href="https://www.facebook.com/sjcenter"><span class="hide">페이스북</span></a>
<a itemprop="sameAs" href="https://blog.naver.com/sejongnanum"><span class="hide">블로그</span></a>
<a itemprop="sameAs" href="https://twitter.com/SEJONG_CENTER"><span class="hide">트위터</span></a>
</span>

<script src="/static/portal/js/ksearch/top_apc.js"></script>
<script src="/static/portal/js/jquery.rwdImageMaps.js"></script>


<div id="seoul-common-gnb"></div>

		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->


	
<script>
	gnbList(); // 로그인 체크 ajax
	var interestLoginChk = false; 
	function gnbList(){
	    $.ajax({
	        type: "post",
	        url: "/portal/main/loginChk.json",
	        dataType: "json",
	        success: function(data) {
	        	
				if(data.loginChk == false){
					//alert("로그아웃 상태 상단 메뉴 : "+$("#top_nav").is(":visible"));
					if($("#top_nav").is(":visible") == true){ //PC
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
				}else{
					//alert("로그인 상태 상단 메뉴 : "+ $("#top_nav").is(":visible"));
					if($("#top_nav").is(":visible") == true){ //PC
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

	function drawTopLeftList(){
		$.post("/portal/search/search/headerPerform.do?viewType=CONTBODY",
		null,
		function(data) {
			console.log(data);
			$("#top_apc_left_list").html(data);
		});
	}

	// 최상단 검색창에서 키워드 이벤트 처리
	$("#sch_word").keyup(function(key) {
		if (key.keyCode == 13) {
			goTopSearch();
		}else{
			drawTopApcList();
		}
	});


	function checkList() {
		window.open("/portal/ticket.do");
	}



</script>


<div id="depth_w" class="">
		<div class="inner">
			<ul class="clearfix dot dep1 li3">
				<li class="home">
					<span><span>HOME</span></span>
				</li>
				<li>
					<div class="rel">
					<a href="#"><span>뉴스·소식</span></a>
					<ul class="depth">
						
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
					<a href="#"><span>새소식</span></a>
					<ul class="depth" style="display: none;">
					<li><a href="/portal/bbs/B0000001/list.do?menuNo=200042"><span>새소식</span></a></li><li><a href="/portal/bbs/B0000017/list.do?menuNo=200040"><span>뉴스레터</span></a></li><li><a href="/portal/bbs/B0000040/list.do?menuNo=200199"><span>세종문화N</span></a></li>
					</ul>
					</div>
				</li>
				
				<li>
					<div class="rel">
					<a href="#"><span>세종소식</span></a>
					<ul class="depth" style="display: none;">
					
						<li><a href="/portal/bbs/B0000001/list.do?menuNo=200042"><span>세종소식</span></a></li>
					
						<li><a href="/portal/bbs/B0000003/list.do?menuNo=200088"><span>입찰공고</span></a></li>
					
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




<article class="bbs_w inner">
	<div class="bbs-category clearfix">

		<ul class="clearfix tabs-st3" id="etc_gubun">
			<li class="active"><a href="#"><span>전체</span></a></li>
			<li class=""><a href="#"><span>입찰공고</span></a></li>
			<li class=""><a href="#"><span>채용공고</span></a></li>
			<li class=""><a href="#"><span>대관공고</span></a></li>
			<li class=""><a href="#"><span>안내</span></a></li>
			<li class=""><a href="#"><span>합격자발표</span></a></li>
			<li class=""><a href="#"><span>티켓오픈안내</span></a></li>
		</ul>

		<div class="txt">세종문화회관의 공지사항 및 최신 소식을 알려드립니다.</div>

		<form name="frm" id="frm" method="get" action="/portal/bbs/B0000001/list.do">
			<input type="hidden" name="bbsId">
			<input type="hidden" name="menuNo" value="200042">
			<input type="hidden" name="pageIndex" value="1">

			<div class="bbs-sch">
				<label for="searchWrd" class="hide">검색어</label>
				<input type="hidden" name="searchCnd" id="searchCnd" value="1">
				<input type="text" id="searchWrd" name="searchWrd" placeholder="검색어를 입력해주세요." value="">
				<button type="button" onclick="search('1')" class="b-sh">검색</button>
			</div>
		</form>

	</div>

	<table class="bbs-list">
		<caption>번호, 제목, 작성일, 조회수로 구성된 공지사항 게시판</caption>
		<thead>
			<tr>
				<th scope="col" class="no">번호</th>
				<th scope="col" class="tit">제목</th>
				<th scope="col" class="date">작성일</th>
				<th scope="col" class="hit">조회수</th>
			</tr>
		</thead>
		<tbody>
			
			
				
				<tr>
					<td>
						<span>공지</span>
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45433&amp;menuNo=200042&amp;etcGubun=&amp;pageIndex=1">[안내] &nbsp;코로나19 확산방지를 위한 세종문화회관 관람안내</a></td>
					<td>2022.05.04</td>
					<td class="hit">2743</td>
				</tr>
				
			
				
				<tr>
					<td>
						3882
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45936&amp;menuNo=200042&amp;etcGubun=&amp;pageIndex=1">[합격자발표] &nbsp;(재)세종문화회관 제10차 계약직 직원 공개채용 서류전형 합격자 공고</a></td>
					<td>2022.12.27</td>
					<td class="hit">35</td>
				</tr>
				
			
				
				<tr>
					<td>
						3881
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45935&amp;menuNo=200042&amp;etcGubun=&amp;pageIndex=1">[입찰공고] &nbsp;청소 소모품 연간 단가계약 입찰 공고</a></td>
					<td>2022.12.27</td>
					<td class="hit">2</td>
				</tr>
				
			
				
				<tr>
					<td>
						3880
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45934&amp;menuNo=200042&amp;etcGubun=&amp;pageIndex=1">[입찰공고] &nbsp;세종문화회관 홈페이지 통합 유지보수 사업 용역 입찰 재공고(협상에 의한 계약)</a></td>
					<td>2022.12.23</td>
					<td class="hit">4</td>
				</tr>
				
			
				
				<tr>
					<td>
						3879
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45933&amp;menuNo=200042&amp;etcGubun=&amp;pageIndex=1">[입찰공고] &nbsp;세종문화회관 전자지급결제대행사 선정 용역 입찰 재공고</a></td>
					<td>2022.12.23</td>
					<td class="hit">5</td>
				</tr>
				
			
				
				<tr>
					<td>
						3878
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45931&amp;menuNo=200042&amp;etcGubun=&amp;pageIndex=1">[입찰공고] &nbsp;꿈의숲아트센터 시설(시설,청소,경비,무대)관리용역 전자입찰 재공고</a></td>
					<td>2022.12.22</td>
					<td class="hit">25</td>
				</tr>
				
			
				
				<tr>
					<td>
						3877
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45929&amp;menuNo=200042&amp;etcGubun=&amp;pageIndex=1">[채용공고] &nbsp;세종문화회관 미술관 기획전시 부매니저 모집 공고</a></td>
					<td>2022.12.21</td>
					<td class="hit">911</td>
				</tr>
				
			
				
				<tr>
					<td>
						3876
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45926&amp;menuNo=200042&amp;etcGubun=&amp;pageIndex=1">[티켓오픈안내] &nbsp;라이브러리컴퍼니 자선음악회 추가 좌석 티켓오픈 안내</a></td>
					<td>2022.12.15</td>
					<td class="hit">507</td>
				</tr>
				
			
				
				<tr>
					<td>
						3875
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45925&amp;menuNo=200042&amp;etcGubun=&amp;pageIndex=1">[입찰공고] &nbsp;세종문화회관 터보냉동기 구매설치 입찰공고(긴급)</a></td>
					<td>2022.12.15</td>
					<td class="hit">41</td>
				</tr>
				
			
				
				<tr>
					<td>
						3874
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45924&amp;menuNo=200042&amp;etcGubun=&amp;pageIndex=1">[입찰공고] &nbsp;꿈의숲아트센터 시설(시설,청소,경비,무대)관리 용역 전자입찰 공고</a></td>
					<td>2022.12.13</td>
					<td class="hit">45</td>
				</tr>
				
			
				
		</tbody>
	</table>

	
		<div class="paginationSet"><ul class="pagination pagination-centered"><li class="i first disabled"><a title="처음 목록" href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;etcGubun=&amp;pageIndex=1" onclick="return false;"><span class="s"><span>처음 <span class="t">목록</span></span></span></a></li><li class="i prev disabled"><a title="이전 목록" href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;etcGubun=&amp;pageIndex=0" onclick="return false;"><span class="s"><span>이전 <span class="t">목록</span></span></span></a></li><li class="active"><span><em title="현재목록"><span>1</span></em></span></li><li><a href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;etcGubun=&amp;pageIndex=2"><span>2</span></a></li><li><a href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;etcGubun=&amp;pageIndex=3"><span>3</span></a></li><li><a href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;etcGubun=&amp;pageIndex=4"><span>4</span></a></li><li><a href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;etcGubun=&amp;pageIndex=5"><span>5</span></a></li><li class="i next"><a title="다음 목록" href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;etcGubun=&amp;pageIndex=6"><span class="s"><span>다음 <span class="t">목록</span></span></span></a></li><li class="i end"><a title="마지막 목록" href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;etcGubun=&amp;pageIndex=389"><span class="s"><span>끝 <span class="t">목록</span></span></span></a></li></ul></div>
	

</article>



<script>
$(document).ready(function(){
	$('#etc_gubun').find('li').each(function(){
		$(this).find('a').click(function(){
			var etcGubun = $(this).find('span').html();
			if(etcGubun == "전체") {
				etcGubun = '';
			}
			location.href="/portal/bbs/B0000001/list.do?menuNo=200042&etcGubun="+etcGubun;
			return false;
		});

	});
});

function search(pageNo) {
	if( $("#searchWrd").val() == null || $("#searchWrd").val() == "" ) {
		alert("검색어를 입력해 주세요.");
		return false;
	}
	document.frm.pageIndex.value = pageNo;
	document.frm.submit();
}
</script>

		</div>
	</div>

</div><!-- #cont -->


<!-- 만족도 조사 -->

<!-- //만족도 조사 -->

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
				<button type="button" title="새창으로 이동합니다.">GO</button>
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
				<button type="button" title="새창으로 이동합니다.">GO</button>
				</li>
			</ul>
			<ul class="l">
				<li><a href="/portal/main/contents.do?menuNo=200148">개인정보처리방침</a></li>
				<li><a href="/portal/main/contents.do?menuNo=200150">이메일무단수집거부</a></li>
				<li><a href="/portal/main/contents.do?menuNo=200151">고객서비스헌장</a></li>
				<li><a href="/portal/main/contents.do?menuNo=200082">오시는 길 </a></li>
				<li><a href="http://210.91.5.180" target="_blank" title="새창으로 이동합니다.">원격지원</a></li>
				<li><a href="/portal/singl/siteMap/list.do?menuNo=200162">사이트 맵</a></li>
			</ul>
		</div>
	</div>
	<div class="txt inner">
		<div class="foot_notice">
			<h2 class="t">Notice</h2>
			<ul class="fs slick-initialized slick-slider slick-vertical"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous slide" role="button" style="">Previous slide</button>
				
				<div aria-live="polite" class="slick-list draggable" style="height: 47px;"><div class="slick-track" style="opacity: 1; height: 329px; transform: translate3d(0px, -47px, 0px);"><li class="item slick-slide slick-cloned" data-slick-index="-1" id="" aria-hidden="true" tabindex="-1" style="width: 974px;">
					<div><a href="/portal/bbs/B0000001/view.do?nttId=45931&amp;menuNo=200042" tabindex="-1">[입찰공고] &nbsp;꿈의숲아트센터 시설(시설,청소,경비,무대)관리용역 전자입찰 재공고</a></div>
				</li><li class="item slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" role="option" tabindex="-1" style="width: 974px;">
					<div><a href="/portal/bbs/B0000001/view.do?nttId=45936&amp;menuNo=200042" tabindex="0">[합격자발표] &nbsp;(재)세종문화회관 제10차 계약직 직원 공개채용 서류전형 합격자 공고</a></div>
				</li><li class="item slick-slide" data-slick-index="1" aria-hidden="true" role="option" tabindex="-1" style="width: 974px;">
					<div><a href="/portal/bbs/B0000001/view.do?nttId=45935&amp;menuNo=200042" tabindex="-1">[입찰공고] &nbsp;청소 소모품 연간 단가계약 입찰 공고</a></div>
				</li><li class="item slick-slide" data-slick-index="2" aria-hidden="true" role="option" tabindex="-1" style="width: 974px;">
					<div><a href="/portal/bbs/B0000001/view.do?nttId=45934&amp;menuNo=200042" tabindex="-1">[입찰공고] &nbsp;세종문화회관 홈페이지 통합 유지보수 사업 용역 입찰 재공고(협상에 의한 계약)</a></div>
				</li><li class="item slick-slide" data-slick-index="3" aria-hidden="true" role="option" tabindex="-1" style="width: 974px;">
					<div><a href="/portal/bbs/B0000001/view.do?nttId=45933&amp;menuNo=200042" tabindex="-1">[입찰공고] &nbsp;세종문화회관 전자지급결제대행사 선정 용역 입찰 재공고</a></div>
				</li><li class="item slick-slide" data-slick-index="4" aria-hidden="true" role="option" tabindex="-1" style="width: 974px;">
					<div><a href="/portal/bbs/B0000001/view.do?nttId=45931&amp;menuNo=200042" tabindex="-1">[입찰공고] &nbsp;꿈의숲아트센터 시설(시설,청소,경비,무대)관리용역 전자입찰 재공고</a></div>
				</li><li class="item slick-slide slick-cloned" data-slick-index="5" id="" aria-hidden="true" tabindex="-1" style="width: 974px;">
					<div><a href="/portal/bbs/B0000001/view.do?nttId=45936&amp;menuNo=200042" tabindex="-1">[합격자발표] &nbsp;(재)세종문화회관 제10차 계약직 직원 공개채용 서류전형 합격자 공고</a></div>
				</li></div></div>
				
				
				
				
				
				
				
				
				
			<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next slide" role="button" style="">Next slide</button></ul>
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
					<script> window.addEventListener('DOMContentLoaded', function() {var m3_b = ''; if(document.cookie.indexOf('ACEUACS=')>-1){var m3_b=document.cookie.substr(document.cookie.indexOf('ACEUACS=') + 8, 19);}document.getElementById('e2230b85').src='https://delivery.dighty.com/www/delivery/afr.php?zoneid=509&bd='+m3_b+'&cb=INSERT_RANDOM_NUMBER_HERE';});</script>
					<!-- <iframe id='e2230b85' name='e2230b85' width='300' height='100' style='border:none'>
						<a href='https://delivery.dighty.com/www/delivery/ck.php?n=e2230b85&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'>
							<img src='https://delivery.dighty.com/www/delivery/avw.php?zoneid=509&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=e2230b85' alt='' />
						</a>
					</iframe>  -->
					<!-- <iframe id='e2230b85' name='e2230b85' width='300' height='100'  title="서울시 배너"></iframe> -->
					<div class="">	
						<!-- Dighty : [서울문화포털] 메인하단 (300*100) 태그 -->	
						<script>	
						<!--//<![CDATA[	
							var m3_b = '';	
							var m3_u = (location.protocol == 'https:' ? 'https://delivery.dighty.com/www/delivery/ajs.php'	
									: 'http://delivery.dighty.com/www/delivery/ajs.php');	
							var m3_r = Math.floor(Math.random() * 99999999999);	
							if (document.cookie.indexOf('ACEUACS=') > -1) {	
								var m3_b = document.cookie	
										.substr(document.cookie	
												.indexOf('ACEUACS=') + 8, 19);	
							}	
							if (!document.MAX_used)	
								document.MAX_used = ',';	
							document	
									.write("<scr"	
											+ "ipt type='text/javascript' src='"	
											+ m3_u);	
							document.write("?zoneid=940");	
							document.write('&amp;cb=' + m3_r);	
							if (m3_b != '')	
								document.write('&amp;bd=' + m3_b);	
							if (document.MAX_used != ',')	
								document.write("&amp;exclude="	
										+ document.MAX_used);	
							document.write(document.charset ? '&amp;charset='	
									+ document.charset	
									: (document.characterSet ? '&amp;charset='	
											+ document.characterSet : ''));	
							document.write("&amp;loc="	
									+ escape(window.location));	
							if (document.referrer)	
								document.write("&amp;referer="	
										+ escape(document.referrer));	
							if (document.context)	
								document.write("&context="	
										+ escape(document.context));	
							if (document.mmm_fo)	
								document.write("&amp;mmm_fo=1");	
							document.write("'><\/scr"+"ipt>");	
							//]]>	
						</script><script type="text/javascript" src="https://delivery.dighty.com/www/delivery/ajs.php?zoneid=940&amp;cb=77358719192&amp;charset=UTF-8&amp;loc=https%3A//www.sejongpac.or.kr/portal/bbs/B0000001/list.do%3FmenuNo%3D200042%26etcGubun%3D&amp;referer=https%3A//www.sejongpac.or.kr/portal/bbs/B0000001/list.do%3FmenuNo%3D200042%26etcGubun%3D%25EC%2595%2588%25EB%2582%25B4"></script><a href="https://delivery.dighty.com/www/delivery/ck.php?oaparams=2__bannerid=10655__zoneid=940__cb=5445ce7e4a__oadest=https%3A%2F%2Fmediahub.seoul.go.kr%2Fsearch%2FsearchList.do%3Fkeyword%3D%25EA%25B8%25B0%25EC%2596%25B5%25EC%25A0%2584%25EB%258B%25AC%25EC%259E%2590" target="_blank" rel="noopener noreferrer"><img src="https://cm.dighty.com/creative/0341b9560a630fa306a8a4ca46943ded.jpg" width="300" height="100" alt="사진으로 보는 그때 그 시절 기억전달자 몰아보기" title="사진으로 보는 그때 그 시절 기억 전 달자 몰아보기"></a><div id="beacon_5445ce7e4a" style="position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="https://delivery.dighty.com/www/delivery/lg.php?bannerid=10655&amp;campaignid=1565&amp;zoneid=940&amp;loc=https%3A%2F%2Fwww.sejongpac.or.kr%2Fportal%2Fbbs%2FB0000001%2Flist.do%3FmenuNo%3D200042%26etcGubun%3D&amp;referer=https%3A%2F%2Fwww.sejongpac.or.kr%2Fportal%2Fbbs%2FB0000001%2Flist.do%3FmenuNo%3D200042%26etcGubun%3D%25EC%2595%2588%25EB%2582%25B4&amp;cb=5445ce7e4a" width="0" height="0" alt="" style="width: 0px; height: 0px;"></div>
	
						<noscript>	
							<a	
								href='https://delivery.dighty.com/www/delivery/ck.php?n=8d6dc35e&amp;cb=INSERT_RANDOM_NUMBER_HERE'	
								target='_blank'> <img	
								src='https://delivery.dighty.com/www/delivery/avw.php?zoneid=940&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=8d6dc35e'	
								alt="">	
							</a>	
						</noscript>	
					</div>
					
					
				</div>
				<div class="r">
					<ul class="banner clearfix">
						<!-- <li><a href="http://www.goodcontent.kr/upload_public/CERTIDW/2018-06-0021_d9el2kqx85l531f20180607075350.png" target="_blank" title="새 창 열림"><img src="/static/portal/img/common/f_b1.gif" alt="굿 콘텐츠 서비스 Good Content Service" /></a></li> -->
						<li class="seoul"><a href="https://www.seoul.go.kr/main/index.jsp" target="_blank" title="새창 열림">
						<img src="/static/portal/img/common/seoul.png" alt="서울시 휘장">
						</a></li>
						<li class="web"><a href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110" target="_blank" title="새 창 열림"><img src="/static/commons/img/web.png" alt="과학기술정보통신부 WEB ACCESSIBILITY"></a></li>
					</ul>
					<p>전화예매 및 문의 : <strong>02-399-1000</strong></p>
				</div>
			</div>
		</div>
	</div>
	<button type="button" class="gotop" style="opacity: 0.7; cursor: pointer;">TOP</button>
</footer>


<!--  Google Analytics -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-69200327-1', 'auto');
  ga('send', 'pageview');

</script>
<script>
//반응형 이미지맵 (jquery.rwdImageMaps.js)
$(function(){
	$('img[usemap]').rwdImageMaps();
	$("#img").width("100%");
});

$("#e2230b85").bind("DOMNodeRemoved", function() {
    //$("a").append("<style>::-webkit-scrollbar{width:8px;height:8px}::-webkit-scrollbar-thumb{background:#ff7c94;border-radius:10px}</style>")
})

</script>
<!-- //세종문화N iframe title 추가 -->
<script>
    $( '#sejongPdf iframe' ).attr( 'title', '세종 센터 매거진' );
</script>
	<script>	
//ReservationTitle	
function ReservationTitlePopWindow(){ 	
	if (interestLoginChk == true) { //header 에서 정의 로그인 여부	
		$(".ReservationTitle").attr("title", "새창으로 이동합니다.");	
	}	
}	
ReservationTitlePopWindow();	

console.log("221");
</script>




<script src="/static/portal/js/common.js"></script>
</section>


</body>
</html>