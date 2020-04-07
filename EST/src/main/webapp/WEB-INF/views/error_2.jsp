<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Label - Premium Responsive Bootstrap 4 Admin & Dashboard Template</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/iconfonts/mdi/css/materialdesignicons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/css/vendor.addons.css">
    <!-- endinject -->
    <!-- vendor css for this page -->
    <!-- End vendor css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/shared/style.css">
    <!-- endinject -->
    <!-- Layout style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/demo_1/style.css">
    <!-- Layout style -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/images/favicon.ico" />
  </head>
  <body>
    <div class="error_page error_2">
      <div class="container inner-wrapper">
        <h1 class="display-1 error-heading">404</h1>
        <h2 class="error-code">Page Not Found</h2>
        <p class="error-message">The page you are looking for might have been removed had its name changed or is temporarily unavailable.</p>
        <a href="/est/" class="btn btn-primary">Back to Home</a>
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