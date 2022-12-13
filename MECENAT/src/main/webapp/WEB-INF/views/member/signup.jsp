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
					<div class="login__form">
						<h3>Sign Up</h3>
						<form action="signup.me">
							<div class="input__item">
								<input type="text" id="userId" name="userId" placeholder="Your Id (5글자 이상)" pattern="^([a-z0-9]){5,10}$" required="required"/>
								<label for="userId"><span class="icon_id-2"></span></label>
								<div id="checkResult" style="font-size: 0.8em; display:none; color:red;"> 확인용 테스트 </div> <br>
							</div>
							<div class="input__item">
								<div class="main">
									<!-- pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$" -->
									<input type="password" id="userPwd" name="userPwd" placeholder="Password" required="required">
									<i class="fa fa-eye fa-lg"></i>
									<label for="userPwd"><span class="icon_lock"></span></label>
								</div>
							</div>
							<div class="input__item">
								<input type="text" id="userName" name="userName" placeholder="Your Name" required="required">
								<label for="userName"><span class="icon_profile"></span></label>
							</div>
							<div class="input__item">
								<input type="tel" id="userPhone" name="userPhone" placeholder="Your Phone  ex) 010-1234-1234" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required="required">
								<label for="userPhone"><span class="icon_profile"></span></label>
							</div>
							<div class="input__item">
								<input type="email" id="email" name="email" placeholder="Email address" required="required">
								<label for="email"><span class="icon_mail"></span></label>
							</div>
							<button type="submit" class="site-btn">Login Now</button>
						</form>
						<h5>Already have an account? <a href="#">Log In!</a></h5>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login__social__links">
						<h3>Login With:</h3>
						<ul>
							<li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a>
							</li>
							<li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
							<li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li>
						</ul>
					</div>
				</div>
			</div>	
		</div>
	</section>
	<!-- Signup Section End -->
	
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
		$(document).ready(function(){
			// 비밀번호 보기/숨기기 기능
	    	$('.main i').on('click',function(){
		        $('#userPwd').toggleClass('active');
		        if($('#userPwd').hasClass('active')){
		            $(this).attr('class',"fa fa-eye-slash fa-lg")
		            .prev('#userPwd').attr('type',"text");
		        }else{
		            $(this).attr('class',"fa fa-eye fa-lg")
		            .prev('#userPwd').attr('type','password');
		        }
		    });
			
		});
		
		// 아이디 중복 체크
		var inputId = $("#userId");
		console.log("inputId : " + inputId); 
		
		inputId.keyup(function() {
			if (inputId.val().length >= 5) {
								
				$("#checkResult").html("5글자 이상 입니다.");
			} else {
				$("#checkResult").html("5글자 이상 입력해주세요").show();
			}
		});
	</script>

</body>
</html>