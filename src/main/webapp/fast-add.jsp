<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<div id="main-wrapper" data-navbarbg="skin6" data-theme="light" data-layout="vertical" data-sidebartype="full" data-boxed-layout="full">
		<header class="topbar" data-navbarbg="skin6">
			<nav class="navbar top-navbar navbar-expand-md navbar-light">
				<div class="navbar-header" data-logobg="skin5">
					<a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"> 
						<i class="ti-menu ti-close"></i>
					</a>
					<div class="navbar-brand">
						<a href="admin-index.jsp" class="logo" style="text-decoration: none"> 
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
								<i class="mdi mdi-av-timer"></i> <span class="hide-menu">Trang chủ</span>
							</a>
						</li>
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link" href="pages-profile.jsp" aria-expanded="false"> 
								<i class="mdi mdi-account-network"></i> 
								<span class="hide-menu">Thông tin tài khoản</span>
							</a>
						</li>
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link" href="user-manager.jsp" aria-expanded="false"> 
								<i class="mdi mdi-border-none"></i> 
									<span class="hide-menu">Quản lý người dùng</span>
							</a>
						</li>
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link" href="lottery.jsp" aria-expanded="false"> 
								<i class="mdi mdi-border-none"></i> <span class="hide-menu">Quản lý vé số</span>
							</a>
						</li>
						<li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="history" aria-expanded="false">
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
				
						<div class="col-5 align-self-center">
							<h4 class="page-title">
								Thêm mới
							</h4>
						</div>
					<div class="col-7 align-self-center">
						<div class="d-flex align-items-center justify-content-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
									<li class="breadcrumb-item active" aria-current="page">Thêm mới</li>
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
								<form action="add?objectives=fastadd" method="post">
									<div class="mb-3 mt-3">
										<label>Tên loại:</label>
										<select name="typename" id="input" class="form-control"  >
											<option ${old.typeName=="KIẾN THIẾT MIỀN BẮC"?"selected":""} value="KIẾN THIẾT MIỀN BẮC">KIẾN THIẾT MIỀN BẮC</option>
											<option ${old.typeName=="KIẾN THIẾT MIỀN TRUNG"?"selected":""} value="KIẾN THIẾT MIỀN TRUNG">KIẾN THIẾT MIỀN TRUNG</option>
											<option ${old.typeName=="KIẾN THIẾT MIỀN NAM"?"selected":""} value="KIẾN THIẾT MIỀN NAM">KIẾN THIẾT MIỀN NAM</option>
										</select>
									</div>
									<div class="mb-3 mt-3">
										<label>Tỉnh thành:</label>
										<select name="province" id="input" class="form-control"  >
											<option ${old.province=="HỒ CHÍ MINH"?"selected":""} value="HỒ CHÍ MINH">HỒ CHÍ MINH</option>
											<option ${old.province=="VŨNG TÀU"?"selected":""} value="ŨNG TÀU">VŨNG TÀU</option>
											<option ${old.province=="ĐẮC LẮC"?"selected":""} value="ĐẮC LẮC">ĐẮC LẮC</option>
											<option ${old.province=="QUẢNG NAM"?"selected":""} value="QUẢNG NAM">QUẢNG NAM</option>
											<option ${old.province=="HÀ NỘI"?"selected":""} value="HÀ NỘI">HÀ NỘI</option>
											<option ${old.province=="ĐỒNG THÁP"?"selected":""} value="ĐỒNG THÁP">ĐỒNG THÁP</option>
										</select>
									</div>
									<div class="mb-3 mt-3">
										<label>Giá vé:</label> <input class="form-control" type="number" name="price" value="${old.price}">
									</div>
									<div class="mb-3 mt-3">
										<label>Số chữ số:</label> <input class="form-control" type="number" name="number" value="${old.numberDigits}">
									</div>
									<div class="mb-3 mt-3">
										<label>Tổng số lần quay:</label> <input class="form-control" type="number" name="spin" value="${old.totalSpins}">
									</div>
									<div class="mb-3 mt-3">
										<label>Ngày phát hành:</label> <input class="form-control" name="issue" value="${old.dateStart}">
									</div>
									<div class="mb-3 mt-3">
										<label>Ngày kết thúc:</label> <input class="form-control"  name="complete" value="${old.dateEnd}">
									</div>
									<div class="mb-3 mt-3">
										<label>Ngày mở thưởng :</label> <input class="form-control" name="date" value="${old.date}">
									</div>
									<div class="mb-3">
										<label>Giờ mở thưởng:</label> <input class="form-control" name="time"  value="${old.time}">
									</div>
									<div class="modal-footer">
										<button type="reset" class="btn btn-secondary" data-dismiss="modal">Reset</button>
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"> Submit</button>
									</div>
									<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<c:if test="${action=='update' }">
													<div class="modal-body">Bạn muốn cập nhật?</div>
												</c:if>
												<c:if test="${action=='add' }">
													<div class="modal-body">Bạn muốn tạo mới?</div>
												</c:if>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
													<button type="submit" class="btn btn-primary">Đồng ý</button>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer text-center">
				SWP490X
			</footer>

		</div>

	</div>

	<script src="admin/assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="admin/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="admin/assets/extra-libs/sparkline/sparkline.js"></script>
	<script src="admin/dist/js/waves.js"></script>
	<script src="admin/dist/js/sidebarmenu.js"></script>
	<script src="admin/dist/js/custom.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>