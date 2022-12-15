<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Core -->
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> <!-- XML -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- I18N -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> <!-- Database -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <!-- Functions -->
    
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
			border : 1px solid #FFF7de;
			color:white;        
        }
        .date-number:hover{
			background-color : lightpink;
			cursor : pointer;        
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
		            <div class="normal__breadcrumb__text" style="background-image: url('./resources/img/member/Background_Member.jpg'); background-size:cover; height: 300px; padding-top: 8%;" >
		                <h2>Sign Up</h2>
		                <p>Welcome to the MECENAT.</p>
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
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login__form">
						<h3>Rent Application</h3>
						<form action="pfapplication.rv" method="post">
<!-- 							<div class="input__item"> 공연장 선택 -->
<!-- 			                <select id="hallName" name="hallName"> -->
<!-- 			                  <option value="A">a</option> -->
<!-- 			                  <option value="B">b</option> -->
<!-- 			                </select>  -->
<!-- 							</div> -->
							
							<!-- 확인*********************************************************************** -->
							<c:forEach var="i" items="${arr }">
							<div class="input__item"><!-- 해당공연일 공연시작시간 -->			
								<input type="text" id="startTimes" name="startTimes"  placeholder="아래 공연일을 확인하세요" required/>	
								<label for="startTime"><span class="icon_lock"></span>${i} 선택한 날짜의 공연일을 입력하세요</label>
							</div>
							</c:forEach>
							<!-- 확인*********************************************************************** -->
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
		  var perfoStartDate = $("#rentalStartDate").val();
		  var perfoEndDate = $("#rentalEndDate").val();
		  
		  
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
		    
	    
	    	
	    	if((findPfDate==선택한공연일)){
	    		//여기에 ${pfmc.perfoStartDate}perfoStartDate, ${pfmc.perfoEndDate}perfoEndDate 들어가야됨
	    		
			    cell.setAttribute("class", "date-number");
	    		cell.onclick = function(){
			    	clickedYear = today.getFullYear();
			    	clickedMonth = ( 1 + today.getMonth() );
			    	clickedDate = this.getAttribute('id');
				
			    	clickedDate = clickedDate >= 10 ? clickedDate : '0' + clickedDate;
			    	clickedMonth = clickedMonth >= 10 ? clickedMonth : '0' + clickedMonth;
			    	clickedYMD = clickedYear + "-" + clickedMonth + "-" + clickedDate;
			    	
			    	if((document.getElementById("eventTime").value) != ""){			    		
			    		document.getElementById("eventDate").value = document.getElementById("eventDate").value + "," + clickedYMD;
			    	}else{
			    		document.getElementById("eventDate").value = clickedYMD;
			    	}
			    	this.setAttribute("style", "background-color:lightpink;");
			    	
			    	console.log(clickedYMD);
			    	//list의 내용이랑 perfoStartDate<=clickedYMD || perfoEndDate>=clickedYMD 이면 
			    	
			    	
	// 		    	cell.onclick = function(){
	
	// 					$.ajax({
	// 						url : "make.rv",
	// 						data : {selectDate : clickedYMD},
	// 						success : function(result){
	// 							console.log(result);
	// 							var resultStr = "";
								
	// 							for(var i=0; i<result.length; i++){
	// 								resultStr += "<table><tr>"
	// 										    +"<th>"+result[i].perfoTitle+"</th>"
	// 										    +"<td>"+result[i].runningTime+"</td>"
	// 										    +"<td>"+result[i].ageLimit+"</td>"
	// 										    +"</tr></table>";
	// 							}
	// 							//조회해온 데이터 dom요소에 추가
	// 							$("#info-td").html(resultStr);
	// 						},
	// 						error : function(){
	// 							console.log("통신실패");	
	// 						}
	// 					});
						
	// 			    }
			    }
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
		  }
		
		  if(cnt % 7 != 0){
		  	for(i = 0; i < 7 - (cnt % 7); i++){
		  		cell = row.insertCell();
		  	}
		  }
		}
		
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