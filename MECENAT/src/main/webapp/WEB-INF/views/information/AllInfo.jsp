<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->

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
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45433&amp;menuNo=200042&amp;pageIndex=1">[안내] &nbsp;코로나19 확산방지를 위한 세종문화회관 관람안내</a></td>
					<td>2022.05.04</td>
					<td class="hit">2741</td>
				</tr>
				
			
				
				<tr>
					<td>
						3882
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45936&amp;menuNo=200042&amp;pageIndex=1">[합격자발표] &nbsp;(재)세종문화회관 제10차 계약직 직원 공개채용 서류전형 합격자 공고</a></td>
					<td>2022.12.27</td>
					<td class="hit">20</td>
				</tr>
				
			
				
				<tr>
					<td>
						3881
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45935&amp;menuNo=200042&amp;pageIndex=1">[입찰공고] &nbsp;청소 소모품 연간 단가계약 입찰 공고</a></td>
					<td>2022.12.27</td>
					<td class="hit">2</td>
				</tr>
				
			
				
				<tr>
					<td>
						3880
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45934&amp;menuNo=200042&amp;pageIndex=1">[입찰공고] &nbsp;세종문화회관 홈페이지 통합 유지보수 사업 용역 입찰 재공고(협상에 의한 계약)</a></td>
					<td>2022.12.23</td>
					<td class="hit">4</td>
				</tr>
				
			
				
				<tr>
					<td>
						3879
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45933&amp;menuNo=200042&amp;pageIndex=1">[입찰공고] &nbsp;세종문화회관 전자지급결제대행사 선정 용역 입찰 재공고</a></td>
					<td>2022.12.23</td>
					<td class="hit">5</td>
				</tr>
				
			
				
				<tr>
					<td>
						3878
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45931&amp;menuNo=200042&amp;pageIndex=1">[입찰공고] &nbsp;꿈의숲아트센터 시설(시설,청소,경비,무대)관리용역 전자입찰 재공고</a></td>
					<td>2022.12.22</td>
					<td class="hit">25</td>
				</tr>
				
			
				
				<tr>
					<td>
						3877
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45929&amp;menuNo=200042&amp;pageIndex=1">[채용공고] &nbsp;세종문화회관 미술관 기획전시 부매니저 모집 공고</a></td>
					<td>2022.12.21</td>
					<td class="hit">909</td>
				</tr>
				
			
				
				<tr>
					<td>
						3876
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45926&amp;menuNo=200042&amp;pageIndex=1">[티켓오픈안내] &nbsp;라이브러리컴퍼니 자선음악회 추가 좌석 티켓오픈 안내</a></td>
					<td>2022.12.15</td>
					<td class="hit">505</td>
				</tr>
				
			
				
				<tr>
					<td>
						3875
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45925&amp;menuNo=200042&amp;pageIndex=1">[입찰공고] &nbsp;세종문화회관 터보냉동기 구매설치 입찰공고(긴급)</a></td>
					<td>2022.12.15</td>
					<td class="hit">41</td>
				</tr>
				
			
				
				<tr>
					<td>
						3874
					</td>
					<td class="tit"><a href="/portal/bbs/B0000001/view.do?nttId=45924&amp;menuNo=200042&amp;pageIndex=1">[입찰공고] &nbsp;꿈의숲아트센터 시설(시설,청소,경비,무대)관리 용역 전자입찰 공고</a></td>
					<td>2022.12.13</td>
					<td class="hit">45</td>
				</tr>
				
			
				
		</tbody>
	</table>

	
		<div class="paginationSet"><ul class="pagination pagination-centered"><li class="i first disabled"><a title="처음 목록" href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;pageIndex=1" onclick="return false;"><span class="s"><span>처음 <span class="t">목록</span></span></span></a></li><li class="i prev disabled"><a title="이전 목록" href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;pageIndex=0" onclick="return false;"><span class="s"><span>이전 <span class="t">목록</span></span></span></a></li><li class="active"><span><em title="현재목록"><span>1</span></em></span></li><li><a href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;pageIndex=2"><span>2</span></a></li><li><a href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;pageIndex=3"><span>3</span></a></li><li><a href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;pageIndex=4"><span>4</span></a></li><li><a href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;pageIndex=5"><span>5</span></a></li><li class="i next"><a title="다음 목록" href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;pageIndex=6"><span class="s"><span>다음 <span class="t">목록</span></span></span></a></li><li class="i end"><a title="마지막 목록" href="/portal/bbs/B0000001/list.do?menuNo=200042&amp;pageIndex=389"><span class="s"><span>끝 <span class="t">목록</span></span></span></a></li></ul></div>
	

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

</div>
</body>
</html>