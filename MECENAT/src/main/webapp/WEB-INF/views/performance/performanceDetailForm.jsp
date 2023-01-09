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
<style>
		.content {
	        background-color:rgb(247, 245, 245);
	        width:80%;
	        margin:auto;
	    }
	    .innerOuter {
	        border:1px solid lightgray;
	        width:80%;
	        margin:auto;
	        padding:5% 10%;
	        background-color:white;
	    }
	    table * {margin:5px;}
	    table {width:100%;}
	    
	    
	    
	    
	    
	     #myform fieldset{
          display: inline-block;
          direction: rtl;
          border:0;
      }
      #myform fieldset legend{ text-align: right; }
      #myform input[type=radio]{ display: none;}
      #myform label{
          font-size: 2em;
          color: transparent;
          text-shadow: 0 0 0 #cfcfcf;
      }
      #myform label:hover{ text-shadow: 0 0 0 rgba(250, 208, 0, 0.99); }
      #myform label:hover ~ label{
          text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
      }
      #myform input[type=radio]:checked ~ label{ text-shadow: 0 0 0 rgba(250, 208, 0, 0.99); }
      #reviewContents {
          width: 100%;
          height: 150px;
          padding: 10px;
          box-sizing: border-box;
          border: solid 1.5px #b9b9b9;
          border-radius: 5px;
          font-size: 16px;
          resize: none;
      }
        
      body{ background-color: rgb(224, 224, 224); }
       
      #area1{
          width: 1200px;
          height: 1000px;
          margin: auto;
      }
      #area2{
          width: 1000px;
          margin: auto;
      }

      #title1{float: left; }
      #bt1{
          margin-left: 650px;
          margin-bottom: 10px;;
      }
      #thx{font-size: x-small; }
      .starcolor{
          color:  rgba(240, 200, 0, 0.99);
          font-size: 16px;           
      }
      .datecolor{
          color:  rgb(71, 159, 185);
          font-size: 11px;           
      }
      .reviewtext{font-size: 15px; }
      .idcolor{font-size: 15px; }
        
      a{color: rgb(71, 159, 185); }
      a:hover{color: rgb(0, 125, 163);
      
	.button {
	  border : 0;
	}

    .outer{
       background-color: black;
       color: white;
       width: 1000px;
       margin: auto; /*가운데 정렬*/
       margin-top: 50px; /*위로부터 50px만큼 여백*/
    }
    #enroll-form>table{
       border: 3px solid white;
    }
    #enroll-form input, #enroll-form textarea{
       width: 100%;
       box-sizing: border-box;
    }
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    font-size: 16px;
    font-family: 'Noto Sans KR', sans-serif;
    line-height: 1.5;
    color: #111;
    font-weight: 400;
    letter-spacing: -0.03em;
    -webkit-box-sizing: border-box;
    margin: 0;
    padding: 0;
    border: 0;
    display: block;
    width: 100%;
</style>

</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<%-- 
	<h1 align="center">detailForm</h1>

	<div align="center">
		<p>${pList. rentalCode}</p>
		<p>${pList. perfoTitle}</p>
		<p>${pList. genreName}</p>
		<p>${pList. director}</p>
		<p>${pList. cast}</p>
		<p>${pList. perfoContent}</p>
		<p>${pList. startTime}</p>
		<p>${pList. runningTime}</p>
		<p>${pList. ageLimit}</p>
		<p>${pList. price}</p>
		<p>${pList. originName}</p>
		<p>${pList. changeName}</p>
		<p>${pList. eventDate}</p>
		<p>${pList. eventTime}</p>	
		<p>${pList. hallName}</p>
		
	</div>
	--%>



	<div id="cont">
		<div id="sub_page">
			<div class="inner"></div>



			<div class="sub_page">
				<article class="bbs-view_schedule">
					<div class="inner">
						<div class="sv_top">
							<div class="in">
								<div class="poster">
									<c:choose>
										<c:when test="${not empty pList.changeName}">
											<img src="${pList.changeName}">
										</c:when>
										<c:otherwise>
											<img src="resources/performanceFiles/nocover.png">
										</c:otherwise>
									</c:choose>
									
									
									
									
								</div>
								<div class="txt">
									<div class="tit">
										<h2 class="t">${pList. perfoTitle}</h2>
										
									</div>
									<ul class="detail">
										<li><span class="dt">기간</span><p id="date"></p></li>
										<li><span class="dt">장소</span> 세종대극장</li>
										<li><span class="dt">연령</span>${pList. ageLimit}</li>
										<li><span class="dt">티켓</span>${pList. price}</li>
										<li><span class="dt">시간</span><p id="time"></p></li>
										<li><span class="dt">홀</span>${pList. hallName}</li>
										<li><span class="dt">문의</span>KH교육 당산지원 1234-4567</li>
										
									</ul>
									
									
									<div class="schedule_btn2 clearfix mt20">
 										<form action="testrCode.con" method="post">
 											<input type="hidden" value="${pList. rentalCode}" name="rCode">
											<button type="submit" class="btn-st2 bg-yellow">예매하기</button>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="schedule_cont new">
							<ul class="tabs-st4 clearfix li3">
								<li class="active"><a href="#" title="선택됨"><span>작품소개</span></a></li>
								<li><a href="#"><span>할인정보 및 이벤트</span></a></li>
								<li><a href="#"><span>주차·입장안내/취소·환불안내</span></a></li>
							</ul>
							

							<ul class="tab_cont2 w">
							<li class="tab_detail on">
									<div class="editor">
										<p
											style="line-height: 180%; text-align: left; font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; Malgun Gothic&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;"
											malgun="" gothic";="" font-size:="" 16px;="" margin-top:=""
											0px;="" margin-bottom:="" 0px;"="">
										</p>
										<p style="line-height: 180%; text-align: left; font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; Malgun Gothic&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; font-size: 16px; margin-top: 0px; margin-bottom: 0px;"
											malgun="" gothic";="" font-size:="" 16px;="" margin-top:=""
											0px;="" margin-bottom:="" 0px;"="">
											<img
												src="https://www.sejongpac.or.kr:443/upload/2022/12/20221214_090656943_29755.jpg" border="0"
												style="width: 950px; height: 4337px; border: 0px solid;"><br>
										</p>
									</div>
								</li>
							</ul>
						</div>
						<!-- //schedule_cont -->
					</div>
					<!-- //inner -->
					
					<div id="area1">
        <div id="area2"> <br><br><br><br><br><br><br><br><br><br><br><br>
          

            <!-------------------------------별점&리뷰------------------------------->
            <div class="container" class="mb-3" name="myform" id="myform" method="post">
            
                <h4 id="title1" style="color: white;">리뷰&nbsp;</h4>
                <span class="badge badge-pill badge-info"></span><br><br>
                
                
<!--                 <fieldset> -->
<!--                   <span class="text-bold"></span> -->
<!--                         <input type="radio" class="reviewStar" name="reviewStar" value=5 id="rate1"><label for="rate1">★</label> -->
<!--                         <input type="radio" class="reviewStar" name="reviewStar" value=4 id="rate2"><label for="rate2">★</label> -->
<!--                         <input type="radio" class="reviewStar" name="reviewStar" value=3 id="rate3"><label for="rate3">★</label> -->
<!--                         <input type="radio" class="reviewStar" name="reviewStar" value=2 id="rate4"><label for="rate4">★</label> -->
<!--                         <input type="radio" class="reviewStar" name="reviewStar" value=1 id="rate5"><label for="rate5">★</label> -->
<!--                 </fieldset> -->
                
<!--                 <button class="btn btn-dark" id="bt1" onclick="createReview();"> 리뷰 작성</button> -->

<!--                 <div> -->
<!--                   <textarea type="text" class="col-auto form-control" name=reviewContents id="reviewContents" -->
<!--                   placeholder="후기 작성 하시오"></textarea> -->
<!--                 </div> -->



			<c:choose>
				<c:when test="${not empty loginUser }">
					                <fieldset>
                  <span class="text-bold"></span>
                        <input type="radio" class="reviewStar" name="reviewStar" value=5 id="rate1"><label for="rate1">★</label>
                        <input type="radio" class="reviewStar" name="reviewStar" value=4 id="rate2"><label for="rate2">★</label>
                        <input type="radio" class="reviewStar" name="reviewStar" value=3 id="rate3"><label for="rate3">★</label>
                        <input type="radio" class="reviewStar" name="reviewStar" value=2 id="rate4"><label for="rate4">★</label>
                        <input type="radio" class="reviewStar" name="reviewStar" value=1 id="rate5"><label for="rate5">★</label>
                </fieldset>
                
                <button class="btn btn-dark" id="bt1" onclick="createReview();"> 리뷰 작성</button>

                <div>
                  <textarea type="text" class="col-auto form-control" name=reviewContents id="reviewContents"
                  placeholder="후기 작성 하시오"></textarea>
                </div>
				</c:when>
				<c:otherwise>
					  <fieldset>
	                  <span class="text-bold"></span>
	                        <input type="radio" class="reviewStar" name="reviewStar" value=5 id="rate1"><label for="rate1">★</label>
	                        <input type="radio" class="reviewStar" name="reviewStar" value=4 id="rate2"><label for="rate2">★</label>
	                        <input type="radio" class="reviewStar" name="reviewStar" value=3 id="rate3"><label for="rate3">★</label>
	                        <input type="radio" class="reviewStar" name="reviewStar" value=2 id="rate4"><label for="rate4">★</label>
	                        <input type="radio" class="reviewStar" name="reviewStar" value=1 id="rate5"><label for="rate5">★</label>
	                </fieldset>
	                
	                <button class="btn btn-dark" id="bt1" onclick="createReview();" disabled> 리뷰 작성</button>
	
	                <div>
	                  <textarea type="text" class="col-auto form-control" name=reviewContents id="reviewContents"
	                  placeholder="후기 작성 하시오" readonly></textarea>
	                </div>
				</c:otherwise>
			</c:choose>
			

            <!-------------------------------추천순/전체리뷰------------------------------->
            
                <div id="area3">
                    <br>
<%--                     <a href="<%=contextPath %>/RecommendedOrder.rv"><small>추천순 ∨</small> &nbsp;&nbsp;</a>   --%>
<%--                     <a href="<%=contextPath %>/LatestOrder.rv"><small>최신순 ∨</small> </a> <br> --%>
                    
                    
                    <%-- <a href="<%=contextPath %>/RecommendedOrder.rv"><small>추천순 ∨</small> &nbsp;&nbsp;</a>  
                    <a href="<%=contextPath %>/LatestOrder.rv"><small>최신순 ∨</small> </a> <br> --%>
                    
                </div>

            <!-------------------------------리뷰 리스트------------------------------->
            
                <table id="reviewArea" class="table table-hover">
                 <thead>
                 </thead>
                  <tbody class="deletebody">
                  
                  
                   
                  </tbody>                 
                </table>
              </div>


        </div>
    </div>
				</article>
				

			</div>
		</div>

	</div>
	
	<!-- 문자열(date, time)분할->배열에 넣어주는 script -->
	<script>
        
		var eventD="${pList. eventDate}";
		var eventT="${pList. eventTime}";
		
		var arrD = eventD.split(",");
		var arrT = eventT.split(",");
		
		var str1 = "";
		
		var element1 = document.getElementById("time");
		
		for(var i=0; i<arrD.length; i++){
			str1 += arrD[i]+ " / " + arrT[i] + "\n";
		}
		element1.innerText = str1;
		
		var element2 = document.getElementById("date");
		
		if(arrD[0] != arrD[arrD.length-1]){
			element2.innerText = arrD[0] + " ~ " + arrD[arrD.length-1];
		} else{
			element2.innerText = arrD[0];
		}
    </script>
    
    <script>
	$(function(){
		selectReviewList();	
	})
	       

         
		function selectReviewList(){
			$.ajax({
				url : "rlist.bo",
				data: {
					rno: ${pList.rentalCode}
				},
				success : function(list){
					var str = "";
					
					for(var i in list){
						var star1 = "";	
						
						switch(list[i].starRate){
							case 1:star1 = "★";break;
							case 2:star1 = "★★";break;
							case 3:star1 = "★★★";break;
							case 4:star1 = "★★★★";break;
							case 5:star1 = "★★★★★";break;
						}
					
						console.log(list);
						
						str += 	"<tr>"
							  +     "<input type='hidden' id='deleteNo' value='"+list[i].reviewNo+"'>"
						  	  + 	"<td class='idcolor' id='idcolor' style='color: black;'>"+list[i].reviewWriter+"</td>"
							  + 	"<td class='starcolor'>"+star1+"</td>"
							  + 	"<td class='reviewtext' style='color: black;'>"+list[i].content+"</td>"
							  + 	"<td class='datecolor' width='100px;'>"+list[i].writeDate +"</td>"
//								  +     "<td>"+"<button type='button' id='deleteb' class='deleteb' 'width=50' style='border:none; font-size:10px; color:gray'> 삭제</button>"+"</td>"
							  + "</tr>";
					}					
					
					$("#reviewArea>tbody").html(str);
		
				},
				error : function(){
					console.log("통신 실패2");
				}
			}); 
		}
	
	function createReview() {
		
		var $vali = $("#reviewContents");
		var listVar = $('input[name=reviewStar]:checked').val();
		
		$.ajax({
			
			url: "rinsert.bo",
			data: {
				refNo:${pList.rentalCode},
				reviewWriter: "${loginUser.userId}",
				content: $vali.val(),
				starRate: listVar 
			},
			success: function(result) {
				if(result == "yes") {
					selectReviewList();
					$vali.val("");
				}
			},
			error: function() {
				console.log("통신실패");
			}
		})
	}
	</script>
	
	
	
	<jsp:include page="../common/footer.jsp" />
	</body>
</html>