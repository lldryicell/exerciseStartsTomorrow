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
  </head>
  <body>
    <div class="authentication-theme auth-style_1">
      <div class="row">
        <div class="col-12 logo-section">
          <a href="../../index.html" class="logo">
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
                        <input type="text" class="form-control" id="user_id" name="user_id" placeholder="Sara Watson">
                      </div>
                    </div>
                    <div class="form-group row showcase_row_area">
                      <div class="col-md-3 showcase_text_area">
                        <label for="inputType1">*Password</label>
                      </div>
                      <div class="col-md-9 showcase_content_area">
                        <input type="text" class="form-control" id="user_pw" name="user_pw" placeholder="Sara Watson">
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
                    <button type="submit" class="btn btn-primary btn-block">Sign in</button>
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