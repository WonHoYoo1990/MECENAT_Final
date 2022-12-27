<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:forEach var="pList" items="${pList}">
	<li tabindex="0">
		<div class="img">
			<img src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=faec0c25744c22e99776405c0fa728020ced1ac91b5fc82bb55dac72d913a231&amp;streFileNm=27421d60498f608e44a4bcda329fdf4139140131461b1ec4fbc79f9f1d2d9b11" alt="유니버설발레단 '호두까기인형' 2022.12.22(Thu) ~ 12.31 (Sat) 세종문화회관 대극장">
		</div>
		<div class="cont">
			<strong class="t">${pList.perfoTitle}</strong>
			<div class="add">${pList.perfoContent}</div>
			<div class="etc clearfix">
				<span class="date">${pList.perfoEventDate}</span>
				<span class="place">${pList.genreName}</span>
			</div>
		</div>
		<div class="hover" style="display: none; opacity: 1;">
			<div class="table">
				<div class="vertical">
					<a href="#" onclick="javascript:showPerformPop('grpb2210111117a01');return false;" class="r ReservationTitle">예매</a>
					<a href="/portal/performance/performance/view.do?performIdx=33630&amp;menuNo=200004" class="d">상세</a>
				</div>
			</div>
		</div>
	</li>
</c:forEach>