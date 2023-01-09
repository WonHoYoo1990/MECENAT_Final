<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${list[0].perfoTitle} 예매하기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style type="text/css">
        #calendar tr td{
            width: 50px;
            height: 50px;
            text-align: center;
            font-size: 20px;
            font-family: 굴림;
            border:2px border-color:#3333FF;
            border-radius: 8px;/*모서리 둥글게*/
        }
        
        .date-number{
			background-color : #FFF7de;        
        }
        .date-number:hover{
			background-color : lightpink;
			cursor : pointer;        
        }
        .pfDetail{
        	border : 3px solid lightpink;
        }
        .pfDetail:hover{
        	cursor : pointer;  
        	background-color : pink;
        }
        
         #modal {
       		margin : 100px;
            width: 50%;
            height: 50%;
            position: absolute;
            left: 0;
            top: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            -webkit-backdrop-filter: blur(1.5px);
            padding-top:10%;
        }
        #modal-window {
        	width: 95%;
            height: auto;
            background: rgba(251,248,232,0.9);
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            position: relative;
            top: -100px;
            padding: 5%;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            color: black;
            
        }
        #modal .title h2 {
            display: inline;
        }
        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            color: black;
            font-size: 25px;
            font-weight : bold;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
            color: black;
            font-size : 14px;
        }
        .site-btn {
			font-size: 11px;
			color: white;
			background: #2ea4ff;
			font-weight: 700;
			border: none;
			border-radius: 2px;
			letter-spacing: 2px;
			text-transform: uppercase;
			display: inline-block;
			padding: 10px 20px;
			width: 100%;
		}
    </style>
    
</head>
<body>

	<div id="modal" class="modal-overlay">
        <div id="modal-window" class="modal-window">
            <div class="title">
                <h2>구매전 필독 안내</h2>
            </div>
            <div class="close-area">X</div>
	            <div align="center">
		            <div class="content" align="left">
						<p>구매 매수 제한이 적용되는 할인티켓 구매 시, 제한 매수 확인 바랍니다.<br>
						(초과 구매 또는 증빙자료 미지참시 할인 불가. 차액 지불 후 티켓 수령 가능)<br>
						장애인석(휠체어석)은 휠체어 사용 장애인 전용공간으로 좌석이 존재하지 않으니 구매 시 주의 바랍니다.<br>
						(현장에서 휠체어 미사용 시, 티켓 수령 및 입장이 제한됩니다.)<br>
						예매 및 환불관련 자세한 사항은 홈페이지 예매안내를 참고 바랍니다.<br>
						공연에 따라 입장연령이 제한될 수 있습니다.<br>
						예매자는 본 안내페이지의 모든 내용을 숙지 및 동의한 것으로 간주합니다.<br><br>
		
						◈ 8세 이상 관람가 (2016년 12월 31일 이전 출생자 입장 가능)<br>
						- 관람 연령 기준은 생년월일을 가장 최우선으로 적용되며, <br>	
						** 초등학생의 경우 생년월일 확인이 가능한 증빙서류를 지참하셔야 합니다. (티켓수령시 및 객석 입장시 제시)<br><br>	
											
						◈ 할인 받은 내역이 있으신 경우, 해당 증빙서류를 지참하여 할인 대상자 본인이 직접 수령해야합니다.<br>	
						본인 관람이 아니거나 미지참 시, 정가에 대한 차액을 지불해야만 티켓 수령이 가능합니다.<br>	
						◈ 공연이 시작된 이후에는 예매한 등급에 관계없이 지정된 시간에 지연 관객석으로 안내 받게 됩니다.<br>	
						◈ 많은 관객들로 주차 및 교통난이 예상됩니다. 가급적 대중교통을 이용 부탁드립니다.<br>	<br>	
		
						공연 당일은 관람 연령 제한등 어떠한 사유로도 환불 및 변경이 불가능하오니 예매 전 관련정보를 충분히 숙지해주시기 바랍니다.<br></p>
		            </div>
	            </div>
        </div>
    </div>
    
<form action='selectSeats.rv' method='post'>
    <div id="reserveOuter" style="width:65%;">
        <div id="head-img" style="width:100%;">
        <img src="resources/img/reserve/center-top.jpg" style="width:100%; height:auto;"/>
        </div>
        <div id="reserve-step">
        <table style="width:100%;" border="1">
        	<tr>
        		<th style="width:130px;">1. 프로그램<br><p>${list[0].perfoTitle}</p></th>
        		<th>2. 장소<br><p>${list[0].hallName}</p></th>
        		<th id="top-select-date">3. 날짜</th>
        		<th id="top-select-time">4. 관람시간</th>
        		<th>5. 인원<br></th>
        		<th>6. 결제<br></th>
        	</tr>
        </table>
        </div>
        <div id="concert-info" style="width:100%;">
        	<table style="width:100%;" border="1">
        		<tr>
        			<td rowspan="4">${list[0].changeName}</td>
        			<td colspan="2">${list[0].perfoTitle}</td>
        		</tr>
        		<tr>
        			<td>기간</td>
        			<td>${list[0].perfoEventDate }~${list[(list.size()-1)].perfoEventDate }</td>
<!--         		rentalCode로 조회한 ArrayList<Performance> list에서 시작날짜(0번째 인덱스) ~ 종료날짜(마지막 인덱스) -->
        		</tr>
        		<tr>
        			<td>장소</td>
        			<td>${list[0].hallName }</td>
        		</tr>
        		<tr>
        			<td>출연진</td>
        			<td id="actors-td"></td>
        		</tr>
        	</table>
        	<input type='hidden' id='perfoNo' name='perfoNo' value=''>
        	<input type='hidden' id='rentalCode' name='rentalCode' value='${ra.rentalCode}'>
        </div>
        <div id="select-date" style="width:100%;">
            <table id="date-select" border="1" style="width:100%;">
                <tr>
                    <th>1. 날짜 선택</th>
                    <th>2. 회차 선택</th>
                </tr>
                <tr>
                    <td>   
				    <h3 align="center">★공연 일정★</h3>
				    
				    <input type="hidden" id="perfoStartDate" value="${list[0].perfoEventDate}">
					<input type="hidden" id="perfoEndDate" value="${list[1] }">
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
                    </td>
                    <td id="info-td" width="50%" align="center" style="padding:35px;">
                    </td>
                </tr>
            </table>
        </div>
    </div>
</form>
	<script>
    	document.addEventListener("DOMContentLoaded", function(){
	        const modal = document.getElementById("modal")
			    modal.style.display = "flex"
			    
	    	const closeBtn = modal.querySelector(".close-area")
	    	closeBtn.addEventListener("click", e => {
	    	    modal.style.display = "none"
			})
    	},{once : true});
    </script>
    <script type="text/javascript">
		var today = new Date("${list[0].perfoEventDate}");//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
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
		
		  var dateNum = 0;
		  var perfoStartDate = "${list[0].perfoEventDate}";
		 
		  var perfoEndDate = "${list[(list.size()-1)].perfoEventDate}";
		  
		  for(i = 1; i <= lastDate.getDate(); i++){//1일부터 마지막 일까지 돌림
		  	cell = row.insertCell();
		    //열 한칸한칸 계속 만들어주는 역할
		  	cnt += 1;
		    //열의 갯수를 계속 다음으로 위치하게 해주는 역할
		
		    cell.setAttribute('id', i);
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
    	 	
		    <c:forEach items="${list}" var="p">
	    		var perfoEventDate = "${p.perfoEventDate}";
	    		if(perfoEventDate == findPfDate){	
	     			cell.setAttribute('class', "pfDetail");
	     			cell.setAttribute('value', "${p.perfoEventDate}");
	     			if("${list[0].perfoEventDate}" == findPfDate){
	     				cell.bgColor = "lightpink";
	     			}
	    		}
	        </c:forEach>
	        
	        cell.onclick = function(){//실제 공연날 클릭
				var perfoEventDate = this.getAttribute('value');
     			if(this.getAttribute('value') != null){
      				$(".pfDetail").css("background-color","white");
     				this.setAttribute("style", "background-color:lightpink;");
     			}else if(this.getAttribute("style") != "background-color:white;"){
 					this.setAttribute("style", "background-color:white;");
     			}
     			
     			$.ajax({//선택한 공연 정보
					url : "perfoNum.rv",
					data : {
						perfoEventDate : perfoEventDate,
     					rentalCode : ${ra.rentalCode},
     					hallName : "${list[0].hallName}"
					},
					success : function(result){
						var resultStr = "";
						var resultStr2 = "";
						var rtime = parseInt(result.runningTime.substring(0,3));
						var etimeHh = parseInt(result.startTime.substring(0,2));
						var etimeMm = parseInt(result.startTime.substring(3,5));
						var k = (etimeHh * 60) + etimeMm + rtime;
						etimeHh = Math.floor(k/60);
						etimeMm = k - (etimeHh*60);
						if(etimeMm == 0){ etimeMm = "00";}
 						resultStr += "<table id='select-pfInfo' border='1'>"
								  +  "<tr><th width='120px'>공연 날짜 </th><td id='seleted-date' width='200px'>&nbsp;" + result.perfoEventDate + "</td></tr>"
								  +  "<tr><th>공연 시작시간</th><td id='perfo-stime'>&nbsp;" + result.startTime + "</td></tr>"
								  +  "<tr><th>공연 종료시간</th><td id='perfo-etime'>&nbsp;" + etimeHh + ":" + etimeMm + "</td></tr>"
								  +  "<tr><th>공연 시간</th><td id='perfo-rtime'>&nbsp;"+ rtime +" 분</td></tr>"
								  +  "<tr><th>잔여좌석수</th><td id='soldout-seats'>&nbsp;" + result.remainingSeats + "</td></tr>";
						if(result.remainingSeats > 0){//잔여좌석수가 1개 이상일 경우 버튼이 보이도록, 0일경우는 안보임/
							resultStr +=  "<table style='width:50%;'><tr><td colspan='2' align='center'><button type='submit' class='site-btn' id='next-btn'>Make Reservation</button></td></tr></table>";
						}
						resultStr +=  "</table>";
						
	 					$("#info-td").html(resultStr);
	 					$("#top-select-date").html("3. 날짜<br><p>"+ result.perfoEventDate +"</p>")
 						$("#top-select-time").html("4. 관람시간<br><p>"+ result.startTime +"</p>")
 						$("#perfoNo").val(result.perfoNo);
 						$("#actors-td").text(result.cast);

					},
					error : function(){
						console.log("통신실패");
					}
				})//$.ajax({//선택한 공연 정보
     		
 			}//cell.onclick = function(){//실제 공연날 클릭
	        
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
		    
		  }//for(i = 1; i <= lastDate.getDate(); i++){//1일부터 마지막 일까지 돌림
		  
		  if(cnt % 7 != 0){
		  	for(i = 0; i < 7 - (cnt % 7); i++){
		  		cell = row.insertCell();
		  	}
    	  }//if(cnt % 7 != 0){
		  
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
