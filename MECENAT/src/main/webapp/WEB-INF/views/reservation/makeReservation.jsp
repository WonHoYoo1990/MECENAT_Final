<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    </style>
    
</head>
<body>
    <div id="reserveOuter">
        <div id="head-img" style="width:800px;">
        <img src="resources/img/reserve/center.jpg" style="width:100%; height:auto;"/>
        </div>
        <div id="reserve-step">
        <table style="width:800px;" border="1">
        	<tr>
        		<th style="width:130px;">1. 프로그램</th>
        		<th>2. 장소</th>
        		<th>3. 날짜</th>
        		<th>4. 회차</th>
        		<th>5. 인원</th>
        		<th>6. 결제</th>
        	</tr>
        </table>
        </div>
        <div id="concert-info">
        	<table style="width:800px;" border="1">
        		<tr>
        			<td rowspan="4">${list[0].changeName }</td>
        			<td colspan="2">${list[0].perfoTitle }</td>
        		</tr>
        		<tr>
        			<td>기간</td>
        			<td>${list[0].perfoEventDate }~${list[(list.size()-1)].perfoEventDate }</td>
        		</tr>
        		<tr>
        			<td>장소</td>
        			<td>${list[0].hallName }</td>
        		</tr>
        		<tr>
        			<td colspan="2"></td>
        		</tr>
        	</table>
        </div>
        <div id="select-date">
            <table id="date-select" border="1" width="800px">
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
                    <td id="info-td" width="50%" align="left" style="padding:35px;">
<!-- 						<table id='select-pfInfo' border='1'> -->
<!-- 							<tr> -->
<!-- 								<th width='120px'>공연 날짜 </th> -->
<!-- 								<td id='seleted-date' width='200px'></td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<th>공연 시작시간</th> -->
<!-- 								<td id='perfo-stime'></td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<th>공연 시간</th> -->
<!-- 								<td id='perfo-rtime'></td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<th>잔여좌석수</th> -->
<!-- 								<td id='soldout-seats'> -->
																
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 						</table> -->
                    </td>
                </tr>
                <tr>
                	<td colspan="2">
			        <div align="right" style="display:none;">
			        	<button type="submit" class="site-btn">Make Reservation</button>
			        </div>
		        	</td>
		        </tr>
            </table>
        </div>
    </div>
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
	    		if(perfoEventDate==findPfDate){
				
	     			cell.setAttribute('class', "pfDetail");
	     			cell.setAttribute('value', "${p.perfoEventDate}");
	     			if("${list[0].perfoEventDate}"==findPfDate){
	     				cell.bgColor = "yellow";
	     			}
	    		}
	        </c:forEach>
	        
	        cell.onclick = function(){
				var perfoEventDate = this.getAttribute('value');
     			if(this.getAttribute('value') != null){
      				$(".pfDetail").css("background-color","white");
     				this.setAttribute("style", "background-color:yellow;");
//     				$("#seleted-date").html(perfoEventDate);
     			}else if(this.getAttribute("style") != "background-color:white;"){
 					this.setAttribute("style", "background-color:white;");
     			}
     			
     			$.ajax({
					url : "perfoNum.rv",
					data : {
						perfoEventDate : perfoEventDate,
     					rentalCode : ${ra.rentalCode}
					},
					success : function(result){
						var resultStr = "";

 						resultStr += "<table id='select-pfInfo' border='1'>"
								  +  "<tr><th width='120px'>공연 날짜 </th><td id='seleted-date' width='200px'>&nbsp;" + result.perfoEventDate + "</td></tr>"
								  +  "<tr><th>공연 시작시간</th><td id='perfo-stime'>&nbsp;" + result.startTime + "</td></tr>"
								  +  "<tr><th>공연 시간</th><td id='perfo-rtime'>&nbsp;" + result.runningTime + "</td></tr>"
								  +  "<tr><th>잔여좌석수</th><td id='soldout-seats'>&nbsp;" + "100" + "</td></tr>"
								  +  "</table>"
				

	 					$("#info-td").html(resultStr);
					},
					error : function(){
						console.log("통신실패");	
					}
				})
     			
     			
 			}
	        
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
