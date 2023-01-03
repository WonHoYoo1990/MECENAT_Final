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
<meta charset="UTF-8">
<title>MECENAT(목록) | 공연·전시·강좌 |</title>

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
<body class="vsc-initialized">
	<section id="wrap">
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->
		
		
		
		<section id="cont" tabindex="0">
			<div id="sub_page" style="padding:0">
				<br><br>
				<div class="">
				
					<form name="frm" id="frm" method="post" >
						<input type="hidden" name="pageIndex" value="1">
						<input type="hidden" name="searchSort" id="searchSort" value="2">
			
						<!-- 날짜클릭 -->
						<div class="inner">
							<div class="schedule__date type2">
								<a href="javascript:void(0);" class="arrow prev" >이전</a>
								<div class="title">
									<input type="text" name="sdate" id="period1" class="form-control" value="" readonly="readonly"/>
								</div>
								<a href="javascript:void(0);" class="arrow next">다음</a>
							</div>
							<div class="schedule_check">
								<p class="title">구분</p>
								
								<input type="checkbox" name="searchTypeData" class="searchType_all" id="hall_ck1" value="ALL" checked="checked">
								<label for="hall_ck1">전체</label>
								<input type="checkbox" name="searchTypeData" class="searchType" id="hall_ck2" value="1001,1002,1008,1006,9006,9014">
								<label for="hall_ck2">공연 </label>
								<div class="write">
									<input type="text" name="searchWrd" id="searchWrd" placeholder="검색어를 입력하세요" value="">
									<!-- <button type="button" formaction="subMainPerformanceSearch.perf" onclick="fn_search('1')">검색</button> -->
									<button type="button" id="searchWrdBtn">검색</button>
								</div>
							</div>
						</div>
					</form>
					<script type="text/javascript">
						$(()=>{
							subMainPerformanceList(); // 해당 날짜 list 조회
						})
						
						function sdateList (){ // 날짜별 list 조회 및 개수 조회
							
							var sdate = $("#period1").val();
							
							$.ajax({ // 공연 리스트 조회
							    url : 'subMainPerformanceList.perf',
							    data : {  
							      "sdate" : sdate
							    },
							    success : (list) => {  
							        console.log("통신 성공!");
				    				$(".bbs-today_thumb").html(list);
							    },
							    error : () => {
							        console.log("통신 실패!");
							    }
							});
							
							$.ajax({ // 공연 리스트 개수 조회
							    url : 'subMainPerformanceListCount.perf',
							    data : {  
							      "sdate" : sdate
							    },
							    success : (count) => {  
							        console.log("통신 성공 COUNT!");
				    				$(".listCount .etc_w .color-navy").html(count);
							    },
							    error : () => {
							        console.log("통신 실패 COUNT!");
							    }
							});
						}
						
						function subMainPerformanceList() { //subMainPerformance 첫페이지시 list 조회
							sdateList();
						}
						
						// 날짜 String 형변환 및 문자열 자르기
						document.getElementById('period1').value = new Date().toISOString().substring(0, 10);
						
						$('#period1').datepicker({ //달력
						      dateFormat: 'yy-mm-dd', 
						      language: 'kr', 
						   }).on('change', function () { // 달력 값이 변할 때마다
								sdateList();
						   });
						
						$('#searchWrdBtn').on('click', function() { //검색어 버튼 클릭시
							
							var searchWrd = $("#searchWrd").val();
							
							$.ajax({ // 공연 리스트 검색어 조회
							    url : 'subMainPerformanceSearch.perf',
							    data : {  
							      "searchWrd" : searchWrd 
							    },
							    success : function(result) {  
							        console.log("통신 성공!");
				    				
				    				$(".bbs-today_thumb").html(result);
							    },
							    error : function() {
							        console.log("통신 실패!");
							    }
							})

							$.ajax({ // 검색어 리스트 개수 조회
							    url : 'subMainPerformanceSearchCount.perf',
							    data : {  
							      "searchWrd" : searchWrd
							    },
							    success : function(count) {  
							        console.log("통신 성공 COUNT !");
				    				
				    				$(".listCount .etc_w .color-navy").html(count);
							    },
							    error : function() { 
							        console.log("통신 실패 COUNT!");
							    }
							})
						})
						
						$('[name="searchTypeData"]').click(function(){ // 카테고리 버튼 클릭시
							
							var searchType = $(this).val();
							console.log("this() : " + searchType)
							
							if(searchType == "ALL"){ //전체 버튼 클릭시
								$('.searchType').prop('checked', false);
								sdateList();
							}else{ // 전체 카테고리 외 클릭시
								$('.searchType_all').prop('checked', false);
								sdateList();
							}
							
							// fn_search('1');
						});
						
					</script>
					
					
			
					<!-- 페이지 시작 -->
					<article class="bbs-today_w">
						<div class="inner">
							<div class="top clearfix listCount">
								<div class="category">
									<span class="active" id="searchShort1"><a href="javascript:void(0);" onclick="fn_SearchSort('1');" title="선택됨">최신순</a></span>
									<span class="" id="searchShort2"><a href="javascript:void(0);" onclick="fn_SearchSort('2');">관심순</a></span>
								</div>
			
								<div class="etc_w">
									<span>검색 결과 총
										<strong class="color-navy"> </strong> 건
									</span>
								</div>
							</div>
							
							<!-- 공연 목록 -->
							<ul class="bbs-today_thumb clearfix">
								<!-- ajax 공연 리스트 뿌려지는 곳 -->
							</ul>
			
							<div class="paginationSet">
								<ul class="pagination pagination-centered">
									<li class="i first disabled">
										<a title="처음 목록" href="/portal/subMain/perform.do?sdate=2022-12-26&amp;pageIndex=1" onclick="return false;">
											<span class="s">
												<span>처음 
													<span class="t">목록</span>
												</span>
											</span>
										</a>
									</li>
									<li class="i prev disabled">
										<a title="이전 목록" href="/portal/subMain/perform.do?sdate=2022-12-26&amp;pageIndex=0" onclick="return false;">
											<span class="s">
												<span>이전 
													<span class="t">목록</span>
												</span>
											</span>
										</a>
									</li>
									<li class="active">
										<span>
											<em title="현재목록">
												<span>1</span>
											</em>
										</span>
									</li>
									<li class="i next disabled">
										<a title="다음 목록" href="/portal/subMain/perform.do?sdate=2022-12-26&amp;pageIndex=11" onclick="return false;">
											<span class="s">
												<span>다음 
													<span class="t">목록</span>
												</span>
											</span>
										</a>
									</li>
									<li class="i end disabled">
										<a title="마지막 목록" href="/portal/subMain/perform.do?sdate=2022-12-26&amp;pageIndex=1" onclick="return false;" data-endpage="1">
											<span class="s">
												<span>끝 
													<span class="t">목록</span>
												</span>
											</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
						
						<div class="bot">
							<div class="inner"  >
								<ul class="clearfix">
									<li class="item" style="width: 100%; background-size: cover;">
										<a href="setInfom.perf">
											<div class="img bg3"></div>
											<strong>좌석배치도</strong>
											<span>Seating plan</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</article>
					<script>
						function fn_SearchSort(searchSort){ // 리스트 정렬
							
							var searchSort = searchSort;
							
							var sdate = $("#period1").val();
							
							if (searchSort == 1) { // 최신순 클릭시 
								
								$.ajax({ // 공연 리스트 최신순 조회
								    url : 'subMainPerformanceSearchSort1.perf',
								    data : {  
								      "sdate" : sdate
								    },
								    success : function(list) {  
								        console.log("통신 성공 !");
					    				$(".bbs-today_thumb").html(list);
								    },
								    error : function() { 
								        console.log("통신 실패 !");
								    }
								})
								
								// 관심순 class 제거 및 최신순 class 추가
								document.getElementById('searchShort2').classList.remove('active');
								document.getElementById('searchShort1').classList.add('active');
								
							} else { // 관심순 클릭시
								
								// 최신순 class 제거 및 관심순 class 추가
								document.getElementById('searchShort1').classList.remove('active');
								document.getElementById('searchShort2').classList.add('active');
								
								$.ajax({ // 공연 리스트 관심순 조회
								    url : 'subMainPerformanceSearchSort2.perf',
								    data : {  
								      "sdate" : sdate
								    },
								    success : function(list) {  
								        console.log("통신 성공 !");
					    				$(".bbs-today_thumb").html(list);
								    },
								    error : function() { 
								        console.log("통신 실패 !");
								    }
								})
								

							}
						}
						
						function fn_search(pageNo) {
							document.frm.pageIndex.value = pageNo;
							document.frm.submit();
						}
				
						$('.prev').on('click', ()=>{ // 달력 이전 버튼 클릭시 
							var sdate = new Date($("#period1").val());
							sdate.setDate(sdate.getDate() - 1);
							sdate = dateFormat(sdate);
							console.log("sada : " + sdate)
			
							$("#period1").val(sdate);
							
							$.ajax({ // 공연 리스트 조회
							    url : 'subMainPerformanceList.perf',
							    data : {  // 보낼 데이터 (Object , String, Array)
							      "sdate" : sdate
							    },
							    success : (list) => {  
							        console.log("통신 성공 !");
				    				$(".bbs-today_thumb").html(list);
							    },
							    error : () => { // 결과 에러 콜백함수
							        console.log("통신 실패 !");
							    }
							})
							
							$.ajax({ // 공연 리스트 개수 조회
							    url : 'subMainPerformanceListCount.perf',
							    data : {  // 보낼 데이터 (Object , String, Array)
							      "sdate" : sdate
							    },
							    success : (count) => {  
							        console.log("통신 성공 COUNT !");
				    				$(".listCount .etc_w .color-navy").html(count);
							    },
							    error : () => { // 결과 에러 콜백함수
							        console.log("통신 실패 COUNT!");
							    }
							})
						});
							
						$('.next').on('click', ()=>{ // 달력 다음 버튼 클릭시
							var sdate = new Date($("#period1").val());
							sdate.setDate(sdate.getDate() + 1);
							sdate = dateFormat(sdate);
			
							$("#period1").val(sdate);

							$.ajax({ // 공연 리스트 조회
							    url : 'subMainPerformanceList.perf',
							    data : {  // 보낼 데이터 (Object , String, Array)
							      "sdate" : sdate
							    },
							    success : (list) => {  
							        console.log("통신 성공 !");
				    				$(".bbs-today_thumb").html(list);
							    },
							    error : () => { // 결과 에러 콜백함수
							        console.log("통신 실패 !");
							    }
							})
							
							$.ajax({ // 공연 리스트 개수 조회
							    url : 'subMainPerformanceListCount.perf',
							    data : {  // 보낼 데이터 (Object , String, Array)
							      "sdate" : sdate
							    },
							    success : (count) => {
							        console.log("통신 성공 COUNT !");
				    				$(".listCount .etc_w .color-navy").html(count);
							    },
							    error : () => { // 결과 에러 콜백함수
							        console.log("통신 실패 COUNT!");
							    }
							})
							
						});
							
						function dateFormat(date) { // date 형변환
						    var year = date.getFullYear();
						    var month = ("0" + (1 + date.getMonth())).slice(-2);
						    var day = ("0" + date.getDate()).slice(-2);
			
						    return year + "-" + month + "-" + day;
						}	
					</script>
				</div>
			</div>
		</section>
		
		<!-- footer Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- footer End -->
		<script src="./resources/sejongpac/static/portal/js/common.js"></script>
	</section>
</body>
</html>