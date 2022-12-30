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
			
				<article class="bbs-view inner">
			
					<div class="in">
						<header class="tit long">
							<div class="t">
								<strong>${n.noticeTitle}</strong>
							</div>
							<div class="date"><span>등록일 <em>${n.noticeDate}</em></span></div>
						</header>
						<div class="cont">
							<p style="line-height: 150%; &quot;Malgun Gothic&quot;; font-size: 16px;">
								${n.noticeContent}
							</p>
							
						</div>
							<a href="${n.changeName }" download="${n.originName }">${n.originName }</a>
					</div>
					
						
					<div class="prev_next">
						<dl class="prev">
							<dt><span>이전글</span></dt>
						</dl><br>
						<dl class="next">
							<dt><span>다음글</span></dt>
						</dl>
					</div>
						
				
					<div class="btn-list_w">
						<button class="btn-list" onclick="location.href='list.no'"><span>목록</span></button>
					</div>
					
					<c:if test="${loginUser.userId eq n.userId }">
						<div class="btn-list_w">
								<button class="btn-list" onclick="postFormSubmit(1);"><span>수정</span></button>
								<button class="btn-list" onclick="postFormSubmit(2);"><span>삭제</span></button>
						</div>	
			
						<form id="postForm" method="post">
							<input type="hidden" name="nno" value="${n.noticeNo}">
							<input type="hidden" name="changeName" value="${n.changeName}">
							<input type="hidden" name="userId" value="${loginUser.userId}">
						</form>
						
						<script>
						
							
							function postFormSubmit(num){
								var form = $("<form>");
								var cNno = $("<input>").prop("type","hidden").prop("name","nno").prop("value","${n.noticeNo}");
								var cFp = $("<input>").prop("type","hidden").prop("name","filePath").prop("value","${n.changeName}");
								
								//form태그에 input요소 두개 넣기
								form.append(cNno).append(cFp);
								
								if(num==1){
									form.prop("action","updateForm.no");
								}else{
							form.prop("action","delete.no").prop("method","POST");
								}
								
								$("body").append(form);
								
								form.prop("method","POST").submit();
								
			
							}
						
						</script>
					</c:if>
				</article>
		
		
			</div>
		</div>
		
	</div>


	<!-- footer Section Begin -->
	<jsp:include page="../common/footer.jsp" />
	<!-- footer End -->

</body>
</html>