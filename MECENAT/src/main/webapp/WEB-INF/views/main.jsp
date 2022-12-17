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
<title>Insert title here</title>

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
    <!-- Header Section Begin -->
	<jsp:include page="../views/common/header.jsp"/> 
    <!-- Header End -->
    
	<!-- Hero Section Begin -->
	<section class="hero">
	<article class="hero">
		<div class="container">
			<div class="hero__slider owl-carousel">
				<div class="hero__items set-bg" data-setbg="resources/performanceFiles/2022121411532658291.jpg">
					<div class="row">
						<div class="col-lg-6">
							<div class="hero__text">
								<div class="label">제목 위에 라벨?</div>
								<h2>공연 제목</h2>
								<p>공연 짤막한 한줄 소개?...</p>
								<a href="#"><span>예매하기</span></a>
								<a href="#"><span>상세보기</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			

			<div id="m1" class="inner aos-init aos-animate" data-aos="fade-up">
				<div class="clearfix s slick-initialized slick-slider ms">
					<ul>
						<div aria-live="polite" class="slick-list draggable">
							<div class="slick-track" style="opacity: 1; width: 1400px; transform: translate3d(0px, 0px, 0px);">
								<li class="slick-slide slick-current slick-active"
									style="width: 175px;" role="tabpanel" id="slickSlide80"
									aria-labelledby="slickDot80" tabindex="-1" data-slick-index="0"
									aria-hidden="false">
									<div>
										<a href="/portal/subMain/perform.do?menuNo=200001" tabindex="0">
											<div>
												<div class="img" style="top: 0px;">
													<img src="./resources/sejongpac/static/portal/img/main/m1_3.gif">
												</div>
												<div class="txt">세종투데이</div>
											</div>
										</a>
									</div>
								</li>

								<li class="slick-slide slick-active" style="width: 175px;"
									role="tabpanel" id="slickSlide801" aria-labelledby="slickDot80"
									tabindex="-1" data-slick-index="1" aria-hidden="false">
									<a href="/portal/bbs/B0000001/list.do?menuNo=200042" tabindex="0">
										<div class="img" style="top: 0px;">
											<img src="./resources/sejongpac/static/portal/img/main/m1_4.gif">
										</div>
										<div class="txt">세종소식</div>
									</a>
								</li>

								<li class="slick-slide slick-active" style="width: 175px;"
									role="tabpanel" id="slickSlide802" aria-labelledby="slickDot80"
									tabindex="-1" data-slick-index="2" aria-hidden="false"><a
									href="/portal/main/contents.do?menuNo=200094" tabindex="0">
										<div class="img" style="top: 0px;">
											<img src="./resources/sejongpac/static/portal/img/main/m1_5.gif"/>
										</div>
										<div class="txt">좌석배치도</div>
								</a>
								</li>
								
								<li class="slick-slide slick-active" style="width: 175px;"
									role="tabpanel" id="slickSlide803" aria-labelledby="slickDot80"
									tabindex="-1" data-slick-index="3" aria-hidden="false">
									<a href="/portal/main/contents.do?menuNo=200085" tabindex="0">
										<div class="img" style="top: 0px;">
											<img src="./resources/sejongpac/static/portal/img/main/m1_7.gif">
										</div>
										<div class="txt">예매안내</div>
									</a>
								</li>
								
								<li class="slick-slide slick-active" style="width: 175px;"
									role="tabpanel" id="slickSlide804" aria-labelledby="slickDot80"
									tabindex="-1" data-slick-index="4" aria-hidden="false">
									<a href="/portal/main/contents.do?menuNo=200082" tabindex="0">
										<div class="img" style="top: 0px;">
											<img src="./resources/sejongpac/static/portal/img/main/m1_6.gif">
										</div>
										<div class="txt">오시는길</div>
									</a>
								</li>
								
								<li class="slick-slide slick-active" style="width: 175px;"
									role="tabpanel" id="slickSlide807" aria-labelledby="slickDot80"
									tabindex="-1" data-slick-index="7" aria-hidden="false">
									<a href="/portal/singl/faq/list.do?menuNo=200052" tabindex="0">
										<div class="img" style="top: 0px;">
											<img src="./resources/sejongpac/static/portal/img/main/m1_12.gif">
										</div>
										<div class="txt">FAQ</div>
									</a>
								</li>
								
							</div>
						</div>
					</ul>
				</div>
			</div>




		</div>
	</article>
	
	</section>
	<!-- Hero Section End -->
	
	

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
				
					<!-- trending__product -->
					<div class="trending__product">
						<div class="row">
						   	<div class="col-lg-8 col-md-8 col-sm-8">
						       	<div class="section-title">
						           	<h4>Trending Now</h4>
					        	</div>
						    </div>
						    <div class="col-lg-4 col-md-4 col-sm-4">
						        <div class="btn__all">
						           	<a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
						        </div>
						    </div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
								    <div class="product__item__pic set-bg" data-setbg="resources/img/trending/trend-1.jpg">
								        <div class="ep">날짜? / 원래는 에피소드</div>
								        <div class="comment"><i class="fa fa-comments"></i> 댓글 수</div>
								        <div class="view"><i class="fa fa-eye"></i> 조회수</div>
								    </div>
								    <div class="product__item__text">
								        <ul>
								            <li>무슨 장르인지 1</li>
								            <li>무슨 장르인지 2</li>
								        </ul>
								        <h5><a href="#">공연 제목</a></h5>
								    </div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
								    <div class="product__item__pic set-bg" data-setbg="resources/img/trending/trend-2.jpg">
								        <div class="ep">18 / 18</div>
								        <div class="comment"><i class="fa fa-comments"></i> 11</div>
								        <div class="view"><i class="fa fa-eye"></i> 9141</div>
								    </div>
								    <div class="product__item__text">
								        <ul>
								            <li>Active</li>
								            <li>Movie</li>
								        </ul>
								        <h5><a href="#">Gintama Movie 2: Kanketsu-hen - Yorozuya yo Eien</a></h5>
								    </div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
								    <div class="product__item__pic set-bg" data-setbg="resources/img/trending/trend-3.jpg">
								        <div class="ep">18 / 18</div>
								        <div class="comment"><i class="fa fa-comments"></i> 11</div>
								        <div class="view"><i class="fa fa-eye"></i> 9141</div>
								    </div>
								    <div class="product__item__text">
								        <ul>
								            <li>Active</li>
								            <li>Movie</li>
								        </ul>
								        <h5><a href="#">Shingeki no Kyojin Season 3 Part 2</a></h5>
								    </div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
							    <div class="product__item">
							        <div class="product__item__pic set-bg" data-setbg="resources/img/trending/trend-4.jpg">
							            <div class="ep">18 / 18</div>
							            <div class="comment"><i class="fa fa-comments"></i> 11</div>
							            <div class="view"><i class="fa fa-eye"></i> 9141</div>
							        </div>
							        <div class="product__item__text">
							            <ul>
							                <li>Active</li>
							                <li>Movie</li>
							            </ul>
							            <h5><a href="#">Fullmetal Alchemist: Brotherhood</a></h5>
							        </div>
							    </div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
							    <div class="product__item">
							        <div class="product__item__pic set-bg" data-setbg="resources/img/trending/trend-5.jpg">
							            <div class="ep">18 / 18</div>
							            <div class="comment"><i class="fa fa-comments"></i> 11</div>
							            <div class="view"><i class="fa fa-eye"></i> 9141</div>
							        </div>
							        <div class="product__item__text">
							            <ul>
							                <li>Active</li>
							                <li>Movie</li>
							            </ul>
							            <h5><a href="#">Shiratorizawa Gakuen Koukou</a></h5>
							        </div>
							    </div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
							    <div class="product__item">
							        <div class="product__item__pic set-bg" data-setbg="resources/img/trending/trend-6.jpg">
							            <div class="ep">18 / 18</div>
							            <div class="comment"><i class="fa fa-comments"></i> 11</div>
							            <div class="view"><i class="fa fa-eye"></i> 9141</div>
							        </div>
							        <div class="product__item__text">
							            <ul>
							                <li>Active</li>
							                <li>Movie</li>
							            </ul>
							            <h5><a href="#">Code Geass: Hangyaku no Lelouch R2</a></h5>
							        </div>
							    </div>
							</div>
						</div>
					</div>
					
					<!-- popular__product -->
					<div class="popular__product">
						<div class="row">
						    <div class="col-lg-8 col-md-8 col-sm-8">
						        <div class="section-title">
						            <h4>Popular Shows</h4>
						        </div>
						    </div>
						    <div class="col-lg-4 col-md-4 col-sm-4">
						        <div class="btn__all">
						            <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
						        </div>
						    </div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
								    <div class="product__item__pic set-bg" data-setbg="resources/img/popular/popular-1.jpg">
							        	<div class="ep">날짜? / 원래는 에피소드</div>
								        <div class="comment"><i class="fa fa-comments"></i> 댓글 수</div>
								        <div class="view"><i class="fa fa-eye"></i> 조회수</div>
								    </div>
								    <div class="product__item__text">
								        <ul>
								            <li>무슨 장르인지 1</li>
								            <li>무슨 장르인지 2</li>
								        </ul>
								        <h5><a href="#">공연 제목</a></h5>
								    </div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
								    <div class="product__item__pic set-bg" data-setbg="resources/img/popular/popular-2.jpg">
								        <div class="ep">18 / 18</div>
								        <div class="comment"><i class="fa fa-comments"></i> 11</div>
								        <div class="view"><i class="fa fa-eye"></i> 9141</div>
								    </div>
								    <div class="product__item__text">
								        <ul>
								            <li>Active</li>
								            <li>Movie</li>
								        </ul>
								        <h5><a href="#">Kizumonogatari III: Reiket su-hen</a></h5>
								    </div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
							    <div class="product__item">
							        <div class="product__item__pic set-bg" data-setbg="resources/img/popular/popular-3.jpg">
							            <div class="ep">18 / 18</div>
							            <div class="comment"><i class="fa fa-comments"></i> 11</div>
							            <div class="view"><i class="fa fa-eye"></i> 9141</div>
							        </div>
							        <div class="product__item__text">
							            <ul>
							                <li>Active</li>
							                <li>Movie</li>
							            </ul>
							            <h5><a href="#">Shirogane Tamashii hen Kouhan sen</a></h5>
							        </div>
							    </div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
							    <div class="product__item">
							        <div class="product__item__pic set-bg" data-setbg="resources/img/popular/popular-4.jpg">
							            <div class="ep">18 / 18</div>
							            <div class="comment"><i class="fa fa-comments"></i> 11</div>
							            <div class="view"><i class="fa fa-eye"></i> 9141</div>
							        </div>
							        <div class="product__item__text">
							            <ul>
							                <li>Active</li>
							                <li>Movie</li>
							            </ul>
							            <h5><a href="#">Rurouni Kenshin: Meiji Kenkaku Romantan</a></h5>
							        </div>
							    </div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
							    <div class="product__item">
							        <div class="product__item__pic set-bg" data-setbg="resources/img/popular/popular-5.jpg">
							            <div class="ep">18 / 18</div>
							            <div class="comment"><i class="fa fa-comments"></i> 11</div>
							            <div class="view"><i class="fa fa-eye"></i> 9141</div>
							        </div>
							        <div class="product__item__text">
							            <ul>
							                <li>Active</li>
							                <li>Movie</li>
							            </ul>
							            <h5><a href="#">Mushishi Zoku Shou 2nd Season</a></h5>
							        </div>
							    </div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6">
							    <div class="product__item">
							        <div class="product__item__pic set-bg" data-setbg="resources/img/popular/popular-6.jpg">
							            <div class="ep">18 / 18</div>
							            <div class="comment"><i class="fa fa-comments"></i> 11</div>
							            <div class="view"><i class="fa fa-eye"></i> 9141</div>
							        </div>
							        <div class="product__item__text">
							            <ul>
							                <li>Active</li>
							                <li>Movie</li>
							            </ul>
							            <h5><a href="#">Monogatari Series: Second Season</a></h5>
							        </div>
							    </div>
							</div>
						</div>
					</div>
					
					<!-- recent__product -->
					<div class="recent__product">
					    <div class="row">
					        <div class="col-lg-8 col-md-8 col-sm-8">
					            <div class="section-title">
					                <h4>Recently Added Shows</h4>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-4 col-sm-4">
					            <div class="btn__all">
					                <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
					            </div>
					        </div>
					    </div>
					    <div class="row">
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/recent/recent-1.jpg">
					                 	<div class="ep">날짜? / 원래는 에피소드</div>
								        <div class="comment"><i class="fa fa-comments"></i> 댓글 수</div>
								        <div class="view"><i class="fa fa-eye"></i> 조회수</div>
								    </div>
								    <div class="product__item__text">
								        <ul>
								            <li>무슨 장르인지 1</li>
								            <li>무슨 장르인지 2</li>
								        </ul>
								        <h5><a href="#">공연 제목</a></h5>
								    </div>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/recent/recent-1.jpg">
					                    <div class="ep">18 / 18</div>
					                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
					                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
					                </div>
					                <div class="product__item__text">
					                    <ul>
					                        <li>Active</li>
					                        <li>Movie</li>
					                    </ul>
					                    <h5><a href="#">Fate/stay night Movie: Heaven's Feel - II. Lost</a></h5>
					                </div>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/recent/recent-1.jpg">
					                    <div class="ep">18 / 18</div>
					                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
					                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
					                </div>
					                <div class="product__item__text">
					                    <ul>
					                        <li>Active</li>
					                        <li>Movie</li>
					                    </ul>
					                    <h5><a href="#">Mushishi Zoku Shou: Suzu no Shizuku</a></h5>
					                </div>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/recent/recent-4.jpg">
					                    <div class="ep">18 / 18</div>
					                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
					                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
					                </div>
					                <div class="product__item__text">
					                    <ul>
					                        <li>Active</li>
					                        <li>Movie</li>
					                    </ul>
					                    <h5><a href="#">Fate/Zero 2nd Season</a></h5>
					                </div>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/recent/recent-5.jpg">
					                    <div class="ep">18 / 18</div>
					                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
					                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
					                </div>
					                <div class="product__item__text">
					                    <ul>
					                        <li>Active</li>
					                        <li>Movie</li>
					                    </ul>
					                    <h5><a href="#">Kizumonogatari II: Nekket su-hen</a></h5>
					                </div>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/recent/recent-6.jpg">
					                    <div class="ep">18 / 18</div>
					                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
					                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
					                </div>
					                <div class="product__item__text">
					                    <ul>
					                        <li>Active</li>
					                        <li>Movie</li>
					                    </ul>
					                    <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
					                </div>
					            </div>
					        </div>
					    </div>
					</div>
					
					<!-- live__product -->
					<div class="live__product">
					    <div class="row">
					        <div class="col-lg-8 col-md-8 col-sm-8">
					            <div class="section-title">
					                <h4>Live Action</h4>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-4 col-sm-4">
					            <div class="btn__all">
					                <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
					            </div>
					        </div>
					    </div>
					    <div class="row">
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/live/live-1.jpg">
					                 	<div class="ep">날짜? / 원래는 에피소드</div>
								        <div class="comment"><i class="fa fa-comments"></i> 댓글 수</div>
								        <div class="view"><i class="fa fa-eye"></i> 조회수</div>
								    </div>
								    <div class="product__item__text">
								        <ul>
								            <li>무슨 장르인지 1</li>
								            <li>무슨 장르인지 2</li>
								        </ul>
								        <h5><a href="#">공연 제목</a></h5>
								    </div>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/live/live-2.jpg">
					                    <div class="ep">18 / 18</div>
					                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
					                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
					                </div>
					                <div class="product__item__text">
					                    <ul>
					                        <li>Active</li>
					                        <li>Movie</li>
					                    </ul>
					                    <h5><a href="#">Mushishi Zoku Shou 2nd Season</a></h5>
					                </div>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/live/live-3.jpg">
					                    <div class="ep">18 / 18</div>
					                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
					                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
					                </div>
					                <div class="product__item__text">
					                    <ul>
					                        <li>Active</li>
					                        <li>Movie</li>
					                    </ul>
					                    <h5><a href="#">Mushishi Zoku Shou: Suzu no Shizuku</a></h5>
					                </div>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/live/live-4.jpg">
					                    <div class="ep">18 / 18</div>
					                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
					                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
					                </div>
					                <div class="product__item__text">
					                    <ul>
					                        <li>Active</li>
					                        <li>Movie</li>
					                    </ul>
					                    <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
					                </div>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/live/live-5.jpg">
					                    <div class="ep">18 / 18</div>
					                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
					                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
					                </div>
					                <div class="product__item__text">
					                    <ul>
					                        <li>Active</li>
					                        <li>Movie</li>
					                    </ul>
					                    <h5><a href="#">Fate/stay night Movie: Heaven's Feel - II. Lost</a></h5>
					                </div>
					            </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6">
					            <div class="product__item">
					                <div class="product__item__pic set-bg" data-setbg="resources/img/live/live-6.jpg">
					                    <div class="ep">18 / 18</div>
					                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
					                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
					                </div>
					                <div class="product__item__text">
					                    <ul>
					                        <li>Active</li>
					                        <li>Movie</li>
					                    </ul>
					                    <h5><a href="#">Kizumonogatari II: Nekketsu-hen</a></h5>
					                </div>
					            </div>
					        </div>
					    </div>
					</div>
				</div>
				
				<!-- product__sidebar__view -->
				<div class="col-lg-4 col-md-6 col-sm-8">
					<div class="product__sidebar">
						<div class="product__sidebar__view">
							<div class="section-title">
								<h5>Top Views</h5>
							</div>
							<ul class="filter__controls">
							    <li class="active" data-filter="*">Day</li>
							    <li data-filter=".week">Week</li>
							    <li data-filter=".month">Month</li>
							    <li data-filter=".years">Years</li>
							</ul>
							<div class="filter__gallery">
								<div class="product__sidebar__view__item set-bg mix day years" data-setbg="resources/img/sidebar/tv-1.jpg" >
									<div class="ep">날짜? / 원래는 에피소드</div>
									<div class="view"><i class="fa fa-eye"></i> 조회수</div>
									<h5><a href="#">공연 제목</a></h5>
								</div>
								<div class="product__sidebar__view__item set-bg mix month week" data-setbg="resources/img/sidebar/tv-2.jpg">
									<div class="ep">날짜? / 원래는 에피소드</div>
									<div class="view"><i class="fa fa-eye"></i> 조회수</div>
									<h5><a href="#">공연 제목</a></h5>
								</div>
								<div class="product__sidebar__view__item set-bg mix week years" data-setbg="resources/img/sidebar/tv-3.jpg">
									<div class="ep">날짜? / 원래는 에피소드</div>
									<div class="view"><i class="fa fa-eye"></i> 조회수</div>
									<h5><a href="#">공연 제목</a></h5>
								</div>
						        <div class="product__sidebar__view__item set-bg mix years month" data-setbg="resources/img/sidebar/tv-4.jpg">
						        	<div class="ep">날짜? / 원래는 에피소드</div>
									<div class="view"><i class="fa fa-eye"></i> 조회수</div>
									<h5><a href="#">공연 제목</a></h5>
							    </div>
							    <div class="product__sidebar__view__item set-bg mix day" data-setbg="resources/img/sidebar/tv-5.jpg">
								    <div class="ep">날짜? / 원래는 에피소드</div>
									<div class="view"><i class="fa fa-eye"></i> 조회수</div>
									<h5><a href="#">공연 제목</a></h5>
								</div>
							</div>
						</div>
						
						<!-- product__sidebar__comment -->
						<div class="product__sidebar__comment">
							<div class="section-title">
						    	<h5>New Comment</h5>
							</div>
							<div class="product__sidebar__comment__item">
								<div class="product__sidebar__comment__item__pic">
								    <img src="resources/img/sidebar/comment-1.jpg" alt="">
								</div>
								<div class="product__sidebar__comment__item__text">
									<ul>
									    <li>장르 1</li>
									    <li>장르 2</li>
									</ul>
									<h5><a href="#">공연 제목</a></h5>
									<span><i class="fa fa-eye"></i> 조회수 Viewes</span>
								</div>
							</div>
							<div class="product__sidebar__comment__item">
								<div class="product__sidebar__comment__item__pic">
									<img src="resources/img/sidebar/comment-2.jpg" alt="">
								</div>
								<div class="product__sidebar__comment__item__text">
									<ul>
									    <li>장르 1</li>
									    <li>장르 2</li>
									</ul>
									<h5><a href="#">공연 제목</a></h5>
									<span><i class="fa fa-eye"></i> 조회수 Viewes</span>
								</div>
							</div>
							<div class="product__sidebar__comment__item">
								<div class="product__sidebar__comment__item__pic">
								    <img src="resources/img/sidebar/comment-3.jpg" alt="">
								</div>
								<div class="product__sidebar__comment__item__text">
									<ul>
									    <li>장르 1</li>
									    <li>장르 2</li>
									</ul>
									<h5><a href="#">공연 제목</a></h5>
									<span><i class="fa fa-eye"></i> 조회수 Viewes</span>
								</div>
							</div>
							<div class="product__sidebar__comment__item">
								<div class="product__sidebar__comment__item__pic">
								    <img src="resources/img/sidebar/comment-4.jpg" alt="">
								</div>
								<div class="product__sidebar__comment__item__text">
									<ul>
									    <li>장르 1</li>
									    <li>장르 2</li>
									</ul>
									<h5><a href="#">공연 제목</a></h5>
									<span><i class="fa fa-eye"></i> 조회수 Viewes</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="../views/common/footer.jsp"/>
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