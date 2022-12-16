<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Core -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

</head>

<body>

	<!-- Header Section Begin -->
		<jsp:include page="../common/header.jsp"/>
	<!-- Header End -->

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>Login</h2>
                        <p>Welcome to the official Mecenat site.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
					<!-- 로그인 폼  -->
                    <div class="login__form">
                        <h3>Login</h3>
                        <form action="login.me" method="post">
                            <div class="input__item">
                            <c:choose>
                            	<c:when test="${cookie.userId.value}">
                                <input type="text" placeholder="Id" id="userId" name="userId" required>
                                <span class="icon_mail"></span>
                               </c:when>
                               <c:otherwise>
                                <input type="text" placeholder="Id" id="userId" name="userId" value="${cookie.userId.value}" required>
                                <span class="icon_mail"></span>
                               </c:otherwise>
                             </c:choose>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="Password" id="userPwd" name="userPwd">
                                <span class="icon_lock"></span>
                            </div>
                            <input type="checkbox" id="saveId" name="saveId">
                            	<label for="saveId" style="color:white;">아이디 저장</label><br>
                            <button type="submit" class="site-btn" id="enrollBtn">Login Now</button>
                        </form>
                        <!-- 비밀번호 찾기 -->
                        <a href="searchPwdForm.me" class="forget_pass">Forgot Your Password?</a>
                    </div>
                </div>
                <!-- 회원가입 창으로 이동 -->
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>Dont’t Have An Account?</h3>
                        <a href="signupForm.me" class="primary-btn">Register Now</a>
                    </div>
                </div>
            </div>
            <!-- 타사이트 이용한 로그인 -->
            <div class="login__social">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-6">
                        <div class="login__social__links">
                            <span>or</span>
                            <ul>
                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With
                                Facebook</a></li>
                                <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login Section End -->

    <!-- Footer Section Begin -->
		<jsp:include page="../common/footer.jsp"/>
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
    
    <script>	
    
		$(function(){
			<c:choose>
			<c:when test="${not empty cookie.userId.value}">
				$("#saveId").attr("checked",true);
			</c:when>
			<c:otherwise>
				$("#saveId").attr("checked",false);
			</c:otherwise>
			</c:choose>
		});
		
	</script>



</body>

</html>