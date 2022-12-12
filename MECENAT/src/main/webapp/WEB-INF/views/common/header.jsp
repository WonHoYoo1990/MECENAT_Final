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
	<meta name="keywords" content="Anime, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Header | Template</title>
	
	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
	<!-- Css Styles -->
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/elegant-icons.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/plyr.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/nice-select.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="./resources/css/style.css" type="text/css">
</head>
<body>

	<!-- alertMsg -->
	<c:if test="${not empty alertMsg}">
		<script type="text/javascript">
			alert("${alertMsg}");
		</script>
		<c:remove var="alertMsg" scope="session"/>
	</c:if>

	<!-- Header Section Begin -->
	<header class="header">
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-2">
	                <div class="header__logo">
	                    <a href="./index.jsp">
	                    	MECENAT
	                    	<img alt="" src="">
	                        <!-- <img src="img/logo.png" alt=""> -->
	                    </a>
	                </div>
	            </div>
	            <div class="col-lg-8">
	                <div class="header__nav">
	                    <nav class="header__menu mobile-menu">
	                        <ul>
	                            <li><a href="index.jsp">Homepage</a></li>
	                            <li><a href="./categories.html">Categories <span class="arrow_carrot-down"></span></a>
	                                <ul class="dropdown">
	                                    <li><a href="./categories.html">Categories</a></li>
	                                    <li><a href="./anime-details.html">Anime Details</a></li>
	                                    <li><a href="./anime-watching.html">Anime Watching</a></li>
	                                    <li><a href="./blog-details.html">Blog Details</a></li>
	                                    <li><a href="signupForm.me">Sign Up</a></li>
	                                    <li><a href="./login.html">Login</a></li>
	                                </ul>
	                            </li>
	                            <li><a href="./blog.html">Our Blog</a></li>
	                            <li><a href="#">Contacts</a></li>
	                        </ul>
	                    </nav>
	                </div>
	            </div>
	            <div class="col-lg-2">
	                <div class="header__right">
	                    <a href="#" class="search-switch"><span class="icon_search"></span></a>
	                    <a href=".login.jsp"><span class="icon_profile"></span></a>
	                </div>
	            </div>
	        </div>
	        <div id="mobile-menu-wrap"></div>
	    </div>
	</header>
	<!-- Header End -->
	
	
	<!-- Js Plugins -->
	<script src="./resources/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/player.js"></script>
	<script src="./resources/js/jquery.nice-select.min.js"></script>
	<script src="./resources/js/mixitup.min.js"></script>
	<script src="./resources/js/jquery.slicknav.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/main.js"></script>

</body>
</html>