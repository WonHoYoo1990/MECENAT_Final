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
								<form id="updateForm" method="post" action="update.no" enctype="multipart/form-data">
									<input type="hidden" name="noticeNo" value="${n.noticeNo }">
									<div align="center" id="noticeEnroll">
										<input type="text" name="noticeTitle" id="title" value="${n.noticeTitle }" required> 
										<input type="text" name="noticeContent" id="content" value="${n.noticeContent }" required> 
										<input type="file" id="upfile" class="form-control-file border" name="upfile">
										 <c:if test="${not empty n.originName }">
										                현재 업로드된 파일 : 
					                          <a href="${n.changeName }" download="${n.originName }">${n.originName }</a>
					                          <input type="hidden" name="originName" value="${n.originName }">
					                          <input type="hidden" name="changeName" value="${n.changeName }">
				                         </c:if>
									</div>
									<div class="btn-list_w">
										<button class="btn-list" type="submit"><span>수정</span></button>
										<button class="btn-list" onclick="location.href='list.no?currentPage=1'"><span>목록</span></button>
									</div>
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