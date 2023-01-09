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
		.totalPrice{
			width:100%;
			height:50px;
		}
        
        #priceTd{
       		width: 60%;
			font-size: 25px;
			font-weight: 700;
			padding:30px;
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
			cursor:point;
		}
		.site-btn-a:hover {
		cursor : pointer; 
		}
    </style>    
</head>
<body>
<form action="payment.rv" method='post'>
<input type='hidden' name='thisSeats' id="thisSeats">
<input type="hidden" name="totalPrice" id="tp">
<input type="hidden" name="rentalCode" value="${ra.rentalCode}">
<input type="hidden" name="perfoNo" value="${performance.perfoNo}">
    <div id="reserveOuter" style="width:65%;" align='center'>
        <div id="head-img" style="width:100%;">
        	<img src="resources/img/reserve/center-top.jpg" style="width:100%; height:auto;"/>
        </div>
        <div id="reserve-step" align='center'>
        <table style="width:100%;" border="1">
        	<tr>
        		<th style="width:130px;"><p>1. 프로그램<br>${performance.perfoTitle}</p></th>
        		<th><p>2. 장소<br>${ra.hallName}</p></th>
        		<th><p>3. 날짜<br>${performance.perfoEventDate}</p></th>
        		<th><p>4. 관람시간<br>${performance.startTime}</p></th>
        		<th><p id="count-seat">5. 인원<br>${selectAllSeats.size()}</p></th>
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
    			<td id='myseats' class="myseats" align='center'>
    				<table style="width:80%;" border="1" align='center'>
    					<tr>
    						<th width="35%">좌석등급</th>
    						<th width="35%">티켓가격</th>
    						<th width="30%">선택한 좌석 수</th>
    					</tr>
    					
    					<tr align="center">
    						<th><span style='background-color:orange; width:9px; height:9px; display:inline-block;'></span>&nbsp;R석</th>
    						<fmt:parseNumber var="rPrice" integerOnly="true" value="${performance.price*1.5}"/>
    						<td>${rPrice} 원</td>
    						<td id='rTier'></td>
    					</tr>
    					
    					<tr align="center">
    						<th><span style='background-color:red; width:9px; height:9px; display:inline-block;'></span>&nbsp;S석</th>
    						<fmt:parseNumber var="sPrice" integerOnly="true" value="${performance.price*1.2}"/>
    						<td>${sPrice} 원</td>
    						<td id='sTier'></td>
    					</tr>
    					
    					<tr align="center">
    						<th><span style='background-color:green; width:9px; height:9px; display:inline-block;'></span>&nbsp;A석</th>
    						<td>${performance.price} 원</td>
    						<td id='aTier'></td>
    					</tr>
    				</table>
    				<table id='selectAllSeats' style="width:80%;" border="1">
    					<tr><th>선택한 좌석 정보</th><th>선택 좌석 금액</th></tr>
    					<tr><th>&nbsp;</th><th>&nbsp;</th></tr>
    					<tr><th>&nbsp;</th><th>&nbsp;</th></tr>
    					<tr><th>&nbsp;</th><th>&nbsp;</th></tr>
    					<tr><th>&nbsp;</th><th>&nbsp;</th></tr>
    					<tr><th>&nbsp;</th><th>&nbsp;</th></tr>
    				</table>
    				<table id='totalPrice' align='center' >
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
	var nomalStr = "<tr><th>선택한 좌석 정보</th><th>선택 좌석 금액</th></tr>"
    var selectStr = "";
	var priceStr = "";
	var selectSeatsList = [];
	var seatsListStr = "";
	var priceNum = 0;
	<c:forEach items="${selectAllSeats}" var="selectAllSeats">
		selectSeatsList.push("${selectAllSeats}");
	</c:forEach>

	for (var i = 0; i < selectSeatsList.length; i++) {
		if(selectSeatsList[i] != null){
			if(i == 0 ){
				seatsListStr += selectSeatsList[i];
			}else{
				seatsListStr += "," + selectSeatsList[i];
			}
			
	        selectStr += "<tr align='center'>"
	        		  +  "<td>"
	        		  +  selectSeatsList[i].substring(0,1) + "석 "
	        		  +  selectSeatsList[i].substring(1,2) + "열 "
	        		  +  selectSeatsList[i].substring(2) + "번"
	        		  + "</td><td>"
	        		  
	    	if(selectSeatsList[i].substring(0,1) == 'R'){
	    		rTier++;
	    		selectStr += '${rPrice} 원'
	    	}
			if(selectSeatsList[i].substring(0,1) == 'S'){
				sTier++;
				selectStr += '${sPrice} 원'
	    	}
			if(selectSeatsList[i].substring(0,1) == 'A'){
				aTier++;
				selectStr += '${performance.price} 원'
	    	}
			selectStr += "</td></tr>"
		} else{
   			selectStr += "<tr><th>&nbsp;</th><th>&nbsp;</th></tr>"
   		}
	}
	priceStr = "<tr><th id='priceTd'> 총 결제금액 : " + (rTier * ${rPrice} + sTier * ${sPrice} + aTier * ${performance.price}).toLocaleString() + " 원</th>"
			 + "<th><button type='submit' class='site-btn-a' id='pay-btn'>Make Reservation</button></th></tr>";
    nomalStr += selectStr;
    $("#selectAllSeats").html(nomalStr);
    $("#totalPrice").html(priceStr);
    $("#thisSeats").val(seatsListStr);
    priceNum = parseInt(rTier * ${rPrice} + sTier * ${sPrice} + aTier * ${performance.price});
	$("#tp").val(priceNum);
    document.getElementById("rTier").innerText=rTier;
	document.getElementById("sTier").innerText=sTier;
	document.getElementById("aTier").innerText=aTier;
	
</script>

</form>

</body>
</html>