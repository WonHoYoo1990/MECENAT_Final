<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Core -->
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> <!-- XML -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- I18N -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> <!-- Database -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <!-- Functions -->
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="Anime Template">
	<meta name="keywords" content="Anime, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Header | Template</title>
	
	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
	<!-- Css Styles -->
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/elegant-icons.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/plyr.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/nice-select.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/style.css" type="text/css">
	
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/favicon.ico" type="image/x-icon">
	
	
	
</head>
<body>

	<c:if test="${not empty alertMsg}">
		<script type="text/javascript">
			alert("${alertMsg}");
		</script>
		<c:remove var="alertMsg" scope="session"/>
	</c:if>

	<!-- Header Section Begin -->
	<header class="header">
		
    	<div class="container">
        	<div class="row">
            	<!-- header__logo -->
	            <div class="col-lg-2">
		            <div class="header__logo">
		                    <a href="index.jsp">
		                        <img src="resources/img/logo.png" alt="">
		                    </a>
	               	</div>
	            </div>
	            <div class="col-lg-8">
	                <div class="header__nav">
	                    <nav class="header__menu mobile-menu">
	                        <ul class="">
								<!-- 공연·전시·강좌 -->
	                            <li><a href="index.jsp">공연·전시·강좌<span class="arrow_carrot-down"></span></a>
	                                <ul class="dropdown">
                                    	<li><a href="./blog-details.html">KH 시즌</a></li>
	                                    <li><a href="./anime-watching.html">공연 일정</a></li>
                                    	<li><a href="./blog-details.html">패키지</a></li>
                                    	<li><a href="./blog-details.html">전시일정</a></li>
                                    	<li><a href="./blog-details.html">강좌일정</a></li>
                                    	<li>
                                    		<a href="./blog-details.html">좌석배치도</a>
                                    		<ul>
											  <li><a href="./blog-details.html">세종대극장1</a></li>
											  <li><a href="./blog-details.html">세종대극장2</a></li>
											  <li><a href="./blog-details.html">세종대극장3</a></li>
											</ul>
                                    	</li>
	                                </ul>
	                            </li>
								<!-- 대관안내 -->
	                            <li><a href="index.jsp">대관안내<span class="arrow_carrot-down"></span></a>
	                                <ul class="dropdown">
                                    	<li><a href="./blog-details.html">대관 공고</a></li>
	                                	<!-- application.rv = 대관신청페이지로 이동 -->
	                                    <li><a href="application.rv">대관 신청</a></li>
	                                    <li>
	                                    	<a href="./anime-watching.html">세종문회회관 대관 </a>
	                                    	<ul class="dropdown2">
											  <li>공연 대관</li>
											  <li>전시 대관</li>
											  <li>대여 안내</li>
											</ul>
	                                    </li>
	                                    <li>
	                                    	<a href="./anime-watching.html">꿈의숲아트센터 대관 </a>
	                                    	<ul class="dropdown2">
											  <li>공연 대관</li>
											  <li>전시 대관</li>
											  <li>대여 안내</li>
											</ul>
	                                    </li>
	                                    <li><a href="./anime-watching.html">기타 대관 </a></li>
                                    	<li><a href="./blog-details.html">홈페이지 배너신청</a></li>
                                    	<li><a href="./blog-details.html">티켓 판매 절차</a></li>
	                                </ul>
	                            </li>
								<!-- 참여공간 -->
	                            <li><a href="index.jsp">참여공간<span class="arrow_carrot-down"></span></a>
	                                <ul class="dropdown">
                                    	<li>
                                    		<div class="dropdown2"><a href="./blog-details.html">이벤트</a></div>
                                    		<div class="dropdown3">
                                    			<div>진행된 이벤트</div>
                                    			<div>종료된이벤트</div>
                                    			<div>당첨자 발표</div>
											</div>
                                    	</li>
	                                    <li><a href="./anime-watching.html">MECEMAT 투어</a></li>
	                                </ul>
	                            </li>
								<!-- 뉴스·소식 -->
	                            <li><a href="index.jsp">뉴스·소식<span class="arrow_carrot-down"></span></a>
	                                <ul class="dropdown">
                                    	<li>
                                    		<a href="./blog-details.html">새소식</a>
                                    		<ul class="dropdown2">
											  <li>세종 소식</li>
											  <li>입찰 공고</li>
											</ul>
                                    	</li>
	                                    <li><a href="./anime-watching.html">뉴스 레터</a></li>
                                    	<li><a href="./blog-details.html">세종문화 N</a></li>
	                                </ul>
	                            </li>
								<!-- 고객센터 -->
	                            <li><a href="index.jsp">고객센터<span class="arrow_carrot-down"></span></a>
	                                <ul class="dropdown">
                                    	<li>
                                    		<a href="./blog-details.html">이용 안내</a>
                                    		<ul class="dropdown2">
											  <li>오시는길</li>
											  <li>편의시설</li>
											  <li>장애인 해피콜 서비스</li>
											  <li>분신물 찾기</li>
											</ul>
                                    	</li>
	                                    <li>
	                                    	<a href="./anime-watching.html">고객 문의</a>
	                                    	<ul class="dropdown2">
											  <li>FAQ</li>
											  <li>고객의 소리</li>
											</ul>
	                                    </li>
	                                    <li>
	                                    	<a href="./anime-watching.html">회원 혜택 안내</a>
	                                    	<ul class="dropdown2">
											  <li>회원제 소개</li>
											  <li>제휴업체</li>
											</ul>
	                                    </li>
	                                    <li>
	                                    	<a href="./anime-watching.html">예매 안내</a>
	                                    	<ul class="dropdown2">
											  <li>티켓 구입방법</li>
											  <li>티켓 수령방법</li>
											  <li>예매 취소, 변경안내</li>
											  <li>예매 약관</li>
											</ul>
	                                    </li>
	                                </ul>
	                            </li>
	                        </ul>
	                    </nav>
	                </div>
	            </div>
	            <div class="col-lg-2">
	                <div class="col-lg-8">
						<!-- LOGIN -->
						<c:choose>
							<c:when test="${empty loginUser}">
								<div class="col-lg-8">
									<div class="header__nav">
										<nav class="header__menu mobile-menu">
											<ul>
											<!-- 로그인-->
											<li><a href="loginForm.me">LOGIN<span class="arrow_carrot-down"></span></a></li>
											</ul>
										</nav>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<!-- 로그인 후 -->
								<!-- <div class="col-lg-8"> -->
								<ul>
									<li><a href="myPage.me">MYPAGE</a> </li>
									<li><a href="logout.me">LOGOUT</a></li>
									<!-- TICKET -->
									<li> <a href="#">TICKET</a> </li>
									<li> <a href="#" class="search-switch"><span class="icon_search"></span></a> </li>
								</ul>
							</c:otherwise>
						</c:choose>
	                </div>
	            </div>
	        </div>
	    </div>
	</header>
	<!-- Header End -->
	
	<!-- Js Plugins -->
	<script src="./resources/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/player.js"></script>
	<script src="./resources/js/jquery.nice-select.min.js"></script>
	<script src="./resources/js/mixitup.min.js"></script>
	<script src="./resources/js/jquery.slicknav.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/main.js"></script>
	

</body>
</html>