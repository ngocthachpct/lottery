<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Nice lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Nice admin lite design, Nice admin lite dashboard bootstrap 5 dashboard template">
<meta name="description" content="Nice Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<title>Admin Template</title>
<link rel="canonical" href="https://www.wrappixel.com/templates/niceadmin-lite/" />
<link rel="icon" type="image/png" sizes="16x16" href="admin/assets/images/favicon.png">
<link href="admin/dist/css/style.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>

<body>
	<div id="main-wrapper" data-navbarbg="skin6" data-theme="light" data-layout="vertical" data-sidebartype="full" data-boxed-layout="full">
		<header class="topbar" data-navbarbg="skin6">
			<nav class="navbar top-navbar navbar-expand-md navbar-light">
				<div class="navbar-header" data-logobg="skin5">
					<a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"> <i class="ti-menu ti-close"></i></a>
                    <div class="navbar-brand">
                        <c:if test="${sessionScope.userSession.groupId =='QL'}">
                        <a href="admin-index.jsp" class="logo">
                         </c:if>
                         <c:if test="${sessionScope.userSession.groupId =='ND'}">
                        <a href="AcountServlet?username=${user}" class="logo">
                         </c:if>
                            <b class="logo-icon">
                                <img src="admin/assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                                <img src="admin/assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                            </b>
                            <span class="logo-text">
                                <img src="admin/assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                                <img src="admin/assets/images/logo-light-text.png" class="light-logo" alt="homepage" />
                            </span>
                        </a>
                    </div>    
				</div>
				<div class="navbar-collapse collapse" id="navbarSupportedContent"
					data-navbarbg="skin6">
					<ul class="navbar-nav float-start me-auto">
						<li class="nav-item search-box">
							
						</li>
					</ul>
					<ul class="navbar-nav"><p>${name}</p></ul>
					<ul class="navbar-nav float-end">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="#" id="navbarDropdown" objectives="button" data-bs-toggle="dropdown" aria-expanded="false"> 
								<img src="admin/assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31">
							</a>
							<ul class="dropdown-menu dropdown-menu-end user-dd animated" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="javascript:void(0)"><i class="ti-user me-1 ms-1"></i> Tài khoản</a>
								<a class="dropdown-item" href="javascript:void(0)"><i class="ti-wallet me-1 ms-1"></i> Số dư</a>
								<a class="dropdown-item" href="javascript:void(0)"><i class="ti-email me-1 ms-1"></i> Hộp thư</a>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<aside class="left-sidebar" data-sidebarbg="skin5">
			<div class="scroll-sidebar">
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link" href="index.jsp" aria-expanded="false"> 
								<i class="mdi mdi-av-timer"></i> 
								<span class="hide-menu">Trang chủ</span>
							</a>
						</li>
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link" href="inforUser" aria-expanded="false"> 
								<i class="mdi mdi-account-network"></i> 
								<span class="hide-menu">Thông tin tài khoản</span>
							</a>
						</li>
						<c:if test="${sessionScope.userSession.groupId =='QL'}">
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="listUser?role=all&view=none" aria-expanded="false">
                                <i class="mdi mdi-border-none"></i>
                                <span class="hide-menu">Quản lý người dùng</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="lottery.jsp" aria-expanded="false">
                                <i class="mdi mdi-border-none"></i>
                                <span class="hide-menu">Quản lý vé số</span>
                            </a>
                        </li>
                         </c:if>
						 <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="history"  aria-expanded="false">
                                <i class="mdi mdi-border-none"></i>
                                <span class="hide-menu">Lịch sử dò</span>
                            </a>
                        </li>
					</ul>
				</nav>
			</div>
		</aside>
		<div class="page-wrapper">
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-7 align-self-center">
						<div class="d-flex align-items-center justify-content-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
									<li class="breadcrumb-item active" aria-current="page">Lịch sử dò</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th scope="col">Ngày dò</th>
												<th scope="col">Giờ dò</th>
												<th scope="col">Số dò</th>
												<th scope="col">Kết quả</th>
												<th scope="col">Tiền thưởng</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach items="${history}" var="h">
												<tr>
													<td>${h.date}</td>
													<td>${h.time}</td>
													<td>${h.number}</td>
													<td>${h.result}</td>
													<td>${h.prizeValue}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<c:forEach begin="1" end="${num}" var="i">
											<a href="history?index=${i}">${i}</a>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer text-center">
				<a href="#">Designed and SWP490X_FX13870</a>.
			</footer>
		</div>
	</div>
	<script src="admin/assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="admin/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="admin/assets/extra-libs/sparkline/sparkline.js"></script>
	<script src="admin/dist/js/waves.js"></script>
	<script src="admin/dist/js/sidebarmenu.js"></script>
	<script src="admin/dist/js/custom.min.js"></script>
</body>

</html>