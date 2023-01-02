<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:forEach var="pList" items="${pList}">
	<li tabindex="0" style="display: inline-block;">
		<div class="img">
			<img src="${pList.changeName}" alt="${pList.perfoTitle} ${pList.perfoEventDate}">
		</div>
		<div class="cont">
			<strong class="t">${pList.perfoTitle}</strong>
			<div class="add">${pList.perfoContent}</div>
			<div class="etc clearfix">
				<span class="date">${pList.perfoEventDate}</span>
				<span class="place">${pList.genreName}</span>
			</div>
		</div>
		<div class="hover" style="display: none;">
			<div class="table">
				<div class="vertical">
					<a href="make.rv?perfoNo=${pList.perfoNo}" class="r ReservationTitle">예매</a>
					<a href="detail.perf?rno=${pList.rentalCode}" class="d">상세</a>
				</div>
			</div>
		</div>
	</li>
</c:forEach>

<script type="text/javascript">
	// 리스트별 예매 및 상세 페이지 반응형 UI
	$(".bbs-today_thumb li").hover(function(){
		$(this).find(".hover").stop().fadeIn(150);
	},function(){
		$(this).find(".hover").stop().fadeOut(150);
	})
	$(".bbs-today_thumb li").focus(function(){
		$(this).find(".hover").stop().fadeIn(150);
	})
	$(".bbs-today_thumb a:last-child").focusout(function(){
		$(this).closest(".hover").stop().fadeOut(150);
	})
</script>
