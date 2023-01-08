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
	
	<title>${hallName} 대관신청</title>
<!-- 	<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css"> -->
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
			color : gray;
			}
		#calendar tr td{
            width: 50px;
            height: 50px;
            text-align: center;
            font-size: 20px;
            font-family: 굴림;
            border:2px border-color:#3333FF;
            color : black;
        }
        .date-cell{
        	color:black;
        }
        .date-number{
			border : 2px solid red;
			color: black;        
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
        
        .application__form{
        	width: 80%;
        }
        .application__form form .input__item {
	position: relative;
	width: 370px;
	margin-bottom: 20px;
}

.application__form form .input__item:before {
	position: absolute;
	left: 50px;
	top: 10px;
	height: 30px;
	width: 1px;
	background: gray;
	content: "";
}

.application__form form .input__item input {
	height: 50px;
	width: 100%;
	font-size: 15px;
	color: gray;
	background: #ffffff;
	border: 1px solid gray;
	padding-left: 76px;
}

.application__form form .input__item input::-webkit-input-placeholder {
	color: gray;
}

.application__form form .input__item input::-moz-placeholder {
	color: gray;
}

.application__form form .input__item input:-ms-input-placeholder {
	color: gray;
}

.application__form form .input__item input::-ms-input-placeholder {
	color: gray;
}

.application__form form .input__item input::placeholder {
	color: gray;
}

.application__form form .input__item span {
	color: gray;
	font-size: 20px;
	position: absolute;
	left: 15px;
	top: 13px;

}

.application__form form button {
	border-radius: 0;
 	margin-top: 10px; 
}

.application__form form .input__item {
		width: auto;
	}
	
.iconBox{
	cursor:default;
	width:25px;
	height:25px;
}

.iconBox> img{
	cursor:default;
	width:100%;
	height:100%
}
.site-btn {
	font-size: 13px;
	color: white;
	background: #2ea4ff;
	font-weight: 700;
	border: none;
	border-radius: 2px;
	letter-spacing: 2px;
	text-transform: uppercase;
	display: inline-block;
	padding: 12px 30px;
}

#calendar-box{
	color:black; 
	border: 1px solid lightgray; 
	border-radius: 20px;
 	width:500px;
 	height:auto;	 
	padding-top:50px;
	padding-bottom:50px;
}

#calendar{
}
.inform-board{background-size:cover; height: 200px; padding-top: 8%;}
.calendar-div{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%;,float:left;}
.roww{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}
.containerr{width:100%;padding:30px;margin:auto}

	</style>
</head>

<body>
	<!-- Header Section Begin -->
	<jsp:include page="../common/header.jsp"/>
	<!-- Header End -->

	<!-- Normal Breadcrumb Begin -->
	<secion id="cont" tabindex="0" align="center">
		<div class="containerr" align="center">
            <h2 style="color:black;">Hall Rental Application</h2>
              <p style="color:black; font-weight:bold;">Before apply document,<br> check Hall information and rental policy</p>
		</div>
	</section>
	<!-- Normal Breadcrumb End -->
	<!-- Signup Section Begin -->
	<section class="signup spad" style="width:80%; margin:auto;">
		<div class="container">	
			<div class="roww">
				<div class="calendar-div">
					<div class="login__social__links" align="center">
						<div id="calendar-box">
						<table id="calendar" align="center">
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
						</div>
						<br>
						<p align="center" style="font-size:18px; color:black;">대관 시작일과 종료일 설정 후 실제 공연일 클릭시<br> 공연시간 설정이 가능합니다. </p>
						<p align="center" style="font-size:15px; color:black;">해당 날짜의 공연 시작시간을 입력하세요<br>(*대관 가능시간 : 10:00 ~ 20:00, 30분단위 선택가능*)</p>
					</div>
				</div>
				<div class="calendar-div">
					<div class="application__form" align="left">
						<h3>Rent Application</h3>
						<form action="application1.rv" method="post" id="applicationForm">
							<div id="timesDiv">
							<div class="input__item" id="timeSetting" align="center"><!-- 해당공연일 공연시작시간 -->
							</div>
							</div>
							<!-- 어플리케이션폼1번창 -->
							<div class="input__item"> <!-- 홀이름 -->
								<input type="text" id="hallName" name="hallName" value="${hallName}" readonly/>
								<label for="userId"><span class="iconBox"><img src="resources/img/icons/man.png"></span>신청하는 공연홀을 확인해주세요</label>
							</div>
							<div class="input__item"> <!-- 아이디 -->
								<input type="text" id="userId" name="userId" value="${userId}" readonly/>
								<label for="userId"><span class="iconBox"><img src="resources/img/icons/man.png"></span>추후 아이디로 신청내역 조회가 가능합니다</label>
							</div>
							<div class="input__item"><!-- 대여시작일 -->
								<input type="date" id="rentalStartDate" name="rentalStartDate" placeholder="대관시작일 : 무대장치 설치일 포함" min=""  required/>
								<label for="rentalStartDate"><span class="iconBox"><img src="resources/img/icons/com.png"></span>무대 설치를 포함한 시작일. <br>대관 시작일은 신청일로부터 2개월 뒤 날짜만 선택 가능합니다.</label>
							</div>
							<div class="input__item"><!-- 대여종료일 -->
								<input type="date" id="rentalEndDate" name="rentalEndDate" placeholder="대관시작일 : 무대장치 철거일 포함" min="" required/>
								<label for="rentalEndDate"><span class="iconBox"><img src="resources/img/icons/com.png"></span>무대 철거를 포함한 종료일</label>
							</div>
								<script>
									var $rsDate =$("#rentalStartDate");
									var $reDate =$("#rentalEndDate");
									var today = new Date();
									var canMonth = today.getMonth()+3;
									var canYear = today.getFullYear();					
									var canFullDate = "";
									
									if(canMonth>=10&&canMonth<13){
										canFullDate = canYear+"-"+canMonth+"-01";
									}else if(canMonth>12){
										canYear += 1;
										canMonth -= 12;
										canFullDate = canYear+"-"+"0"+canMonth+"-01";
									}else if(canMonth<10){
										canFullDate = canYear+"-0"+canMonth+"-01";
									}
									console.log(canFullDate);
 									$rsDate.attr("min",canFullDate);
 									
  									$(function(){
  										$rsDate.focusout(function(){
  											$reDate.attr("min",$rsDate.val());	
  										})												
  									})
								</script>
							<div class="input__item"><!-- 선택한 공연일 -->			
								<input type="text" id="eventDates" name="eventDates"  placeholder="실제 공연 날짜" readonly/>
								<label for="eventDates"><span class="iconBox"><img src="resources/img/icons/com.png"></span>실제 공연일</label>
							</div>
							<div class="input__item"><!-- 대표자 이름 -->
								<input type="text" id="covenanteeName" name=covenanteeName placeholder="사업자에 등록된 대표자 성명" required/>
								<label for="covenanteeName"><span class="iconBox"><img src="resources/img/icons/smile.png"></span>한글 2~5글자</label>
							</div>
							<div class="input__item"><!-- 대표자 연락처 -->
								<input type="text" id="covenanteePhone" name=covenanteePhone placeholder="대표자 연락처" required/>
								<label for="covenanteePhone"><span class="iconBox"><img src="resources/img/icons/phone.png"></span>(-)미포함 숫자 11자 입력</label>
							</div>
							<div class="input__item"><!-- 담당자 이름 -->
								<input type="text" id="agentName" name="agentName" placeholder="담당자 성명" required/>
								<label for="agentName"><span class="iconBox"><img src="resources/img/icons/smile.png"></span>한글 2~5글자</label>
							</div>
							<div class="input__item"><!-- 담당자 연락처 -->
								<input type="text" id="agentPhone" name="agentPhone" placeholder="담당자 연락처" required/>
								<label for="agentPhone"><span class="iconBox"><img src="resources/img/icons/phone.png"></span>(-)미포함 숫자 11자 입력</label>
							</div>
							<div class="input__item"><!-- 담당자 이메일 -->
								<input type="email" id="agentEmail" name="agentEmail" placeholder="담당자 메일주소" required/>
								<label for="agentEmail"><span class="iconBox"><img src="resources/img/icons/msg.png"></span>이메일 형식에 맞춰서 작성하세요</label>
							</div>

							<!-- 선택한 공연일에 시간설정할 수 있는 버튼 -->
							<div class="input__item"><!-- 대관목적 -->
								<input type="text" id="rentalPropose" name="rentalPropose" placeholder="대관목적" required/>
								<label for="rentalPropose"><span class="iconBox"><img src="resources/img/icons/tag.png"></span>ex) 공연명 or 행사명</label>
							</div>
							<!-- 공연 시작시간 모음 -->	
							<input type="hidden" name="eventTime" id="eventTime">
							<!-- 입력한 내용 전송버튼 -->
							<button type="submit" class="site-btn">Apply Document</button>
						</form>
					</div>
					
				</div>
			</div>	
		</div>
		<br><br><br>
	</section>
 	<script type="text/javascript">
    	
		var today = new Date(); //오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
		var date = new Date(); 
		//today의 Date를 세어주는 역할
		
		function buildCalendar(){//달력 만드는 메서드
		  var row = null
		  var cnt = 0; // count, 셀의 갯수를 세어주는 역할, 1일이 시작되는 칸을 맞추어 줌
		  var calendarTable = document.getElementById("calendar"); //날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
		  var calendarTableTitle = document.getElementById("calendarTitle"); //테이블에 정확한 날짜 찍는 변수
		  
		  calendarTableTitle.innerHTML = today.getFullYear()+"년"+(today.getMonth()+1)+"월";
		  //innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
		  //new를 찍지 않아서 month는 +1을 더해줘야 한다.
		  
		  var firstDate = new Date(today.getFullYear(), today.getMonth(), 1);
		  var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
		  //이번 달의 마지막 날
		  //new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
		  //day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
		  //대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
		  
		  while(calendarTable.rows.length > 2){
		  	calendarTable.deleteRow(calendarTable.rows.length -1);
		  }
		  row = calendarTable.insertRow(); //테이블에 새로운 열 삽입. 즉, 초기화
		  
		  for(i = 0; i < firstDate.getDay(); i++){/*이번달의 day만큼 돌림*/  
		    cell = row.insertCell(); //열 한칸한칸 계속 만들어주는 역할
		    cnt += 1; //열의 갯수를 계속 다음으로 위치하게 해주는 역할
		  }
		
		  for(i = 1; i <= lastDate.getDate(); i++){//1일부터 마지막 일까지 돌림
		  	cell = row.insertCell(); //열 한칸한칸 계속 만들어주는 역할
		  	cnt += 1; //열의 갯수를 계속 다음으로 위치하게 해주는 역할
		
		    cell.setAttribute('id', i);
		    cell.setAttribute("class", "date-cell");
		  	cell.innerHTML = i; //셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
		  	cell.align = "center";
		    
		    //비교하기 위해 cell 날짜 뽑아내기
		    fineDate = cell.getAttribute('id');
		  	findMonth = ( 1 + today.getMonth() );
		    findYear = today.getFullYear();
		    
		    fineDate = fineDate >= 10 ? fineDate : '0' + fineDate;
		    findMonth = findMonth >= 10 ? findMonth : '0' + findMonth;
	    	findPfDate = findYear + "-" + findMonth + "-" + fineDate;
	    	
	    	var perfoStartDate = $("#rentalStartDate").val(); //공연 시작일
			var perfoEndDate = $("#rentalEndDate").val(); //공연 종료일
			
			if((findPfDate >= perfoStartDate) && (findPfDate <= perfoEndDate)){
			    cell.setAttribute("class", "date-number");
	    		cell.onclick = function(){
				    clickedYear = today.getFullYear();
				    clickedMonth = ( 1 + today.getMonth() );
				    clickedDate = this.getAttribute('id');
				    
				    clickedDate = clickedDate >= 10 ? clickedDate : '0' + clickedDate;
				    clickedMonth = clickedMonth >= 10 ? clickedMonth : '0' + clickedMonth;
			    	clickedYMD = clickedYear + "-" + clickedMonth + "-" + clickedDate;
			    	
	    			if(this.getAttribute("style") == "background-color:red;"){//공연날짜 클릭 되어있는 경우
	    				var str = document.getElementById("eventDates").value;
	    				var days = str.split(',');
	    				var filtered = days.filter((element) => element !== clickedYMD);
	    				document.getElementById("eventDates").value = filtered;
	    				this.setAttribute("style", "background-color: '';");
	    			}else if(this.getAttribute("style") != "background-color:red;"){//공연날짜 클릭 안되어있는 경우
				    	if((document.getElementById("eventDates").value) != ""){//실제 공연일이 비어 있지 않는 경우
				    		document.getElementById("eventDates").value = document.getElementById("eventDates").value + "," + clickedYMD;
				    	}else{//실제 공연일이 비어 있는 경우
				    		document.getElementById("eventDates").value = clickedYMD;
				    	}
				    	this.setAttribute("style", "background-color:red;");
	    			}
	    			
	    			var $eventDates = $("#eventDates"); //실제 공연일
	    	    	
	        		if($("#eventDates").val() == ""){//실제 공연일 선택안할 경우
	        			$("#timeSetting").html("<label>날짜를 선택해 주세요!</label>");
	        		}
	        		if($("#eventDates").val() != ""){//실제 공연일 선택할 경우
	    	    		if($eventDates.val().trim().length != 0){
	    		    		$.ajax({
	    						url : "setTime.rv",
	    						data : {
	    							eventDateList : $eventDates.val()
	    						},
	    						success : function(result){
	    							var resultStr = "";
	    							var resultStr2 = "";
	    							result.sort();
	    							
	    			 				for(var i = 0; i < result.length; i++){
	    		 						resultStr += "<div class='input__item' id='timeSetting' align='center'>"
	    		 								   + "<input type='time' id='startTimes' class='startTimes' name='startTimes' min='10:00' max='20:00' step='1800' placeholder='공연일을 확인하세요' required/><br>"
	    		 					    		   + "<label for='startTime'><span class='iconBox'><img src='resources/img/icons/com.png'></span>"+result[i]+" 날짜를 확인해 주세요**</label></div>";
 		 					    		if(i == 0) {
 		    		 						resultStr2 += result[i];
 		    		 					}else {
 		    		 						resultStr2 += "," + result[i];
 		    		 					}
	    			 				}
	    		 					$("#timesDiv").html(resultStr);
	    		 					$("#eventDates").val(resultStr2);
	    		 					
	    						},
	    						error : function(){
	    							console.log("통신실패");	
	    						}
	    					})
	    	    		}//if($eventDates.val().trim().length != 0)
	    	    			
	        		}//if($("#eventDates").val() != "")
	        			
			    }//cell.onclick = function()
			    
	    	}//if((findPfDate>=perfoStartDate)&&(findPfDate<=perfoEndDate))
	    		
		    if(cnt % 7 == 1) {/*일요일 계산*/
			    //1주일이 7일 이므로 일요일 구하기
			    //월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
		    	cell.innerHTML = "<font color=#F79DC2>" + i + "</font>"; //1번째의 cell에만 색칠
		    }
		    if(cnt % 7 == 0){/* 1주일이 7일 이므로 토요일 구하기*/
		    	//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다	
		    	cell.innerHTML = "<font color=skyblue>" + i + "</font>"; //7번째의 cell에만 색칠
		    	row = calendar.insertRow(); //토요일 다음에 올 셀을 추가
		    }
	        if(today.getFullYear() == date.getFullYear() && today.getMonth() == date.getMonth() && i == date.getDate()){
		        //달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
		        cell.bgColor = "pink";//셀의 배경색을 핑크로 
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