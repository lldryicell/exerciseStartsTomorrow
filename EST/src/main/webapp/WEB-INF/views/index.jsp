<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Exercise Starts Tomorrow</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/iconfonts/mdi/css/materialdesignicons.css">
    <!-- endinject -->
    <!-- vendor css for this page -->
    <!-- End vendor css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/shared/style.css">
    <!-- endinject -->
    <!-- Layout style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/demo_1/style.css">
    <!-- Layout style -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/asssets/images/favicon.ico" />
    
    
    <link rel=" shortcut icon" href="image/favicon.ico">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fullCalendar_css_js/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fullCalendar_css_js/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='${pageContext.request.contextPath}/resources/fullCalendar_css_js/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='${pageContext.request.contextPath}/resources/fullCalendar_css_js/vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fullCalendar_css_js/css/main.css">
    
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
    	$(function(){
    		
    	});
    </script>
  </head>
  <body class="header-fixed">
    <!-- partial:partials/_header.html -->
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
            <c:if test="${sessionScope.user_seq != null}"><!-- 이 c:if태그 안쪽(46번째줄 부터 137번째줄)까지는 내가(영준) AJAX등을 이용해 구현할 예정 -->
            <li class="nav-item dropdown">
              <a class="nav-link" href="#" id="notificationDropdown" data-toggle="dropdown" aria-expanded="false">
                <i class="mdi mdi-bell-outline mdi-1x"></i>
              </a>
              <div class="dropdown-menu navbar-dropdown dropdown-menu-right" aria-labelledby="notificationDropdown">
                <div class="dropdown-header">
                  <h6 class="dropdown-title">Notifications</h6>
                  <p class="dropdown-title-text">You have 4 unread notification</p>
                </div>
                
               <div class="dropdown-body" id = "noti">
               <c:forEach items="${sessionScope.alertList}" var="item">
                   <div class="dropdown-list">
                     <div class="icon-wrapper rounded-circle bg-inverse-primary text-primary">
                       <i class="mdi mdi-security"></i>
                     </div>
                     <div class="content-wrapper">
                       <small class="name">${item.work_title}</small>
                       <small class="content-text">${item.work_alert_date}</small>
                     </div>
                   </div>
              </c:forEach>
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
                      <img class="profile-img" src="${pageContext.request.contextPath}/resources/assets/images/profile/female/image_2.png" alt="profile image">
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
            </c:if>
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
      <!-- partial:partials/_sidebar.html -->
      <div class="sidebar">
      	<c:if test="${sessionScope.user_seq != null}">
	        <div class="user-profile"><!-- 접속한 유저 프로필 -->
	          <div class="display-avatar animated-avatar">
	            <img class="profile-img img-lg rounded-circle" src="${pageContext.request.contextPath}/resources/assets/images/profile/${sessionScope.profile_image_save_name}" alt="profile image">
	          </div>
	          <div class="info-wrapper">
	            <p class="user-name">${sessionScope.user_nick}</p>
	            <h6 class="display-income">${sessionScope.user_email}</h6>
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
	            <a href="userSetting">
	              <span class="link-title">User Setting</span>
	              <i class="mdi mdi-account-settings link-icon"></i>
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
		      <li>
		        <a href="https://demo.themewagon.com/preview/free-responsive-bootstrap-4-admin-dashboard-template-label">
		          <span class="link-title">FrontSource</span>
		          <i class="mdi mdi-language-css3 link-icon"></i>
		        </a>
		      </li>
		      <li>
		        <a href="https://github.com/lldryicell/ExerciseStartsTomorrow">
		          <span class="link-title">Github</span>
		          <i class="mdi mdi-github-circle link-icon"></i>
		        </a>
		      </li>
	        </ul>
      	</c:if>
      	<c:if test="${sessionScope.user_seq == null}"><!-- 접속한 유저가 로그인 하지 않았을 경우 -->
	        <ul class="navigation-menu">
	          <li class="nav-category-divider">Please Login First</li>
	          <li>
	            <a href="loginPage">
	              <span class="link-title">Go To Login</span>
	              <i class="mdi mdi-login link-icon"></i>
	            </a>
	          </li>
	        </ul>
      	</c:if>
      </div>
      <div class="page-content-wrapper">
      <c:if test="${sessionScope.user_seq!=null}"><!-- 유저가 로그인 하고 들어왔을 때 -->
      	<!-- 222번줄과 다르게 이 부분은 확실히 컨탠츠 추가 해줘야됌 -->
      	<!-- 실제 유저가 보게 될 페이지. 캘린더, 할일(Todo)추가해야됌 -->
      	<!-- partial -->
      	<input type="hidden" name="user_seq" value="${sessonScope.user_seq}">
        <div class="page-content-wrapper-inner">
          	<div class="content-viewport">
				<!-- calendar code here -->
				<div class="container">

        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">카테고리1</a></li>
                <li><a tabindex="-1" href="#">카테고리2</a></li>
                <li><a tabindex="-1" href="#">카테고리3</a></li>
                <li><a tabindex="-1" href="#">카테고리4</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">구분</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <option value="카테고리1">카테고리1</option>
                                    <option value="카테고리2">카테고리2</option>
                                    <option value="카테고리3">카테고리3</option>
                                    <option value="카테고리4">카테고리4</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">설명</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">구분별</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="카테고리1">카테고리1</option>
                            <option value="카테고리2">카테고리2</option>
                            <option value="카테고리3">카테고리3</option>
                            <option value="카테고리4">카테고리4</option>
                        </select>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">등록자별</label>
                    <div class="input-group">
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="정연"
                                checked>정연</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="다현"
                                checked>다현</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="사나"
                                checked>사나</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="나연"
                                checked>나연</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="지효"
                                checked>지효</label>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.filter panel -->
    </div>
    <!-- /.container -->
          	</div>
        </div>
        <!-- content viewport ends -->
      </c:if>
      <c:if test="${sessionScope.user_seq==null}"><!-- 유저가 로그인 하지 않고 들어왔을 때 -->
      <!-- 로그인 하지 않은 유저에게 이 사이트를 간단히 소개하는 페이지. -->
      <!-- partial -->
        <div class="page-content-wrapper-inner">
          	<div class="content-viewport"> 
      			<!-- init code here -->
      		</div>
      	</div>
      </c:if>
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="row">
            <div class="col-sm-6 text-center text-sm-right order-sm-1">
              <ul class="text-gray">
                <li><a href="#">Terms of use</a></li>
                <li><a href="#">Privacy Policy</a></li>
              </ul>
            </div>
            <div class="col-sm-6 text-center text-sm-left mt-3 mt-sm-0">
              <small class="text-muted d-block">Copyright Â© 2019 <a href="http://www.uxcandy.co" target="_blank">UXCANDY</a>. All rights reserved</small>
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
    <!-- endinject -->
    <!-- Vendor Js For This Page Ends-->
    <script src="<c:url value="/resources/assets/vendors/apexcharts/apexcharts.min.js" />"></script>
    <script src="<c:url value="/resources/assets/vendors/chartjs/Chart.min.js" />"></script>
    <script src="<c:url value="/resources/assets/js/charts/chartjs.addon.js" />"></script>
    <!-- Vendor Js For This Page Ends-->
    <!-- build:js -->
    <script src="<c:url value="/resources/assets/js/template.js" />"></script>
    <script src="<c:url value="/resources/assets/js/dashboard.js" />"></script>
    <!-- endbuild -->
    <script src="<c:url value="/resources/fullCalendar_css_js/vendor/js/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/fullCalendar_css_js/vendor/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/fullCalendar_css_js/vendor/js/moment.min.js" />"></script>
    <script src="<c:url value="/resources/fullCalendar_css_js/vendor/js/fullcalendar.min.js" />"></script>
    <script src="<c:url value="/resources/fullCalendar_css_js/vendor/js/ko.js" />"></script>
    <script src="<c:url value="/resources/fullCalendar_css_js/vendor/js/select2.min.js" />"></script>
    <script src="<c:url value="/resources/fullCalendar_css_js/vendor/js/bootstrap-datetimepicker.min.js" />"></script>
    <script src="<c:url value="/resources/fullCalendar_css_js/js/main.js" />"></script>
    <script src="<c:url value="/resources/fullCalendar_css_js/js/addEvent.js" />"></script>
    <script src="<c:url value="/resources/fullCalendar_css_js/js/editEvent.js" />"></script>
    <script src="<c:url value="/resources/fullCalendar_css_js/js/etcSetting.js" />"></script>
  </body>
</html>