<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Label - Premium Responsive Bootstrap 4 Admin & Dashboard Template</title>
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
    		
    		var isPwChecked = false;
    		var isIdChecked = false;
    		
    		$("#registerButton").click(function(){
    			var user_id = $("#user_id").val();
    			var user_pw = $("#user_pw").val();
    			var pwchk = $("#pwChk").val();
    			var user_first_name = $("#user_first_name").val();
    			var user_last_name = $("#user_last_name").val();
    			var user_nick = $("#user_nick").val();
    			var user_age = $("#user_age").val();
    			
    			if(isIdChecked){
    				if(user_pw!=''){
						if(user_pw.length<=20 && user_pw.length>=6){
							if(isPwChecked){
								if(user_first_name!=''){
    								if(user_last_name!=''){
    									if(user_nick!=''){
    										if(user_age>=0 && user_age<=100){
    							    			$("#signupForm").submit();
    		    	        				} else{
    		    	        					alert("age is 0 to 100");
    		    	        				}
    	    	        				} else{
    	    	        					alert("please input nick name");
    	    	        				}
        	        				} else{
        	        					alert("please input last name");
        	        				}
    	        				} else{
    	        					alert("please input first name");
    	        				}
							}else{
								alert("inputed PasswordCheck is not equal Password");
							}
						}else{
	    					alert("USER PW is 6 to 20 length of eng+number collection");
						}
    				} else{
    					alert("please input PW");
    				}
    			}else{
    				alert("Id Check first, please");
    			}
    		});
    		
    		$("#pwChk").change(function(){
    			var user_pw = $("#user_pw").val();
    			var pwchk = $("#pwChk").val();
    			
    			if(user_pw == pwchk){
    				isPwChecked = true;
    			}else{
    				isPwChecked = false;
    			}
    		});
    		
    		$("#user_pw").change(function(){
    			isPwChecked = false;
    		});
    		
    		$("#idChk").click(function(){
    			var user_id = $("#user_id").val();
    			
    			if(user_id!=''){
    				if(user_id.length<=20 && user_id.length>=6){
    					$.ajax({
    						url : "idChk",
    						data : {"user_id":user_id},
    						type : "POST",
    						success : function(serverData){
    							if(serverData == "available"){
    								alert("this id is available!");
    								isIdChecked = true;
    								$("#idChk").val("Checked!");
    							}else {
    								alert("this id is not available,,");
    								isIdChecked = false;
    							}
    						}
    					});
    				} else{
    					alert("USER ID is 6 to 20 length of eng+number collection");
    				}
    			} else{
    				alert("please input ID");
    			}
    		});
			
			$("#user_id").change(function(){
				isIdChecked = false;
				$("#idChk").val("id check");
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
                  <form action="signupNew" id="signupForm" method="post">
                  	<span style="color: red">*표는 필수 입력 사항입니다.</span><br><br>
                    <div class="form-group row showcase_row_area">
                      <div class="col-md-3 showcase_text_area">
                        <label for="inputType1">*ID</label>
                      </div>
                      <div class="col-md-9 showcase_content_area">
                        <input type="text" class="form-control" id="user_id" name="user_id" placeholder="6 - 20, eng+number collection">
                      </div>
                      <div id="idChk" class="btn btn-outline-success btn-rounded">id check</div>
                    </div>
                    <div class="form-group row showcase_row_area">
                      <div class="col-md-3 showcase_text_area">
                        <label for="inputType1">*Password</label>
                      </div>
                      <div class="col-md-9 showcase_content_area">
                        <input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="6 - 20, eng+number collection">
                      </div>
                    </div>
                    <div class="form-group row showcase_row_area">
                      <div class="col-md-3 showcase_text_area">
                        <label for="inputType1">*Password Check</label>
                      </div>
                      <div class="col-md-9 showcase_content_area">
                        <input type="password" class="form-control" id="pwChk" placeholder="Password Check">
                      </div>
                    </div>
                    <div class="form-group row showcase_row_area">
                      <div class="col-md-3 showcase_text_area">
                        <label for="inputType1">*First name</label>
                      </div>
                      <div class="col-md-9 showcase_content_area">
                        <input type="text" class="form-control" id="user_first_name" name="user_first_name" placeholder="first name">
                      </div>
                    </div>
                    <div class="form-group row showcase_row_area">
                      <div class="col-md-3 showcase_text_area">
                        <label for="inputType1">*Last Name</label>
                      </div>
                      <div class="col-md-9 showcase_content_area">
                        <input type="text" class="form-control" id="user_last_name" name="user_last_name" placeholder="last name">
                      </div>
                    </div>
                    <div class="form-group row showcase_row_area">
                      <div class="col-md-3 showcase_text_area">
                        <label for="inputType1">*Nickname</label>
                      </div>
                      <div class="col-md-9 showcase_content_area">
                        <input type="text" class="form-control" id="user_nick" name="user_nick" placeholder="nickname">
                      </div>
                    </div>
                    <div class="form-group row showcase_row_area">
                      <div class="col-md-3 showcase_text_area">
                        <label for="inputType1">*Age</label>
                      </div>
                      <div class="col-md-9 showcase_content_area">
                        <input type="number" class="form-control" id="user_age" name="user_age" placeholder="0~100" min="0" max="100">
                      </div>
                    </div>
                    <div class="form-group row showcase_row_area">
                      <div class="col-md-3 showcase_text_area">
                        <label for="inputType1">*Gender</label>
                      </div>
                        <div class="col-md-9 showcase_content_area">
                          <select class="custom-select" name="user_gender">
                            <option selected="selected" value="male">Male</option>
                            <option value="female">Female</option>
                          </select>
                        </div>
                      </div>
                    <div class="form-group row showcase_row_area">
                      <div class="col-md-3 showcase_text_area">
                        <label for="inputType1">Email Address</label>
                      </div>
                      <div class="col-md-9 showcase_content_area">
                        <input type="email" class="form-control" id="user_email" name="user_email" placeholder="aaa@aaa.com">
                      </div>
                    </div>
                    <div class="row showcase_row_area mb-3">
                      <div class="col-md-3 showcase_text_area">
                        <label>Profile Photo Upload</label>
                      </div>
                      <div class="col-md-9 showcase_content_area">
                        <div class="custom-file">
                          <input type="file" class="custom-file-input" id="customFile">
                          <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>
                      </div>
                    </div>
                    <button type="button" id="registerButton" class="btn btn-primary btn-block">Sign in</button>
                  </form>
                  <div class="signup-link">
                    <p>Do you Already have Account??</p>
                    <a href="loginPage">Login</a>
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