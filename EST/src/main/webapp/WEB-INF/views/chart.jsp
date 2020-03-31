<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>EST - User Chart Page</title>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script type="text/javascript">
  	$(function(){
  		
  	  var weekAvgData = new Array();//나중에 데이터 조작 부분 만들고 나면 Ajax를 통해 값을 주고 받을 예정.
  	  var lastWeekDate = new Array();//이전 1주일간 일정이 있던 날짜 데이터
  	  var entCompNumData;//이 변수들은 JS배열변수가 될 것임.
  	  
  	  <c:forEach items="${weekDateList}" var="date">
	  	lastWeekDate.push("${date}");
	  </c:forEach>
  	  
  	  <c:forEach items="${avgDataList}" var="date">
  		weekAvgData.push("${date}");
	  </c:forEach>
  	  

  	  if ($("#chartjs-staked-line-chart").length) {
  	    var options = {
  	      type: 'line',
  	      data: {
  	        labels: lastWeekDate,
  	        datasets: [{
  	            label: 'complete percent',
  	            data: weekAvgData,
  	            borderWidth: 2,
  	            fill: false,
  	            backgroundColor: chartColors[0],
  	            borderColor: chartColors[0],
  	            borderWidth: 0
  	          }
  	        ]
  	      },
  	      options: {
  	        scales: {
  	          yAxes: [{
  	            ticks: {
  	              reverse: false
  	            }
  	          }]
  	        },
  	        fill: false,
  	        legend: false
  	      }
  	    }

  	    var ctx = document.getElementById('chartjs-staked-line-chart').getContext('2d');
  	    new Chart(ctx, options);
  	  }

  	  if ($("#chartjs-doughnut-chart").length) {
  	    var DoughnutData = {
  	      datasets: [{
  	        data: [5, 3, 20],
  	        backgroundColor: chartColors,
  	        borderColor: chartColors,
  	        borderWidth: chartColors
  	      }],
  	      labels: [
  	        '달성률 70% 이상',
  	        '달성률 70%~30%',
  	        '달성률 30% 이하',
  	      ]
  	    };
  	    var DoughnutOptions = {
  	      responsive: true,
  	      animation: {
  	        animateScale: true,
  	        animateRotate: true
  	      }
  	    };
  	    var doughnutChartCanvas = $("#chartjs-doughnut-chart").get(0).getContext("2d");
  	    var doughnutChart = new Chart(doughnutChartCanvas, {
  	      type: 'doughnut',
  	      data: DoughnutData,
  	      options: DoughnutOptions
  	    });
  	  }
  	});
  </script>
</head>

<body class="header-fixed">
  <!-- partial:../../partials/_header.html -->
  <nav class="t-header">
    <div class="t-header-brand-wrapper">
      <a href="indexPage">
        <img class="logo" src="${pageContext.request.contextPath}/resources/assets/images/logo.svg" alt="">
        <img class="logo-mini" src="${pageContext.request.contextPath}/resources/assets/images/logo_mini.svg" alt="">
      </a>
    </div>
    <div class="t-header-content-wrapper">
      <div class="t-header-content">
        <button class="t-header-toggler t-header-mobile-toggler d-block d-lg-none">
          <i class="mdi mdi-menu"></i>
        </button>
        <form action="#" class="t-header-search-box">
          <div class="input-group">
            <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Search" autocomplete="off">
            <button class="btn btn-primary" type="submit"><i class="mdi mdi-arrow-right-thick"></i></button>
          </div>
        </form>
        <ul class="nav ml-auto">
          <li class="nav-item dropdown">
            <a class="nav-link" href="#" id="notificationDropdown" data-toggle="dropdown" aria-expanded="false">
              <i class="mdi mdi-bell-outline mdi-1x"></i>
            </a>
            <div class="dropdown-menu navbar-dropdown dropdown-menu-right" aria-labelledby="notificationDropdown">
              <div class="dropdown-header">
                <h6 class="dropdown-title">Notifications</h6>
                <p class="dropdown-title-text">You have 4 unread notification</p>
              </div>
              <div class="dropdown-body">
                <div class="dropdown-list">
                  <div class="icon-wrapper rounded-circle bg-inverse-primary text-primary">
                    <i class="mdi mdi-alert"></i>
                  </div>
                  <div class="content-wrapper">
                    <small class="name">Storage Full</small>
                    <small class="content-text">Server storage almost full</small>
                  </div>
                </div>
                <div class="dropdown-list">
                  <div class="icon-wrapper rounded-circle bg-inverse-success text-success">
                    <i class="mdi mdi-cloud-upload"></i>
                  </div>
                  <div class="content-wrapper">
                    <small class="name">Upload Completed</small>
                    <small class="content-text">3 Files uploded successfully</small>
                  </div>
                </div>
                <div class="dropdown-list">
                  <div class="icon-wrapper rounded-circle bg-inverse-warning text-warning">
                    <i class="mdi mdi-security"></i>
                  </div>
                  <div class="content-wrapper">
                    <small class="name">Authentication Required</small>
                    <small class="content-text">Please verify your password to continue using cloud services</small>
                  </div>
                </div>
              </div>
              <div class="dropdown-footer">
                <a href="#">View All</a>
              </div>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link" href="#" id="messageDropdown" data-toggle="dropdown" aria-expanded="false">
              <i class="mdi mdi-message-outline mdi-1x"></i>
              <span class="notification-indicator notification-indicator-primary notification-indicator-ripple"></span>
            </a>
            <div class="dropdown-menu navbar-dropdown dropdown-menu-right" aria-labelledby="messageDropdown">
              <div class="dropdown-header">
                <h6 class="dropdown-title">Messages</h6>
                <p class="dropdown-title-text">You have 4 unread messages</p>
              </div>
              <div class="dropdown-body">
                <div class="dropdown-list">
                  <div class="image-wrapper">
                    <img class="profile-img" src="${pageContext.request.contextPath}/resources/assets/images/profile/male/image_1.png" alt="profile image">
                    <div class="status-indicator rounded-indicator bg-success"></div>
                  </div>
                  <div class="content-wrapper">
                    <small class="name">Clifford Gordon</small>
                    <small class="content-text">Lorem ipsum dolor sit amet.</small>
                  </div>
                </div>
                <div class="dropdown-list">
                  <div class="image-wrapper">
                    <img class="profile-img" src="${pageContext.request.contextPath}/resources/assets/images/profile/female/image_2.png"
                      alt="profile image">
                    <div class="status-indicator rounded-indicator bg-success"></div>
                  </div>
                  <div class="content-wrapper">
                    <small class="name">Rachel Doyle</small>
                    <small class="content-text">Lorem ipsum dolor sit amet.</small>
                  </div>
                </div>
                <div class="dropdown-list">
                  <div class="image-wrapper">
                    <img class="profile-img" src="${pageContext.request.contextPath}/resources/assets/images/profile/male/image_3.png" alt="profile image">
                    <div class="status-indicator rounded-indicator bg-warning"></div>
                  </div>
                  <div class="content-wrapper">
                    <small class="name">Lewis Guzman</small>
                    <small class="content-text">Lorem ipsum dolor sit amet.</small>
                  </div>
                </div>
              </div>
              <div class="dropdown-footer">
                <a href="#">View All</a>
              </div>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link" href="#" id="appsDropdown" data-toggle="dropdown" aria-expanded="false">
              <i class="mdi mdi-apps mdi-1x"></i>
            </a>
            <div class="dropdown-menu navbar-dropdown dropdown-menu-right" aria-labelledby="appsDropdown">
              <div class="dropdown-header">
                <h6 class="dropdown-title">Apps</h6>
                <p class="dropdown-title-text mt-2">Authentication required for 3 apps</p>
              </div>
              <div class="dropdown-body border-top pt-0">
                <a class="dropdown-grid">
                  <i class="grid-icon mdi mdi-jira mdi-2x"></i>
                  <span class="grid-tittle">Jira</span>
                </a>
                <a class="dropdown-grid">
                  <i class="grid-icon mdi mdi-trello mdi-2x"></i>
                  <span class="grid-tittle">Trello</span>
                </a>
                <a class="dropdown-grid">
                  <i class="grid-icon mdi mdi-artstation mdi-2x"></i>
                  <span class="grid-tittle">Artstation</span>
                </a>
                <a class="dropdown-grid">
                  <i class="grid-icon mdi mdi-bitbucket mdi-2x"></i>
                  <span class="grid-tittle">Bitbucket</span>
                </a>
              </div>
              <div class="dropdown-footer">
                <a href="#">View All</a>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- partial -->
  <div class="page-body">
    <!-- partial:../../partials/_sidebar.html -->
    <div class="sidebar">
      <div class="user-profile">
        <div class="display-avatar animated-avatar">
          <img class="profile-img img-lg rounded-circle" src="${pageContext.request.contextPath}/resources/assets/images/profile/male/image_1.png"
            alt="profile image">
        </div>
        <div class="info-wrapper">
          <p class="user-name">Allen Clerk</p>
          <h6 class="display-income">$3,400,00</h6>
        </div>
      </div>
      <ul class="navigation-menu">
        <li class="nav-category-divider">MAIN</li>
        <li>
          <a href="indexPage">
            <span class="link-title">Calendar&Todo</span>
            <i class="mdi mdi-gauge link-icon"></i>
          </a>
        </li>
        <li>
          <a href="chartPage?user_id=${sessionScope.user_id}">
            <span class="link-title">User Analysis Charts</span>
            <i class="mdi mdi-chart-donut link-icon"></i>
          </a>
        </li>
	    <li>
	      <a href="logout">
	        <span class="link-title">Logout</span>
	        <i class="mdi mdi-logout link-icon"></i>
	      </a>
	    </li>
        <li class="nav-category-divider">DOCS</li>
        <li>
          <a href="${pageContext.request.contextPath}/resources/docs/docs.html">
            <span class="link-title">Documentation</span>
            <i class="mdi mdi-asterisk link-icon"></i>
          </a>
        </li>
      </ul>
    </div>
    <!-- partial -->
    <div class="page-content-wrapper">
      <div class="page-content-wrapper-inner">
        <div class="viewport-header">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb has-arrow">
              <li class="breadcrumb-item">
                <a href="indexPage">Calendar&Todo</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">User Analysis</li>
            </ol>
          </nav>
        </div>
        <div class="content-viewport">
          <div class="row">
            <div class="col-md-6">
              <div class="grid">
                <div class="grid-body">
                  <h2 class="grid-title">금주의 일정 평균 달성률 현황</h2>
                  <div class="item-wrapper">
                    <canvas id="chartjs-staked-line-chart" width="800" height="400"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="grid">
                <div class="grid-body">
                  <h2 class="grid-title">모든 기간의 일정 달성 현황</h2>
                  <div class="item-wrapper">
                    <canvas id="chartjs-doughnut-chart" width="800" height="400"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 equel-grid" style="max-width: 100%">
          <div class="grid table-responsive">
            <table class="table table-stretched">
              <thead>
                <tr>
                  <th>일정이름</th>
                  <th>마감일</th>
                  <th>남은시간</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <p class="mb-n1 font-weight-medium">gotoMarket</p>
                    <small class="text-gray">for Dinner Time</small>
                  </td>
                  <td class="font-weight-medium">2020.04.05</td>
                  <td class="text-danger font-weight-medium">
                    <div class="badge badge-success">-1.39%</div>
                  </td>
                </tr>
                <tr>
                  <td>
                     <p class="mb-n1 font-weight-medium">Hospitor</p>
                     <small class="text-gray">dentist</small>
                  </td>
                  <td class="font-weight-medium">2020.04.05</td>
                  <td class="text-danger font-weight-medium">
                    <div class="badge badge-danger">-1.17%</div>
                  </td>
                </tr>
                <tr>
                  <td>
                    <p class="mb-n1 font-weight-medium">move day</p>
                      <small class="text-gray">go to Oosaka</small>
                    </td>
                    <td class="font-weight-medium">2020.04.03</td>
                    <td class="text-danger font-weight-medium">
                      <div class="badge badge-success">-0.24%</div>
                    </td>
                </tr>
                <tr>
                  <td>
                    <p class="mb-n1 font-weight-medium">party day</p>
                    <small class="text-gray">on anna's castle</small>
                  </td>
                  <td class="font-weight-medium">2020.03.31</td>
                  <td class="text-success font-weight-medium">
                    <div class="badge badge-success">+0.15%</div>
                  </td>
                </tr>
                <tr>
                  <td>
                    <p class="mb-n1 font-weight-medium">KIM's birthday</p>
                    <small class="text-gray">it will celebrate in japan</small>
                  </td>
                  <td class="font-weight-medium">2020.04.29</td>
                  <td class="text-success font-weight-medium">
                    <div class="badge badge-success">+0.67%</div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <!-- content viewport ends -->
      <!-- partial:../../partials/_footer.html -->
      <footer class="footer">
        <div class="row">
          <div class="col-sm-6 text-center text-sm-right order-sm-1">
            <ul class="text-gray">
              <li><a href="#">Terms of use</a></li>
              <li><a href="#">Privacy Policy</a></li>
            </ul>
          </div>
          <div class="col-sm-6 text-center text-sm-left mt-3 mt-sm-0">
            <small class="text-muted d-block">Copyright © 2019 <a href="http://www.uxcandy.co"
                target="_blank">UXCANDY</a>. All rights reserved</small>
            <small class="text-gray mt-2">Handcrafted With <i class="mdi mdi-heart text-danger"></i></small>
          </div>
        </div>
      </footer>
      <!-- partial -->
    </div>
    <!-- page content ends -->
  </div>
  <!--page body ends -->
  <!-- SCRIPT LOADING START FORM HERE /////////////-->
  <!-- plugins:js -->
  <script src="<c:url value="/resources/assets/vendors/js/core.js" />"></script>
  <script src="<c:url value="/resources/assets/vendors/js/vendor.addons.js" />"></script>
  <!-- endinject -->
  <!-- Vendor Js For This Page Ends-->
  <script src="<c:url value="/resources/assets/vendors/chartjs/Chart.min.js" />"></script>
  <script src="<c:url value="/resources/assets/js/charts/chartjs.addon.js" />"></script>
  <!-- Vendor Js For This Page Ends-->
  <!-- build:js -->
  <script src="<c:url value="/resources/assets/js/template.js" />"></script>
  <script src="<c:url value="/resources/assets/js/charts/chartjs.js" />"></script>
  <!-- endbuild -->
</body>

</html>