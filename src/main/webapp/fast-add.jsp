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
									<a class="dropdown-item" href="javascript:void(0)"><i class="ti-user me-1 ms-1"></i> T??i kho???n</a>
									<a class="dropdown-item" href="javascript:void(0)"><i class="ti-wallet me-1 ms-1"></i> S??? d??</a>
									<a class="dropdown-item" href="javascript:void(0)"><i class="ti-email me-1 ms-1"></i> H???p th??</a>
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
								<i class="mdi mdi-av-timer"></i> <span class="hide-menu">Trang ch???</span>
							</a>
						</li>
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link" href="pages-profile.jsp" aria-expanded="false"> 
								<i class="mdi mdi-account-network"></i> 
								<span class="hide-menu">Th??ng tin t??i kho???n</span>
							</a>
						</li>
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link" href="user-manager.jsp" aria-expanded="false"> 
								<i class="mdi mdi-border-none"></i> 
									<span class="hide-menu">Qu???n l?? ng?????i d??ng</span>
							</a>
						</li>
						<li class="sidebar-item">
							<a class="sidebar-link waves-effect waves-dark sidebar-link" href="lottery.jsp" aria-expanded="false"> 
								<i class="mdi mdi-border-none"></i> <span class="hide-menu">Qu???n l?? v?? s???</span>
							</a>
						</li>
						<li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="history" aria-expanded="false">
                                <i class="mdi mdi-border-none"></i>
                                <span class="hide-menu">L???ch s??? d??</span>
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
								Th??m m???i
							</h4>
						</div>
					<div class="col-7 align-self-center">
						<div class="d-flex align-items-center justify-content-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Trang ch???</a></li>
									<li class="breadcrumb-item active" aria-current="page">Th??m m???i</li>
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
										<label>T??n lo???i:</label>
										<select name="typename" id="input" class="form-control"  >
											<option ${old.typeName=="KI???N THI???T MI???N B???C"?"selected":""} value="KI???N THI???T MI???N B???C">KI???N THI???T MI???N B???C</option>
											<option ${old.typeName=="KI???N THI???T MI???N TRUNG"?"selected":""} value="KI???N THI???T MI???N TRUNG">KI???N THI???T MI???N TRUNG</option>
											<option ${old.typeName=="KI???N THI???T MI???N NAM"?"selected":""} value="KI???N THI???T MI???N NAM">KI???N THI???T MI???N NAM</option>
										</select>
									</div>
									<div class="mb-3 mt-3">
										<label>T???nh th??nh:</label>
										<select name="province" id="input" class="form-control"  >
											<option ${old.province=="H??? CH?? MINH"?"selected":""} value="H??? CH?? MINH">H??? CH?? MINH</option>
											<option ${old.province=="V??NG T??U"?"selected":""} value="??NG T??U">V??NG T??U</option>
											<option ${old.province=="?????C L???C"?"selected":""} value="?????C L???C">?????C L???C</option>
											<option ${old.province=="QU???NG NAM"?"selected":""} value="QU???NG NAM">QU???NG NAM</option>
											<option ${old.province=="H?? N???I"?"selected":""} value="H?? N???I">H?? N???I</option>
											<option ${old.province=="?????NG TH??P"?"selected":""} value="?????NG TH??P">?????NG TH??P</option>
										</select>
									</div>
									<div class="mb-3 mt-3">
										<label>Gi?? v??:</label> <input class="form-control" type="number" name="price" value="${old.price}">
									</div>
									<div class="mb-3 mt-3">
										<label>S??? ch??? s???:</label> <input class="form-control" type="number" name="number" value="${old.numberDigits}">
									</div>
									<div class="mb-3 mt-3">
										<label>T???ng s??? l???n quay:</label> <input class="form-control" type="number" name="spin" value="${old.totalSpins}">
									</div>
									<div class="mb-3 mt-3">
										<label>Ng??y ph??t h??nh:</label> <input class="form-control" name="issue" value="${old.dateStart}">
									</div>
									<div class="mb-3 mt-3">
										<label>Ng??y k???t th??c:</label> <input class="form-control"  name="complete" value="${old.dateEnd}">
									</div>
									<div class="mb-3 mt-3">
										<label>Ng??y m??? th?????ng :</label> <input class="form-control" name="date" value="${old.date}">
									</div>
									<div class="mb-3">
										<label>Gi??? m??? th?????ng:</label> <input class="form-control" name="time"  value="${old.time}">
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
													<div class="modal-body">B???n mu???n c???p nh???t?</div>
												</c:if>
												<c:if test="${action=='add' }">
													<div class="modal-body">B???n mu???n t???o m???i?</div>
												</c:if>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
													<button type="submit" class="btn btn-primary">?????ng ??</button>
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