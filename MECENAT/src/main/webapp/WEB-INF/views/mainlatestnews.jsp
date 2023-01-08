<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


<c:forEach var="list" items="${noticesList}" >
	<li class="item">
		<a href="/portal/bbs/B0000001/view.do?nttId=45926&amp;menuNo=200042">
			<span class="t">[ ${list[0].boardName} ] &nbsp; ${list[0].noticeTitle}</span>
		</a> 
		<span class="date">${list[0].noticeDate}</span>
	</li>
</c:forEach>
