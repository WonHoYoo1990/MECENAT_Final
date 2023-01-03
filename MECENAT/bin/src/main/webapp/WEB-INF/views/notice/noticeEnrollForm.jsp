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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="/static/portal/js/ksearch/top_apc.js"></script>
<script src="/static/portal/js/jquery.rwdImageMaps.js"></script>
<style>
#title{
	width:1000px;
}
#content{
	width:1000px;
	height:500px;
}
</style>
</head>
<body>

	<!-- Header Section Begin -->
	<jsp:include page="../common/header.jsp" />
	<!-- Header End -->

	<div id="cont">
		<div id="sub_page">
			<div class="inner">
				
			</div>
			<div class="sub_page">
						
				<article class="bbs-view inner">
					<div class="in">
						<header class="tit long">
							공지사항 작성	<br><br>
							<div class="t">
								<form id="enrollForm" method="post" action="" enctype="multipart/form-data">
									<div align="center" id="noticeEnroll">
										<input type="text" name="noticeTitle" id="title"> <br><br>
										<input type="text" name="noticeContent" id="content"> <br><br>
										<input type="file" name="upfile" id="upfile">
									</div>
									<div class="btn-list_w">
										<button class="btn-list" type="submit"><span>등록</span></button>
										<button class="btn-list" onclick="location.href='list.no?currentPage=1'"><span>목록</span></button>
									</div>
										<input type="hidden" name="userId" id="userId" value="${loginUser.userId}">
								</form>
							</div>
						</header>
					</div>
				</article>
			</div>
		</div>
	</div>
	
	<!-- footer Section Begin -->
	<jsp:include page="../common/footer.jsp" />
	<!-- footer End -->


</body>
</html>