<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${performance.perfoTitle} 예매하기</title>
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
        .seat {
            width: 15px;
            height: 15px;
            cursor : pointer;
        }
        
        .clicked {
            background-color: purple;
            color: white;
        }
        
        #seat-table{
        	border:1px solid black;
        	width:100%;
        }
        #seat-area{
        	width:55%;
        	padding:1%;
        }
        #myseats{
        	align:center;
        	width:90%;
        }
        
        .site-btn {
			font-size: 11px;
			color: white;
			background: lightgray;
			font-weight: 700;
			border: none;
			border-radius: 2px;
			letter-spacing: 2px;
			text-transform: uppercase;
			display: inline-block;
			padding: 10px 20px;
		}
		.site-btn-a {
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
		}
		
    </style>    
</head>
<body>
<form action='discount.rv'>
    <div id="reserveOuter" style="width:65%;">
        <div id="head-img" style="width:100%;">
        <img src="resources/img/reserve/center-top.jpg" style="width:100%; height:auto;"/>
        </div>
        <div id="reserve-step">
        <table style="width:100%;" border="1">
        	<tr>
        		<th style="width:130px;"><p>1. 프로그램<br>${performance.perfoTitle}</p></th>
        		<th><p>2. 장소<br>${ra.hallName}</p></th>
        		<th><p>3. 날짜<br>${performance.perfoEventDate}</p></th>
        		<th><p>4. 관람시간<br>${performance.startTime}</p></th>
        		<th><p id="count-seat">5. 인원<br>&nbsp;</p></th>
        		<th><p>6. 결제<br>&nbsp;</p></th>
        	</tr>
        </table>
        </div>
        <div id="concert-info" style="width:100%;">
        	<input type='hidden' id='perfoNo' name='perfoNo' value='${performance.perfoNo}'>
        	<input type='hidden' id='rentalCode' name='rentalCode' value='${ra.rentalCode}'>
        </div>

    <div class="seat-wrapper" align="center">
    	<table id='seat-table' align="center">
    		<tr>
    			<td id='myseats' class="myseats">
    				<table style="width:80%;" border="1">
    					<tr>
    						<th width="35%">좌석등급</th>
    						<th width="35%">티켓가격</th>
    						<th width="30%">선택한 좌석 수</th>
    					</tr>
    					<tr align="center">
    						<th><span style='background-color:orange; width:9px; height:9px; display:inline-block;'></span>&nbsp;R석</th>
    						<td>50,000원</td>
    						<td id='rTier'></td>
    					</tr>
    					<tr align="center">
    						<th><span style='background-color:red; width:9px; height:9px; display:inline-block;'></span>&nbsp;S석</th>
    						<td>30,000원</td>
    						<td id='sTier'></td>
    					</tr>
    					<tr align="center">
    						<th><span style='background-color:green; width:9px; height:9px; display:inline-block;'></span>&nbsp;A석</th>
    						<td>10,000원</td>
    						<td id='aTier'></td>
    					</tr>
    				</table>
    				<table id='myAllSeats' style="width:80%;" border="1">
    					<tr><th>선택한 좌석 정보</th></tr>
    					<tr><th>&nbsp;</th></tr>
    					<tr><th>&nbsp;</th></tr>
    					<tr><th>&nbsp;</th></tr>
    					<tr><th>&nbsp;</th></tr>
    					<tr><th>&nbsp;</th></tr>
    					
    				</table>
    				<table id='letgo-btn' style="width:80%;">
    					<tr style='height:30px;'>
    						<th>
    							<button type='submit' class='site-btn' id='pay-btn' disabled>Make Reservation</button>
   							</th>
   						</tr>
    				</table>
    			</td>
    		</tr>
    	</table>
   	</div>
</div>

<script>
	var seatsNum = "";
	var rTier = 0;
	var sTier = 0;
	var aTier = 0;
	
	<c:forEach items="${asat}" var="a">
	    if('${a.seatTier}' == 'R'){
	    	rTier++;
	    }else if('${a.seatTier}' == 'S'){
	    	sTier++;
	    }else if('${a.seatTier}' == 'A'){
	    	aTier++;
	    }
	</c:forEach>
	
	<c:forEach items="${sosl}" var="n">
		seatsNum = "${n.seatTier}" + "${n.seatCode}";
	
	    if (input.value == seatsNum){//예매된 좌석 클릭 안되게 하는 기능
	    	input.style = "width: 15px; height: 15px; background-color: lightgray; color: rgba(0,0,0,0);  border:1px solid white; cursor: default; pointer-events: none;";             			            	
	    }
	    
	    if('${n.seatTier}' == 'R'){
	    	rTier--;
	    }else if('${n.seatTier}' == 'S'){
	    	sTier--;
	    }else if('${n.seatTier}' == 'A'){
	    	aTier--;
	    }
	</c:forEach>
	
	document.getElementById("rTier").innerText=rTier;
	document.getElementById("sTier").innerText=sTier;
	document.getElementById("aTier").innerText=aTier;
	
	var nomalStr = "<tr><th>선택한 좌석 정보</th></tr>"
    var selectStr = "";
	
	<c:forEach items="${selectedSeats}" var="selectedSeats">
        selectStr += "<tr>"
        		  +  "<td align='center'>"
        		  +  ${selectedSeats}.substring(0,1) + "석 "
        		  +  ${selectedSeats}.substring(1,2) + "열 "
        		  +  ${selectedSeats}.substring(2) + "번"
        		  +  "<input type='hidden' name='selectedSeats' value=" + ${selectedSeats} + ">"
        		  +  "</td>"
        		  +  "</tr>"
	</c:forEach>

    nomalStr += selectStr;
    $("#myAllSeats").html(nomalStr);
		
</script>

</form>

</body>
</html>






























