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
<title>error500 | 에러 페이지 |</title>

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
<body class="hide-focus-ring">
	
	<c:if test="${not empty errorMsg}">
		<script type="text/javascript">
			alert("${errorMsg}");
			<%session.removeAttribute("errorMsg"); %>
		</script>
	</c:if>
	<c:if test="${not empty alertMsg}">
		<script type="text/javascript">
			alert("${alertMsg}");
			<%session.removeAttribute("alertMsg"); %>
		</script>
	</c:if>

	<section id="wrap">
		<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp" />
		<!-- Header End -->

		<div id="depth_w" class="">
			<div class="inner">
				<ul class="clearfix dot dep1 li3">
					<li class="home"><span><span>HOME</span></span></li>
				</ul>
			</div>
		</div>
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
					<article class="ticket_com inner">
						<ul>
							<li class="group">
								<div class="tit">500 Not Found</div>
								<div class="cont">
									<dl class="t1">
										<dt>잠시 후 다시 확인해 주세요!</dt>
										<dd>지금 이 서비스와 연결 할 수 없습니다.</dd>
										<dd>문제를 해결하기 위해 열심히 노력하고 있습니다.</dd>
										<dd>잠시 후 다시 확인해 주세요.</dd>
									</dl>
								</div>
							</li>
						</ul>
					</article>
				</div>
			</div>
		</div>


		<!-- footer Section Begin -->
		<jsp:include page="../common/footer.jsp" />
		<!-- footer End -->
	</section>
</body>
</html>