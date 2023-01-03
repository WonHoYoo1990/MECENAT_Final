/*******************************************************
* 프로그램명   : top_apc.js
* 설명         : 최상단 추천공연기능 js
* 작성일       : 2020.09.01
* 작성자       :  윤준상
  *****************************************************/

var topApcID = "top_apc_right_list";

var requestURL = "/portal/search/ajax/perform.do?";		// 자동완성  페이지 경로를 적어준다.

function drawTopApcList(){
	var kwd = $("#sch_word").val();
	var params = "kwd=" + escape(kwd);

		$.ajax({
	        type: "get",
	        url: requestURL + params,
	        success: function(data) {
	        	$("#" + topApcID).html("");
	        	var resultHTML = "";
	            var result = JSON.stringify(data);
	            var jsonObj = JSON.parse(result);
	            // 결과 여부에 따라 결과 html을 셋팅함
	            if(jsonObj.performTotal > 0){
	            	var resultList =  jsonObj.performList;
	                for (var i in resultList) {
	                	var itemObj			= resultList[i];
	                	var title			= itemObj.TITLE;
	                	var linkURL			= itemObj.LINK_URL;
	                	var startDate		= convertDate(itemObj.START_DATE);
	                	var endDate			= convertDate(itemObj.END_DATE);
	                	var fileStreCours	= itemObj.FILE_STRE_COURS;
	                	var streFileNm		= itemObj.STRE_FILE_NM;
	                	var performIdx		= itemObj.PERFORM_IDX;
	                	var genreNm		= itemObj.GENRE_NM;
	                	var imgURL			= "https://www.sejongpac.or.kr/cmmn/file/linkedxmlImg.do?performIdx="+performIdx;			// <- 이 부분은 resultPerform.jsp 의 이미지 URL조합을 해주신 것 처럼 작업 해주셔야 합니다.

	                	var date = new Date(startDate);
	                    resultHTML += "	<li>";
	                    resultHTML += "		<a href='" + linkURL + "'>";
	                    resultHTML += "			<div class='img'><img src='" + imgURL + "' alt='" + title + "'></div>";
	                    resultHTML += "			<div class='cont'>";
	                    resultHTML += "				<strong class='t'>" + title + "</strong>";
	                    resultHTML += "				<div class='etc clearfix'>";
	                    resultHTML += "					<span class='date'>" + startDate + " - " + endDate + "</span>";
	                    resultHTML += "					<span class='place'>"+ genreNm +"</span>";
	                    resultHTML += "				</div>";
	                    resultHTML += "			</div>";
	                    resultHTML += "		</a>";
	                    resultHTML += "	</li>";
	                    if( i == 1){		// 노출
	                    	break;
	                    }
	                }
	            	$("#" + topApcID).html(resultHTML);
	            	$("#top_apc_right_msg").html("");
	            }else{
	            	$("#top_apc_right_msg").html("<p class='bul-caution'>검색결과가 없습니다.</p>");			// 검색결과 없을 때는 안내문구 추가 (20200906)
	            }
	        },
	        error: function(error) {
	            alert("조회중 오류가 발생하였습니다." );
	        }
		});
}

function convertDate(dateStr){
	var resDate = dateStr;
	if(dateStr != null && dateStr.length >= 8){
		var year = dateStr.substring(0, 4);
		var month = dateStr.substring(4, 6);
		var day = dateStr.substring(6, 8);
		resDate = year + '.' + month + '.' + day;
	}
	return resDate;
}



