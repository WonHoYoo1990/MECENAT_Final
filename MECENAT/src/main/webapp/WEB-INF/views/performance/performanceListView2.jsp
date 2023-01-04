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
<!-- Functions -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
.list-area {
   width: 1500px;
   margin: auto;
}

.thumbnail {
   border: 1px solid white;
   width: 220px;
   display: inline-block;
   margin: 15px;
}

.thumbnail:hover {
   cursor: pointer;
   opacity: 0.7;
}
</style>



</head>
<body>

   <jsp:include page="../common/header.jsp" />

   <br>
   <br>
   <div class="content" align="center">
   <div class="sub_page">
      


<article class="bbs-today_w">
   <div class="inner">
      <div id="performList">

		<div class="top clearfix">
		   <div class="category">
		   	  <!-- class="active -->
<!-- 		      <span class="active"><a href="javascript:all();">전체</a></span> -->
<!-- 		      <span class="active"><a href="javascript:recentlist();">최신순</a></span> -->
				
				<span class="active"><button id="new">최신순</button></span>
				<span class="active">
					<select id="category" style="border-style: none;" onchange="genreSelect()">
						<option selected="selected">장르선택</option>
						<option value="멜로">멜로</option>
						<option value="스릴러">스릴러</option>
						<option value="공포">공포</option>
						<option value="미스터리">미스터리</option>
						<option value="로맨스">로맨스</option>
					</select>
				</span>

		   </div> 
		</div>

	   <ul class="bbs-today_thumb clearfix">
	      <c:forEach var="p" items="${pList }">
	         <li tabindex="0">
	            <div class="a">            
	               <input type="hidden" value="${p.rentalCode }">
	               <div class="img">
	                  <c:choose>
						<c:when test="${not empty p.originName}">
							<img src="${p.changeName}" width="150px" height="200px">
						</c:when>
						<c:otherwise>
							<img src="resources/performanceFiles/nocover.png" width="150px"
								height="200px">
						</c:otherwise>
					</c:choose>
	               </div>
	               <div class="cont">
	                  <strong class="t">${p.perfoTitle}</strong>
	                  <div class="etc clearfix">
	                     <span class="date">${p.perfoEventDate }</span>
	                     <span class="place">${p.genreName }</span>
	                  </div>
	
	               </div>
	               <div class="hover" style="display: none; opacity: 1;">
	                  <div class="table">
	                     <div class="vertical">
	<!--                            <a href="#" onclick="javascript:showPerformPop('grpb2210111117a01');return false;" class="r" title="새창열림">예매</a> -->
	                           <a href="#" class="d">상세</a>
	                     </div>
	                  </div>
	               </div>
	            </div>
	         </li>   
	      </c:forEach>
	   </ul>
  	  </div>
   </div>
</article>

<script>	
	

	$(".bbs-today_thumb > li").hover(function(){
	   $(this).find(".hover").stop().fadeIn(150);
	},function(){
	   $(this).find(".hover").stop().fadeOut(150);
	})
	
	$(".bbs-today_thumb li").focus(function(){
	   $(this).find(".hover").stop().fadeIn(150);
	})
	
	$(".bbs-today_thumb a:last-child").focusout(function(){
	   $(this).closest(".hover").stop().fadeOut(150);
	})

	$(function(){
	   $(".a").click(function(){
	      location.href="detail.perf?rno="+$(this).children().eq(0).val();
	   })
	})
	
	$("select[name=searchGenreCdData]").change(function() {
	   console.log($(this.val()));
	})
	
	$("#new").on("click", function() {
		location.href="list.new";
	})
	
	function genreSelect() {
		
		var selectList = $("#category option:selected").val();
		
		console.log(selectList);
		
		if(selectList == "멜로") {
			location.href="list.genre?genreName="+selectList;
		}
		if(selectList == "스릴러") {
			location.href="list.genre?genreName="+selectList;
		}
		if(selectList == "공포") {
			location.href="list.genre?genreName="+selectList;
		}
		if(selectList == "미스터리") {
			location.href="list.genre?genreName="+selectList;
		}
		if(selectList == "로맨스") {
			location.href="list.genre?genreName="+selectList;
		}
		
		
	}
	

	


</script>
      </div>
         
 </div>


      



   <br><br><br><br><br><br><br><br>
   <jsp:include page="../common/footer.jsp" />
</body>
</html>