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
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
<style>
	 body {
  margin: 80px;
  height: 100%
}

a {
  text-decoration: none;
  color: inherit;
}

h2 {
  margin: 0 auto;
  display: inline-block;
}

h3 {
  padding-left: 221px;
  margin: 0 auto;
  padding-top: 14px;
  margin-bottom: 10px;
}

table {
  border-collapse: collapse;
}

p {
  padding: 0 0 10px 5px;
  width: 500px;
  margin: 0;
  font-size: 13px;
}

th,
td {
  border-radius: 0;
}

.mem_box_inner {
  margin-top: 10px;
}

.search-container>input {
  border: 1px solid gray;
  position: relative;
  height: 26px;
}

.search-option {
  width: 70px;
  border-radius: 5px;
  padding: 1.5px 0;
}

.search_onclick_submit {
  margin-left: -2px;
}
.search-input{
  border-radius: 5px;
}
.search_onclick_submit{
  box-shadow:inset 0px 1px 0px 0px #a4e271;
	background:linear-gradient(to bottom, #89c403 5%, #77a809 100%);
	background-color: rgb(159, 204, 147);
	border-radius:5px;
	border:1px solid rgb(159, 204, 147);;
	display:inline-block;
	cursor:pointer;
	color:white;
	font-family:Arial;
	font-size:10px;
	font-weight:bold;
	padding:5px 8px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528009;
}

.search_keyword {
  position: absolute;
  width: 250px;
  height: 100px;
  right: 87px;
  top: 50px;
}

/* 테이블 */
.admin_board_head,
.admin_board_content_nm {
  font-size: 18px;
}

.admin_boardList,
.admin_replyList,
.admin_boardMList {
  border-bottom: 1px solid #ccc;
  background-color: rgb(159, 204, 147);
}

.admin_replyList,
.admin_boardMList {
  font-size: 1px;
}

.admin_board_wrap {
  margin: 0 auto;
  border-top: 5px solid green;
  border-bottom: 1px solid #ccc;
  width: 1000px;
  text-align: center;
}

.admin_board_content {
  padding: 10px 0;
}

.admin_replyList {
  margin: 10xp;
}

/* 모달 */
.mypage_modal,
.modal_reply,
.modal_list {
  display: none;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.4);
  margin: 0 auto;
}

.modal_replylist,
.modal_boradlist {
  width: 700px;
  height: 680px;
  background: whitesmoke;
  margin: 0 auto;
  margin-top: 10px;
  border-radius: 10px;

}

.reply_listWrap {
  padding: 50px;
  background-color: rgb(159, 204, 147);
  border-radius: 10px;

}

.modal_wrap {
  width: 600px;
  height: 580px;
  /* background-color: rgb(200, 213, 165); */
  background-color: whitesmoke;
  margin: 0 auto;
  border-radius: 10px;
  padding: 5px 10px
}

.close_btn {
  width: 50px;
  margin: 0 auto;
  padding-bottom: 10px;

}
.close{
  box-shadow:inset 0px 1px 0px 0px #a4e271;
	background:linear-gradient(to bottom, #89c403 5%, #77a809 100%);
	background-color: rgb(159, 204, 147);
	border-radius:5px;
	border:1px solid rgb(159, 204, 147);;
	display:inline-block;
	cursor:pointer;
	color:white;
	font-family:Arial;
	font-size:10px;
	font-weight:bold;
	padding:5px 8px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528009;

}
.close_modal_btn {
  width: 50px;
  margin: 5px auto;
  bottom: 10px;
  
}

/* 테이블  */

tr:nth-child(even) {
  background-color: beige;
}

.admin_boardM_wrap,
.admin_reply_wrap {
  margin: 0 auto;
  border-top: 5px solid green;
  border-bottom: 1px solid #ccc;
  text-align: center;
  width: 580px;
}
.leng{
  width: 280px
}

.modal_list_end_btn,
.modal_reply_end_btn {
  /* border: 3px solid #8947e9;
  background-color: #b9a9d1; */
  box-shadow:inset 0px 1px 0px 0px #a4e271;
	background:linear-gradient(to bottom, #89c403 5%, #77a809 100%);
	background-color: rgb(159, 204, 147);
	border-radius:5px;
	border:1px solid rgb(159, 204, 147);
	display:inline-block;
	cursor:pointer;
	color:white;
	font-family:Arial;
	font-size:10px;
	font-weight:bold;
	padding:5px 8px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528009;
}

.admin_boardM_content,
.admin_reply_content {
  width: 500px;
  background: whitesmoke;
  margin: 0 auto;
  padding: 11px;
  font-size: 14px;
}

.admin_boardM_title,
.admin_boardM_nm,
.admin_reply_title,
.admin_reply_con {
  padding-right: 20px;
  padding-left: 20px;
}

.admin_replyList,
.admin_boardMList {
  font: 14px bold;
}

/* 페이징 */
#paging,
#pagingM {
  width: 580px;
  text-align: center;
  line-height: 15px;
  margin: 0 auto;
  margin-top: 10px;
}

#paging a.prev {
  font: 3px;
  color: green

}

#pagingM a.prev {
  font-size: 1px;
  color: green
}

#paging .selected,
#pagingM .selected {
  font-weight: bold;
  color: rgb(159, 204, 147);
}

#paging a.num {
  border: #AAAAAA 1px solid;
  background-color: #FFFFFF;
  color: green;
  padding: 3px 6px;
  margin: 3px;
  font: 3px;
}

#pagingM a.num {
  border: rgb(159, 204, 147) 1px solid;
  background-color: #FFFFFF;
  color: green;
  padding: 3px 6px;
  margin: 3px;
  font-size: 1px;
}

#pagingM a:hover.num,
#paging a:hover.num {
  border: green 3px solid
}

        #pagingArea {width:fit-content; margin:auto;}


/* 모달 마이페이지 */

.mypage {
  width: 700px;
  height: 600px;
  padding-top: 30px;
  padding-left: 50px;
  padding-right: 50px;
  border-radius: 3%;
  /* margin-top: 30px;
    margin-left: 455px; */
    background-color: rgb(159, 204, 147);
    margin: 0 auto;
}

.mypage_form p {
  display: inline-block;
  width: 110px;
}

.mypage .insert {
  padding: 10px;
  height: 450px;
}

.mypage_form {
  background: whitesmoke;
}

.mypage_form .check {
  display: none;
}

.mypage_form input {
  margin-bottom: 20px;
  margin-left: 18px;
}

.name_box input {
  width: 100px;
  color: rgb(172, 172, 172);
}

.id_box input {
  width: 100px;
  color: rgb(172, 172, 172);
}

.job_box {
  margin-top: 10px;
  margin-bottom: 20px;
}

.job_box p {
  margin-bottom: 20px;
}

.job_box .job {
  margin-right: 20px;
}

#job-stat {
  margin-left: 16px;
}

.job_check {
  margin: 0 100px;
}

.email_box input {
  margin: 0;
  margin-bottom: 20px;
  width: 100px;
}

.email_box p {
  display: inline-block;
  margin-bottom: 15px;
}

.email_box .me {
  margin-bottom: 15px;
}

.addr_box input {
  margin-bottom: 18px;
}

.addr_box .addr {
  margin-left: 138px;
  margin-bottom: 10px;
}

.addr_box .addr2 {
  margin-top: 7px;
  width: 400px;
}

.clearfix::after {
  content: '';
  display: block;
  clear: both;
}

/* member */
.member {
  width: 1200px;
  height: 800px;
  position: relative;
  top: 30px;
  left: 50%;
  transform: translate(-50%, 0%);
}

.member_title {
  position: absolute;
  width: 100px;
  height: 100px;
  top: 0px;
  right: 567px;
}

/* .search {
  position: absolute;
  width: 100px;
  height: 100px;
  left: 88px;
  top: 50px;
} */



.member_list {
  position: absolute;
  width: 1200px;
  height: 400px;
  right: 3px;
  top: 70px;
  /* border-radius: 0; */
}

/* admin_boardList.html */

/* 게시판 분리 5개 버튼 */
.sec{
  width: 602px;
  display: inline-block;
  margin: 27px 101px;
}

.sec .sec_btn {
  color: green;
  border: 2px solid green;
  background-color: white;
}

.sec_btn:hover {
  border: green 3px solid;
}
.sec-option{
  width: 300px;
  display: inline-block;

}

.chart_zone{
  width: 1200px;
  height: 600px;
  position: absolute;
  top: 400px;
  left: 240px;
  
}

button {
    margin: 20px;
}

.w-btn {
    border: none;
    border-radius: 1px;
    font-family: "paybooc-Light", sans-serif;
    font-weight: 600;
    transition: 0.25s;
    margin: 4px 2px;
    
    font-size: 15px;
    
}

.w-btn-green {
    background-color: #77af9c;
    color: #d7fff1;
}

.w-btn:hover {
    transform: scale(1.2);
    cursor: pointer;
}

.w-btn:active {
    transform: scale(1.5);
}



</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div class="member">
		<div class="member_title"><h2>회원 목록</h2></div>	
			<div class="member_list">		
			<table id="memberList" class="admin_board_wrap">
				<thead class="admin_boardList">
				    <tr>
				      <th class="admin_board_head">회원아이디</th>
				      <th class="admin_board_head">회원이름</th>
					  <th class="admin_board_head">현재STATUS</th>
					  <th class="admin_board_head">블랙리스트여부</th>
 					  <th class="admin_board_head">가입일</th>
 					  <th class="admin_board_head">회원상세보기</th>
				    </tr>
				</thead>
				<tbody>
					<c:forEach var="m" items="${mList }">
						<tr class="admin_board_content">
							<td class="admin_board_content_nm">${m.userId}</td>
						    <td class="admin_board_content_nm">${m.userName}</td>
							<c:choose>
								<c:when test="${m.status eq 'N' }">
									<td class="admin_board_content_nm">탈퇴회원</td>
								</c:when>
								<c:otherwise>
									<td><button class="w-btn w-btn-green" type="button" onclick="kick()">탈퇴시키기</button></td>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${m.blacklist eq 'Y' }">
<!-- 									<td class="admin_board_content_nm">진상</td> -->
										<td><button class="w-btn w-btn-green" type="button" onclick="blackcancel()">블랙풀기</button></td>
								</c:when>
								<c:otherwise>
									<td><button class="w-btn w-btn-green" type="button" onclick="black()">블랙시키기</button></td>
								</c:otherwise>
							</c:choose>							
							<td class="admin_board_content_nm">${m.enrollDate}</td>
 							<td><button class="w-btn w-btn-green" type="button" onclick="kkk()">${m.userName}조회</button></td>
						</tr>
					</c:forEach>

			    </tbody>
			</table>
		
		<br><br><br>	
		<div id="pagingArea">
        <ul class="pagination">
<!--            	currentPage가 1이면 숨기기 -->
        <c:choose>
           	<c:when test="${pi.currentPage ne 1 }">
            	<li class="page-item"><a class="page-link" href="memberManage.form?currentPage=${pi.currentPage-1}">Previous</a></li>
            </c:when>
	                 <c:otherwise><!-- currentPage가 1일경우 (1페이지) -->
	                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
	                    </c:otherwise>
                	</c:choose>
                	<c:forEach begin="${pi.startPage }" end="${pi.endPage }" var="p">
	                  <c:choose>
                		<c:when test="${pi.currentPage eq p }">
                			<li class="page-item disabled"><a class="page-link" href="memberManage.form?currentPage=${p}">${p}</a></li>
                		</c:when>
                		<c:otherwise>
	                    	<li class="page-item"><a class="page-link" href="memberManage.form?currentPage=${p}">${p}</a></li>
                		</c:otherwise>
                		</c:choose>
                	</c:forEach>
                    
<!--                     currentPage가 maxPage와 일치하면 숨기기  -->
                    <c:choose>
						<c:when test="${pi.currentPage eq pi.maxPage }">
		                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="memberManage.form?currentPage=${pi.currentPage +1}">Next</a></li>
						</c:otherwise>                    
                    </c:choose>
        </ul>
   		</div>
            
            
            
            
			</div>
	</div>
	
	 
	

	
	<jsp:include page="../common/footer.jsp"/>
</body>

<script>
	
	function kick() {
	    let memberList = document.getElementById('memberList');
	    for (let i = 1; i < memberList.rows.length; i++) {
	    	memberList.rows[i].cells[2].onclick = function () {
	          let userName = memberList.rows[i].cells[1].innerText;
	          let userId = memberList.rows[i].cells[0].innerText;
	          
	          if(confirm(userName+"님을 탈퇴 시키시겠습니까??")) {
	        	  location.href="delete.user?userId="+userId;
	          } else {
	        	  
	          }
	       }
	    }   
	}
	
	function black() {
		 let member = document.getElementById('memberList');
		    for (let i = 1; i < member.rows.length; i++) {
		    	member.rows[i].cells[3].onclick = function () {
		          let userName = member.rows[i].cells[1].innerText;
		          let userId = member.rows[i].cells[0].innerText;
		          
		          if(confirm(userName+"님을 블랙리스트에 추가하시겠습니까??")) {
		        	  location.href="black.user?userId="+userId;
		          } else {
		        	  
		          }
		       }
		    }   
	}
	
	function blackcancel() {
		let blackc = document.getElementById('memberList');
			for(let i=1; i < blackc.rows.length; i++) {
				blackc.rows[i].cells[3].onclick = function() {
					let userName = blackc.rows[i].cells[1].innerText;
			        let userId = blackc.rows[i].cells[0].innerText;
			        
			        if(confirm(userName+"님을 블랙리스트에 해제 하시겠습니까??")) {
			        	  location.href="blackc.user?userId="+userId;
			        } else {
			        	  
			        }
				}
			}
	}
	
	function kkk() {
		 let m = document.getElementById('memberList');
		    for (let i = 1; i < m.rows.length; i++) {
		    	m.rows[i].cells[5].onclick = function () {
		          let userName = m.rows[i].cells[1].innerText;
		          let userId = m.rows[i].cells[0].innerText;
		          
		          location.href="kk.kk?userId="+userId;
		         
		       }
		    }   
	}
	

</script>

 
</html>