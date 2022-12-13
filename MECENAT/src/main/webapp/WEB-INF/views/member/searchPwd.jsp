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
                        <h2>Find Password</h2>
                        <p>Let's find.</p>
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
					<!-- 비밀번호 찾기 폼  -->
                    <div class="login__form">
                        <h3>Find Password</h3>
                        <form action="searchPwd.me" method="post">
                            <div class="input__item">
                                <input type="text" placeholder="아이디를 입력하세요" id="userId" name="userId">
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="이름을 입력하세요" id="userName" name="userName">
                                <span class="icon_profile"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="휴대폰번호를 입력하세요(-포함)" id="userPhone" name="userPhone">
                                <span class="icon_profile"></span>
                            </div>
                            <button type="submit" class="site-btn" id="enrollBtn">Find Now</button>
                        	
			                <c:if test="${check == 1}">
			                	<script>
								opener.document.findform.userId.value = "";
									opener.document.findform.userName.value = "";
									opener.document.findform.userPhone.value = "";
								</script>
								<label>일치하는 정보가 존재하지 않습니다.</label>
			                </c:if>
			                
			                
							<!-- 이름과 비밀번호가 일치하지 않을 때 -->
							<c:if test="${check == 0}">
							<div>
								<br><br>
								<label style="color:white;">비밀번호를 변경해주세요.</label>
							</div>
							<div class="input__item">
								<input type="password" id="updatePwd" name="updatePwd" class="form-control" placeholder="변경할 비밀번호를 입력하세요"/>
								<label for="updatePwd">password</label>
								<span class="icon_lock"></span>
							</div>
							
							<div class="input__item">
								<input type="password" id="confirmPwd" name="confirmPwd" class="form-control" placeholder="변경할 비밀번호를 다시 입력하세요"/>
								<label for="confirmPwd">confirm password</label>
								<span class="icon_lock"></span>
							</div>
							
							<div class="form-label-group">
									<input class="site-btn text-uppercase"
										type="button" value="update password" onclick="updatePassword()">
								</div>
							</c:if>
                        
                        </form>
                    </div>
                </div>
                
        <script type="text/javascript">
			function updatePassword(){
				if(document.findform.updatePwd.value==""){
					alert("비밀번호를 입력해주세요.");
					document.findform.updatePwd.focus();
				} else if(document.findform.updatePwd.value != document.findform.confirmPwd.value){
					alert("비밀번호가 일치하지 않습니다.");
					document.findform.confirmPwd.focus();
				} else {
					document.findform.action="update_password";
					document.findform.submit();
				}
			}
		</script>

                
                <!-- 회원가입 창으로 이동 -->
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>Dont’t Have An Account?</h3>
                        <a href="signupForm.me" class="primary-btn">Register Now</a>
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

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/player.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>


</body>

</html>