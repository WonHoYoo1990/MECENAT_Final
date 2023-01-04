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
	.content {
        background-color:rgb(247, 245, 245);
        width:90%;
        margin:auto;
    }
	.innerOuter {
        border:1px solid lightgray;
        width:90%;
        margin:auto;
        padding:5% 10%;
		background-color:white;
	}
	#title{
		font-size: 50px;
	}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
		<div class="content">
        	<br><br>
	        <div class="innerOuter" style="padding:5% 10%;">
	        	<br>
				<h1 align="center" id="title">공연 관리</h1>
				<br><br>
				<table id="boardList" class="table table-hover" align="center">
	                
					<thead>
	                    <tr align="center">
	                        <th>제목</th>
	                        <th>감독</th>
	                        <th>홀</th>
	                        <th>시간</th>
	                        <th>담당자</th>
	                        <th>담당자 번호</th>
	                        <th>담당자 이메일</th> 
	                        <th></th>
	                        <th>상태선택</th>
	                        <th></th>
	                        <th></th>
	                    </tr>
	                </thead>
	                <tbody>
	                   	<c:forEach var="p" items="${pList}" varStatus="status">
	                   	<c:if test="${p.perfoStatus ne '공연종료'}">
							<tr align="center">
							  	<td>${p.perfoTitle }</td>
							    <td>${p.director }</td>
							    <td>${p.hallName}</td>
							    <td>${p.eventDate}</td>
							    <td>${p.agentName}</td>
							    <td>${p.agentPhone }</td>
							    <td>${p.agentEmail }</td>
							    
							    <c:choose>
								    <c:when test="${p.perfoStatus eq '공연중'}">
								    	<td><button onclick="location.href='detail.perf?rno=${p.rentalCode}'">상세페이지</button></td>
								    </c:when>
								    <c:otherwise>
								    	<td></td>
								    </c:otherwise>
							    </c:choose>
							    <td>
							    <select name="perfoStatus" id="perfoStatus${p.rentalCode}" class="form-control-file border" onchange="statusChange(${p.rentalCode});">
			            			 <c:choose>
			            				<c:when test="${p.perfoStatus eq '공연예정' }">
					            			<option value="공연예정" selected>공연예정</option>
					            			<option value="공연중">공연중</option>
					            			<option value="공연종료">공연종료</option>
				            			</c:when>
				            			<c:when test="${p.perfoStatus eq '공연중' }">
					            			<option value="공연예정">공연예정</option>
					            			<option value="공연중" selected>공연중</option>
					            			<option value="공연종료">공연종료</option>
				            			</c:when>
				            			<c:otherwise>
				            				<option value="공연예정">공연예정</option>
					            			<option value="공연중">공연중</option>
					            			<option value="공연종료" selected>공연종료</option>
				            			</c:otherwise>
				            		</c:choose>
				            	</select>
					            	
				            	</td>
					            
					            <!-- 화면 줄이면 잘 안보여서 주석...처리후에 풀기 -->
							    <!-- <td><button>공연정보수정</button></td> -->
							    
							</tr>
							</c:if>
	                   	</c:forEach>
	                   	<tr>
						</tr>
	                </tbody>
	            </table>
	            
	            <div id="pagingArea">
                <ul class="pagination">
                	<!-- currentPage가 1이면 숨기기 -->
                	<c:choose>
                		<c:when test="${pi.currentPage ne 1 }">
                			<li class="page-item"><a class="page-link" href="playPerformanceForm.mana?currentPage=${pi.currentPage-1}&currentPageUnd=${piUnd.currentPage}">Previous</a></li>
                		</c:when>
	                    <c:otherwise><!-- currentPage가 1일경우 (1페이지) -->
	                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
	                    </c:otherwise>
                	</c:choose>
                	
                	<c:forEach begin="${pi.startPage }" end="${pi.endPage }" var="p">
	                	<c:choose>
                			<c:when test="${pi.currentPage eq p }">
                				<li class="page-item disabled"><a class="page-link" href="playPerformanceForm.mana?currentPage=${p}&currentPageUnd=${piUnd.currentPage}">${p}</a></li>
                			</c:when>
                			<c:otherwise>
	                    		<li class="page-item"><a class="page-link" href="playPerformanceForm.mana?currentPage=${p}&currentPageUnd=${piUnd.currentPage}">${p}</a></li>
                			</c:otherwise>
                		</c:choose>
                	</c:forEach>
                    
                    <!-- currentPage가 maxPage와 일치하면 숨기기  -->
                    <c:choose>
						<c:when test="${pi.currentPage eq pi.maxPage }">
		                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="playPerformanceForm.mana?currentPage=${pi.currentPage +1}&currentPageUnd=${piUnd.currentPage}">Next</a></li>
						</c:otherwise>                    
                    </c:choose>
                </ul>
            </div>
	            
	            
	            
	            
	            
	            <br><br><br><br>
				<h1 align="center" id="title">종료 공연 관리</h1>
				<br><br>
				<table id="boardList" class="table table-hover" align="center">
					<thead>
	                    <tr align="center">
	                        <th>제목</th>
	                        <th>감독</th>
	                        <th>홀</th>
	                        <th>시간</th>
	                        <th>담당자</th>
	                        <th>담당자 번호</th>
	                        <th>담당자 이메일</th> 
	                        <th></th>
	                        <th>상태선택</th>
	                        <th></th>
	                        <th></th>
	                    </tr>
	                </thead>
	                <tbody>
	                
	                
	                   	<c:forEach var="p" items="${eList}" varStatus="status">
						<c:if test="${p.perfoStatus eq '공연종료'}">
	                   	
							<tr align="center">
							  	<td>${p.perfoTitle }</td>
							    <td>${p.director }</td>
							    <td>${p.hallName}</td>
							    <td>${p.eventDate}</td>
							    <td>${p.agentName}</td>
							    <td>${p.agentPhone }</td>
							    <td>${p.agentEmail }</td>
							    
							    <td>
							    <select name="perfoStatus" id="perfoStatus${p.rentalCode}" class="form-control-file border" onchange="statusChange(${p.rentalCode});">
			            			 <c:choose>
			            				<c:when test="${p.perfoStatus eq '공연예정' }">
					            			<option value="공연예정" selected>공연예정</option>
					            			<option value="공연중">공연중</option>
					            			<option value="공연종료">공연종료</option>
				            			</c:when>
				            			<c:when test="${p.perfoStatus eq '공연중' }">
					            			<option value="공연예정">공연예정</option>
					            			<option value="공연중" selected>공연중</option>
					            			<option value="공연종료">공연종료</option>
				            			</c:when>
				            			<c:otherwise>
				            				<option value="공연예정">공연예정</option>
					            			<option value="공연중">공연중</option>
					            			<option value="공연종료" selected>공연종료</option>
				            			</c:otherwise>
				            		</c:choose>
				            	</select>
					            	
				            	</td>
					            
							    <td><button onclick="deletePerf(${p.rentalCode});">공연 삭제</button></td>
							    
							</tr>
							</c:if>
	                   	</c:forEach>
	                   	<tr>
						</tr>
	                </tbody>
	            </table>
	            
	            <div id="pagingArea">
                <ul class="pagination">
                	<!-- currentPage가 1이면 숨기기 -->
                	<c:choose>
                		<c:when test="${piUnd.currentPage ne 1 }">
                			<li class="page-item"><a class="page-link" href="playPerformanceForm.mana?currentPage=${pi.currentPage}&currentPageUnd=${piUnd.currentPage-1}">Previous</a></li>
                		</c:when>
	                    <c:otherwise><!-- currentPage가 1일경우 (1페이지) -->
	                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
	                    </c:otherwise>
                	</c:choose>
                	
                	<c:forEach begin="${piUnd.startPage }" end="${piUnd.endPage }" var="p">
	                	<c:choose>
                			<c:when test="${piUnd.currentPage eq p }">
                				<li class="page-item disabled"><a class="page-link" href="playPerformanceForm.mana?currentPage=${pi.currentPage}&currentPageUnd=${p}">${p}</a></li>
                			</c:when>
                			<c:otherwise>
	                    		<li class="page-item"><a class="page-link" href="playPerformanceForm.mana?currentPage=${pi.currentPage}&currentPageUnd=${p}">${p}</a></li>
                			</c:otherwise>
                		</c:choose>
                	</c:forEach>
                    
                    <!-- currentPage가 maxPage와 일치하면 숨기기  -->
                    <c:choose>
						<c:when test="${piUnd.currentPage eq piUnd.maxPage }">
		                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="playPerformanceForm.mana?currentPage=${pi.currentPage}&currentPageUnd=${piUnd.currentPage+1}">Next</a></li>
						</c:otherwise>                    
                    </c:choose>
                </ul>
            </div>
	            
	            
	            
			</div>
		</div>
		<br><br>
		
		
		<script>
			function statusChange(index){
				alert(index);
				
				var status= document.getElementById("perfoStatus"+index).value;
				if(confirm(status+"값으로 변경 하시겠습니까?")){
					/* index+=1; */
					
					
					/* rcode랑 statusVal을 ajax로 실시간 값 변경해주기 */
					statusChangeAj(index, status);
					location.reload();
				}else{
					location.reload();
				}
			}
			
			function statusChangeAj(rcode, statusVal){
				$.ajax({
					url: "statusChange.perf",
					data: {
						rcode: rcode,
						statusVal: statusVal
					},
					success : function(){
						location.reload();
					},
					error: function(){
						console.log("실패");
					}
				});
			}
			
			function deletePerf(rcode){
				if(confirm("삭제시 되돌릴 수 없습니다.\n 정말로 삭제하시겠습니까?")){
					$.ajax({
						url: "deletePerf.perf",
						data: {
							rcode: rcode
						},
						success : function(){
							location.reload();
							alert("삭제 완료");
						},
						error: function(){
							console.log("실패");
						}
					});
				}
			}
		</script>
		
		
 		
		
		
		
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>