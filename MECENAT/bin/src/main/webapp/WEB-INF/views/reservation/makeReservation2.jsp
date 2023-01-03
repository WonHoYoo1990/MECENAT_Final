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
<form action='discount.rv' method='post'>
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

    <div class="seat-wrapper">
    	<table id='seat-table' align="center">
    		<tr>
    			<td id='seat-area' class="seat-area">
    			</td>
    			<td id='myseats' class="myseats">
    				<table style="width:80%;" border="1">
    					<tr>
    						<th width="40%">좌석등급</th>
    						<th width="40%">티켓가격</th>
    						<th>잔여석</th>
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
		
		<script>
		    let test = [];
		    let selectedSeats = new Array();
		    let selectedSeatsMap = [];
		    const seatWrapper = document.querySelector("#seat-area");
		    let clicked = "";
		    let div = "";
			var count = 0;
			var seatLevel = "";
			
			if("${ra.hallName}" == "Concert Hall"){
			    for (let i = 1; i <= 16; i++) {//세로
			        div = document.createElement("div");
			        div.align = "center";
			        seatWrapper.append(div);
			        for (let j = 1; j <= 24; j++) {//가로
			            const input = document.createElement('input');
		
			            input.type = "button";
			            input.name = "seats"
			            input.classList = "seat";
		            	input.style = "width: 15px; height: 15px; background-color: green; color: rgba(0,0,0,0);  border:1px solid white;"; //A석 띄워주기
		            	
			            //3중포문을 사용하지 않기위해 
			            mapping(input, i, j);
		            	seatLevel = input.value;
		            	input.value = "A"+seatLevel;
			            div.append(input);
			         
			            if(j > 2 && j < 23 && i < 11){//S석 띄워주기
			            	input.value = "S" + seatLevel;
				            input.style = "width: 15px; height: 15px; background-color: red; color: rgba(0,0,0,0);  border:1px solid white;";
				            if(j > 4 && j < 21 && i < 6){//R석 띄워주기
				            	input.value = "R" + seatLevel;
				            	input.style = "width: 15px; height: 15px; background-color: orange; color: rgba(0,0,0,0);  border:1px solid white;";
				            }
			            }

 		            	if(input.value.substring(1)=="blank"){//복도 만드는 기능
			            	input.style = "width: 15px; height: 15px; background-color: white; color: rgba(0,0,0,0);  border:1px solid white; cursor: default; pointer-events: none;";
		            	}

			            if(i == 16 && j >= 3 && j <= 22){//16번째 줄 좌석 띄우는 기능
			            	input.style = "width: 15px; height: 15px; background-color: white; color: rgba(0,0,0,0);  border:1px solid white; cursor: default; pointer-events: none;";
			        	}
			           
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
			            
			            input.addEventListener('click', function(e) {//좌석 클릭
			                //중복방지 함수
			                selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);
			             
			                if(input.classList.contains("clicked")) {//click class가 존재할때(제거해주는 toggle)
			                    input.classList.remove("clicked");
			                    selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
			                    count -= 1;
			                    input.style = "width: 15px; height: 15px; background-color: green; color: rgba(0,0,0,0);  border:1px solid white;";
			                    
			                    if(j > 2 && j < 23 && i < 11){//S석 띄워주기
						            input.style = "width: 15px; height: 15px; background-color: red; color: rgba(0,0,0,0);  border:1px solid white;";
						            if(j > 4 && j < 21 && i < 6){//R석 띄워주기
						            	input.style = "width: 15px; height: 15px; background-color: orange; color: rgba(0,0,0,0);  border:1px solid white;";
						            }
					            }
			                }else if(!input.classList.contains("clicked") && count < 5){//click class가 존재하지 않을때 (추가해주는 toggle)
			                    count += 1;
			                    input.style = "border: 1px solid black; background-color: hotpink; color: rgba(0,0,0,0);";
			                    input.classList.add("clicked");
			                }
			                
			                clicked = document.querySelectorAll(".clicked");
		                    clicked.forEach((data) => {
		                        selectedSeats.push(data.value);
		              		})

			                if(count != 0){//선택한 좌석수만큼 인원수 증가
			                	document.getElementById("count-seat").innerHTML="5. 인원<br>&nbsp;"+count;
			                	document.getElementById("pay-btn").className="site-btn-a";
			                	document.getElementById("pay-btn").disabled = false;
			                }else if(count == 0){
			                	document.getElementById("count-seat").innerHTML='5. 인원<br>&nbsp;';
			                	document.getElementById("pay-btn").className="site-btn";
			                	document.getElementById("pay-btn").disabled = true;
			                }
			                
			                var nomalStr = "<tr><th>선택한 좌석 정보</th></tr>"
			                var selectStr = "";
			                for(var k = 0; k < 5; k++){//선택한 좌석 정보
			                	if(selectedSeats[k] != null){
					                selectStr += "<tr>"
					                		  +  "<td align='center'>"
					                		  +  selectedSeats[k].substring(0,1) + "석 "
					                		  +  selectedSeats[k].substring(1,2) + "열 "
					                		  +  selectedSeats[k].substring(2) + "번"
					                		  +  "<input type='hidden' name='selectedSeats' value="+selectedSeats[k]+">"
					                		  +  "</td>"
					                		  +  "</tr>"
			               		}else{
			               			selectStr += "<tr><th>&nbsp;</th></tr>"
			               		}
			                }

			                nomalStr += selectStr;
			                $("#myAllSeats").html(nomalStr);
			            })//input.addEventListener('click', function(e)
			            		
			        }//for (let j = 1; j < 15; j++)
			        	
			    }//for (let i = 1; i <= 10; i++)
			    	
			} else if("${ra.hallName}" == "Dreaming Hall"){
				for (let i = 1; i <= 13; i++) {//세로
			        div = document.createElement("div");
			        div.align = "center";
			        seatWrapper.append(div);
			        for (let j = 1; j <= 24; j++) {//가로
			            const input = document.createElement('input');
		
			            input.type = "button";
			            input.name = "seats"
			            input.classList = "seat";
		            	input.style = "width: 15px; height: 15px; background-color: green; color: rgba(0,0,0,0);  border:1px solid white;"; //A석 띄워주기
		            	
			            //3중포문을 사용하지 않기위해 
			            mapping(input, i, j);
		            	seatLevel = input.value;
		            	input.value = "A"+seatLevel;
			            div.append(input);
			         
			            if(j > 2 && j < 23 && i < 11){//S석 띄워주기
        				    input.value = "S" + seatLevel;
				            input.style = "width: 15px; height: 15px; background-color: red; color: rgba(0,0,0,0);  border:1px solid white;";
				            if(j > 4 && j < 21 && i < 6){//R석 띄워주기
				            	input.value = "R" + seatLevel;
				            	input.style = "width: 15px; height: 15px; background-color: orange; color: rgba(0,0,0,0);  border:1px solid white;";
				            }
				            
			            }
			            
 		            	if(input.value.substring(1)=="blank"){//복도 만드는 기능
			            	input.style = "width: 15px; height: 15px; background-color: white; color: rgba(0,0,0,0);  border:1px solid white; cursor: default; pointer-events: none;";
		            	}
						
			            if (input.value == "RA8"){//예매된 좌석 클릭 안되게 하는 기능
			            	input.style = "width: 15px; height: 15px; background-color: lightgray; color: rgba(0,0,0,0);  border:1px solid white; cursor: default; pointer-events: none;";             
			            }
			            
			            input.addEventListener('click', function(e) {//좌석 클릭
			                 //중복방지 함수
			                selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);
			             
			                if (input.classList.contains("clicked")) {//click class가 존재할때(제거해주는 toggle)
			                    input.classList.remove("clicked");
			                    selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
			                    count -= 1;
			                    input.style = "width: 15px; height: 15px; background-color: green; color: rgba(0,0,0,0);  border:1px solid white;";
			                    
			                    if(j > 2 && j < 23 && i < 11){//S석 띄워주기
						            input.style = "width: 15px; height: 15px; background-color: red; color: rgba(0,0,0,0);  border:1px solid white;";
						            if(j > 4 && j < 21 && i < 6){//R석 띄워주기
						            	input.style = "width: 15px; height: 15px; background-color: orange; color: rgba(0,0,0,0);  border:1px solid white;";
						            }
					            }
			                } else if(!input.classList.contains("clicked") && count < 5){//click class가 존재하지 않을때 (추가해주는 toggle)
			                    count += 1;
			                    input.style = "border: 2px solid black; background-color: hotpink; color: rgba(0,0,0,0);";
			                    input.classList.add("clicked");
			                }
			                
			                clicked = document.querySelectorAll(".clicked");
		                    clicked.forEach((data) => {
		                        selectedSeats.push(data.value);
		              		})
		                 
			                
			                if(count != 0){//선택한 좌석수만큼 인원수 증가
			                	document.getElementById("count-seat").innerHTML=count;
			                }else if(count == 0){
			                	document.getElementById("count-seat").innerText='0';
			                }
			                
			                var nomalStr = "<tr><th>선택한 좌석 정보</th></tr>"
			                var selectStr = "";
			                
			                for(var k = 0; k < 5; k++){//선택한 좌석 정보
			                	if(selectedSeats[k] != null){
					                selectStr += "<tr>"
					                		  +  "<td align='center'>"
					                		  +  selectedSeats[k].substring(0,1) + "석 "
					                		  +  selectedSeats[k].substring(1,2) + "열 "
					                		  +  selectedSeats[k].substring(2) + "번"
					                		  +  "<input type='hidden' name='selectedSeats' value="+selectedSeats[k]+">"
					                		  +  "</td>"
					                		  +  "</tr>"
			               		}else{
			               			selectStr += "<tr><th>&nbsp;</th></tr>"
			               		}
			                }
			               
			                nomalStr += selectStr;
			                $("#myAllSeats").html(nomalStr);
			                		  
			            })//input.addEventListener('click', function(e)
			            		
			        }//for (let j = 1; j < 15; j++)
			        	
			    }//for (let i = 1; i <= 10; i++)
			    	
			}//if
		
		    function mapping(input, i, j) {

				if(j!=7||j!=18){				
			        if (i == 1) {
			            input.value = "A" + j;
			        } else if (i == 2) {
			            input.value = "B" + j;
			        } else if (i == 3) {
			            input.value = "C" + j;
			        } else if (i == 4) {
			            input.value = "D" + j;
			        } else if (i == 5) {
			            input.value = "E" + j;
			        } else if (i == 6) {
			            input.value = "F" + j;
			        } else if (i == 7) {
			            input.value = "G" + j;
			        } else if (i == 8) {
			            input.value = "H" + j;
			        } else if (i == 9) {
			            input.value = "I" + j;
			        } else if (i == 10) {
			            input.value = "J" + j;
			        } else if (i == 11) {
			            input.value = "K" + j;
			        } else if (i == 12) {
			            input.value = "L" + j;
			        } else if (i == 13) {
			            input.value = "M" + j;
			        } else if (i == 14) {
			            input.value = "N" + j;
			        } else if (i == 15) {
			            input.value = "O" + j;
			        } else if (i == 16) {
			            input.value = "P" + j;
			        } else if (i == 17) {
			            input.value = "Q" + j;
			        }
				} 
				
				
				if((input.value.substring(1))==7 || (input.value.substring(1))==18){
					input.value = "blank";
				}
				
				if((input.value.substring(1))>7 && (input.value.substring(1))<18){
					input.value = input.value.substring(0,1)+(input.value.substring(1)-1);
				}else if((input.value.substring(1))>18){
					input.value = input.value.substring(0,1)+(input.value.substring(1)-2);
				}
		    }
		</script>
		        
    </div>
</form>

</body>
</html>






























