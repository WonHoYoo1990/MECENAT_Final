<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Core -->
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> <!-- XML -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- I18N -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> <!-- Database -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <!-- Functions -->
<!-- 대관신청 페이지 수정중 만제/혜원 -->
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="description" content="Anime Template">
	<meta name="keywords" content="Anime, unica, creative, html, jsp">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
	<!-- 비밀번호 <i>태그  -->
	<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"> 
	
	<title> Anime | Template</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<style type="text/css">
		div.main{
		    position: relative;
		    /* padding: 20px; */
		}
		div.main i{
		    position: absolute;
		    left: 90%;
		    top: 25%;
		    color: orange;
		}
		label{
			font-size : small;
			color : lightgray;
			}
		#calendar tr td{
            width: 50px;
            height: 50px;
            text-align: center;
            font-size: 20px;
            font-family: 굴림;
            border:2px border-color:#3333FF;
            border-radius: 8px;/*모서리 둥글게*/
        }
        .date-cell{
        	color:white;
        }
        .date-number{
			border : 2px solid #FFF7de;
			color: white;        
        }
        .date-number:hover{
			background-color : red;
			cursor : pointer;
		}
		.new-inputs{
			width:100%;
			padding:20px;
		
		}
        .new-inputs input{
        	width:80%;
        	heigh:40px;
        
        }
	</style>
</head>

<body>
	<!-- Header Section Begin -->
	<jsp:include page="../common/header.jsp"/>
	<!-- Header End -->
	
	<!-- Normal Breadcrumb Begin -->
	<section class="normal-breadcrumb set-bg">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-12 text-center">
		            <div class="normal__breadcrumb__text" style="background-image: url('./resources/img/reserve/reserve_top.jpg'); background-size:cover; height: 300px; padding-top: 8%;" >
		                 <h2 style="color:black;">Hall Rental Application</h2>
		                <p style="color:black; font-weight:bold;">Before apply document,<br> check Hall information and rental policy</p>
		            </div>
		        </div>
		    </div>
		</div>
	</section>
	<!-- Normal Breadcrumb End -->
	<!-- Signup Section Begin -->
	<section class="signup spad">
		<div class="container">	
			<div class="row">
				<div class="col-lg-6">
					<div class="login__social__links">
						<table id="calendar" align="center" style="color:white;">
							<tr>
								<td align="center" onclick="prevCalendar()"><label> ◀ </label></td>
								<td colspan="5" align="center" id="calendarTitle">yyyy년 m월</td>
								<td align="center" onclick="nextCalendar()"><label> ▶ </label></td>
							</tr>
							<tr>
								<td align="center"><font color ="#F79DC2">일</td>
								<td align="center">월</td>
								<td align="center">화</td>
								<td align="center">수</td>
								<td align="center">목</td>
								<td align="center">금</td>
								<td align="center"><font color ="skyblue">토</td>
							</tr>
						</table>
						<br>
						<p style="font-size:18px; color:white;">대관 시작일과 종료일 설정 후 실제 공연일 클릭시<br> 공연시간 설정이 가능합니다. </p>
						<p style="font-size:15px; color:white;">해당 날짜의 공연 시작시간을 입력하세요 ex)18:00(24시간 기준)</p>
						<br>
						<div class="new-inputs" id="timeSetting"><!-- 해당공연일 공연시작시간 -->	
						<br>
						<button type="button" class="site-btn" onclick="setTime();" >Set The Time</button>	
						</div>

					</div>
				</div>
				<div class="col-lg-6">
					<div class="login__form">
						<h3>Rent Application</h3>
						<form action="application1.rv" method="post">
<!-- 							<div class="input__item"> 공연장 선택 -->
<!-- 			                <select id="hallName" name="hallName"> -->
<!-- 			                  <option value="A">a</option> -->
<!-- 			                  <option value="B">b</option> -->
<!-- 			                </select>  -->
<!-- 							</div> -->
							<!-- 어플리케이션폼1번창 -->
							<div class="input__item"> <!-- 홀이름 -->
								<input type="text" id="hallName" name="hallName" value="${hallName}" readonly/>
								<label for="userId"><span class="icon_lock"></span>신청하는 공연홀을 확인해주세요</label>
							</div>
							<div class="input__item"> <!-- 아이디 -->
								<input type="text" id="userId" name="userId" value="${userId}" readonly/>
								<label for="userId"><span class="icon_lock"></span>추후 아이디로 신청내역 조회가 가능합니다</label>
							</div>
							<div class="input__item"><!-- 대표자 이름 -->
								<input type="text" id="covenanteeName" name=covenanteeName placeholder="사업자에 등록된 대표자 성명" required/>
								<label for="covenanteeName"><span class="icon_profile"></span>한글 2~5글자</label>
							</div>
							<div class="input__item"><!-- 대표자 연락처 -->
								<input type="text" id="covenanteePhone" name=covenanteePhone placeholder="대표자 연락처" required/>
								<label for="covenanteePhone"><span class="icon_profile"></span>(-)미포함 숫자 11자 입력</label>
							</div>
							<div class="input__item"><!-- 담당자 이름 -->
								<input type="text" id="agentName" name="agentName" placeholder="담당자 성명" required/>
								<label for="agentName"><span class="icon_profile"></span>한글 2~5글자</label>
							</div>
							<div class="input__item"><!-- 담당자 연락처 -->
								<input type="text" id="agentPhone" name="agentPhone" placeholder="담당자 연락처" required/>
								<label for="agentPhone"><span class="icon_profile"></span>(-)미포함 숫자 11자 입력</label>
							</div>
							<div class="input__item"><!-- 담당자 이메일 -->
								<input type="email" id="agentEmail" name="agentEmail" placeholder="담당자 메일주소" required/>
								<label for="agentEmail"><span class="icon_mail"></span>이메일 형식에 맞춰서 작성하세요</label>
							</div>
							<div class="input__item"><!-- 대여시작일 -->
								<input type="date" id="rentalStartDate" name="rentalStartDate" placeholder="대관시작일 : 무대장치 설치일 포함" required/>
								<label for="rentalStartDate"><span class="icon_profile"></span>무대 설치를 포함한 시작일</label>
							</div>
							<div class="input__item"><!-- 대여종료일 -->
								<input type="date" id="rentalEndDate" name="rentalEndDate" placeholder="대관시작일 : 무대장치 철거일 포함" required/>
								<label for="rentalEndDate"><span class="icon_profile"></span>무대 철거를 포함한 종료일</label>
							</div>
							<div class="input__item"><!-- 선택한 공연일 -->			
								<input type="text" id="eventDates" name="eventDates"  placeholder="실제 공연 날짜" readonly/>	
								<label for="eventDates"><span class="icon_lock"></span>실제 공연일</label>
							</div>
							<!-- 선택한 공연일에 시간설정할 수 있는 버튼 -->
							<div class="input__item"><!-- 대관목적 -->
								<input type="text" id="rentalPropose" name="rentalPropose" placeholder="대관목적" required/>
								<label for="rentalPropose"><span class="icon_profile"></span>ex) 공연명 or 행사명</label>
							</div>
							<!-- 입력한 내용 전송버튼 -->
							<button type="submit" class="site-btn">Apply Document</button>
						</form>
						<h5>Do you think i'm fragile?<a href="#">lesselafim</a></h5>
					</div>
				</div>
			</div>	
		</div>
	</section>
	<!-- Signup Section End -->
	
	<!-- Footer Section Begin -->
<%-- 	<jsp:include page="../common/footer.jsp"/> --%>
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
	

<!-- 	</script> -->

 	<script>
    
    	$(function(){
    		setTime(); //dom요소 생성후 실행(페이지 구성될 때 시간 입력창 갯수만큼 가져오기)
    	})
    	
    	
    	//시간 setting input창 날짜만큼 만들기
    	function setTime(){
    		
    		var $eventDates = $("#eventDates");
    	
    		if($eventDates.val().trim().length != 0){
	    		$.ajax({
					url : "setTime.rv",
					data : {
						eventDateList : $eventDates.val()
					},
					success : function(result){
						console.log("통신성공");
						console.log(result);
						if(result != null){
							$("#timeSetting").html(result);
// 							
// 		 					for(var i=0; i<result.length; i++){
// 		 						<input type='text' id='startTimes' name='startTimes'  placeholder="아래 공연일을 확인하세요" required/>
// 								<label for="startTime"><span class="icon_lock"></span>${i}</label>
// 		 					}
						} 
					},
					error : function(){
						console.log("통신실패");	
					}
				})
    		} 
    	}
	</script>


<script type="text/javascript">
		var today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
		function buildCalendar(){
		  var row = null
		  var cnt = 0;// count, 셀의 갯수를 세어주는 역할
		  // 1일이 시작되는 칸을 맞추어 줌
		  var calendarTable = document.getElementById("calendar");//날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
		  var calendarTableTitle = document.getElementById("calendarTitle");//테이블에 정확한 날짜 찍는 변수
		  calendarTableTitle.innerHTML = today.getFullYear()+"년"+(today.getMonth()+1)+"월";
		  //innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
		  //new를 찍지 않아서 month는 +1을 더해줘야 한다.
		  var firstDate = new Date(today.getFullYear(), today.getMonth(), 1);
		  var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
		  //이번 달의 마지막 날
		  //new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
		  //day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
		  //대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
		  
		  var perfoStartDate = $("#rentalStartDate").val(); //공연 시작일
		  var perfoEndDate = $("#rentalEndDate").val(); //공연 종료일
		  
		  while(calendarTable.rows.length > 2){
		  	calendarTable.deleteRow(calendarTable.rows.length -1);
		  }
		
		  row = calendarTable.insertRow();
		  //테이블에 새로운 열 삽입//즉, 초기화
		  for(i = 0; i < firstDate.getDay(); i++){
		  /*이번달의 day만큼 돌림*/  
		    cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
		    cnt += 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
		  }
		
		  for(i = 1; i <= lastDate.getDate(); i++){//1일부터 마지막 일까지 돌림
		  	cell = row.insertCell();
		    //열 한칸한칸 계속 만들어주는 역할
		  	cnt += 1;
		    //열의 갯수를 계속 다음으로 위치하게 해주는 역할
		
		    cell.setAttribute('id', i);
		    cell.setAttribute("class", "date-cell");
		  	cell.innerHTML = i;
		    //셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
		  	cell.align = "center";
		    
		    //비교하기 위해 cell 날짜 뽑아내기
		    fineDate = cell.getAttribute('id');
		  	findMonth = ( 1 + today.getMonth() );
		    findYear = today.getFullYear();
		    
		    fineDate = fineDate >= 10 ? fineDate : '0' + fineDate;
		    findMonth = findMonth >= 10 ? findMonth : '0' + findMonth;
	    	findPfDate = findYear + "-" + findMonth + "-" + fineDate;
	    	
	    	if((findPfDate >= perfoStartDate) && (findPfDate <= perfoEndDate)){
			    cell.setAttribute("class", "date-number");
			    
			    /////////////////////////////////////////////////////////////////////////
	    		cell.onclick = function(){
				    clickedYear = today.getFullYear();
				    clickedMonth = ( 1 + today.getMonth() );
				    clickedDate = this.getAttribute('id');
				    
				    clickedDate = clickedDate >= 10 ? clickedDate : '0' + clickedDate;
				    clickedMonth = clickedMonth >= 10 ? clickedMonth : '0' + clickedMonth;
			    	clickedYMD = clickedYear + "-" + clickedMonth + "-" + clickedDate;
			    	
	    			if(this.getAttribute("style") == "background-color:red;"){
	    				var str = document.getElementById("eventDates").value;
	    				var days = str.split(',');
	    				var filtered = days.filter((element) => element !== clickedYMD);
	    				document.getElementById("eventDates").value = filtered;
	    				this.setAttribute("style", "background-color: '';");
	    			}else if(this.getAttribute("style") != "background-color:red;"){
				    	if((document.getElementById("eventDates").value) != ""){
				    		document.getElementById("eventDates").value = document.getElementById("eventDates").value + "," + clickedYMD;
				    	}else{
				    		document.getElementById("eventDates").value = clickedYMD;
				    	}
				    	this.setAttribute("style", "background-color:red;");
	    			}
	    			
	    			
			    	
			    }//cell.onclick = function()
			    //////////////////////////////////////////////////////////////////////////////
	    	}//if((findPfDate>=perfoStartDate)&&(findPfDate<=perfoEndDate))
		    if (cnt % 7 == 1) {/*일요일 계산*/
		    //1주일이 7일 이므로 일요일 구하기
		    //월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
		    	cell.innerHTML = "<font color=#F79DC2>" + i + "</font>";
		        //1번째의 cell에만 색칠
		    }
		    if (cnt % 7 == 0){/* 1주일이 7일 이므로 토요일 구하기*/
		    //월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
		    	cell.innerHTML = "<font color=skyblue>" + i + "</font>";
		        //7번째의 cell에만 색칠
		    	row = calendar.insertRow();
		        //토요일 다음에 올 셀을 추가
		    }
		  }//for(i = 1; i <= lastDate.getDate(); i++){//1일부터 마지막 일까지 돌림
		  
		  if(cnt % 7 != 0){
		  	for(i = 0; i < 7 - (cnt % 7); i++){
		  		cell = row.insertCell();
		  	}
		  }
		  
		}//function buildCalendar()
		
		function prevCalendar(){//이전 달
			today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
			buildCalendar();
		}
		
		function nextCalendar(){//다음 달
			today = new Date(today.getFullYear(), today.getMonth()+1, today.getDate());
			buildCalendar();
		}
		
		</script>
		<script language="javascript" type="text/javascript">
			buildCalendar();//
		</script>
</body>
</html>