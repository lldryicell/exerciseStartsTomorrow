<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>EST - login</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/iconfonts/mdi/css/materialdesignicons.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/css/vendor.addons.css" />
    <!-- endinject -->
    <!-- vendor css for this page -->
    <!-- End vendor css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/shared/style.css" />
    <!-- endinject -->
    <!-- Layout style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/demo_1/style.css">
    <!-- Layout style -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/images/favicon.ico" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$("#loginButton").click(function(){
    			var user_id = $("#user_id").val();
    			var user_pw = $("#user_pw").val();
    			
    			if(user_id!=''){
    				if(user_id.length<=20 && user_id.length>=3){
    					if(user_pw!=''){
    						if(user_pw.length<=20 && user_pw.length>=3){
    							$("#loginForm").submit();
    						}else{
    	    					alert("USER PW is 6 to 20 length of eng+number collection");
    						}
        				} else{
        					alert("please input PW");
        				}
    				} else{
    					alert("USER ID is 6 to 20 length of eng+number collection");
    				}
    			}else{
    				alert("please input ID");
    			}
    		});
    	});
    </script>
  </head>
  <body>
    <div class="authentication-theme auth-style_1">
      <div class="row">
        <div class="col-12 logo-section">
          <a href="indexPage" class="logo">
            <img src="${pageContext.request.contextPath}/resources/assets/images/logo.svg" alt="logo" />
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-5 col-md-7 col-sm-9 col-11 mx-auto">
          <div class="grid">
            <div class="grid-body">
              <div class="row">
                <div class="col-lg-7 col-md-8 col-sm-9 col-12 mx-auto form-wrapper">
                  <form action="login" id="loginForm" method="post">
	                <span style="color: red;">${message}</span><br>
                    <div class="form-group input-rounded">
                      <input type="text" id="user_id" name="user_id" class="form-control" placeholder="Username" />
                    </div>
                    <div class="form-group input-rounded">
                      <input type="password" id="user_pw" name="user_pw" class="form-control" placeholder="Password" />
                    </div>
                    <div class="form-inline">
                      <div class="checkbox"><!-- 나중에 브라우저 기억해두기 기능 추가할 수 있으면 그 때 추가 -->
                        <label>
                          <input type="checkbox" class="form-check-input" />Remember me <i class="input-frame"></i>
                        </label>
                      </div> 
                    </div>
                    <input type="button" id="loginButton" class="btn btn-primary btn-block" value="Login">
                  </form>
                  <div class="signup-link">
                    <p>Don't have an account yet?</p>
                    <a href="signupPage">Sign Up</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="auth_footer">
        <p class="text-muted text-center">Â© Label Inc 2019</p>
      </div>
    </div>
    <!--page body ends -->
    <!-- SCRIPT LOADING START FORM HERE /////////////-->
    <!-- plugins:js -->
    <script src="<c:url value="/resources/assets/vendors/js/core.js" />"></script>
    <script src="<c:url value="/resources/assets/vendors/js/vendor.addons.js" />"></script>
    <!-- endinject -->
    <!-- Vendor Js For This Page Ends-->
    <!-- Vendor Js For This Page Ends-->
    <!-- build:js -->
    <script src="<c:url value="/resources/assets/js/template.js" />"></script>
    <!-- endbuild -->
  </body>
</html>