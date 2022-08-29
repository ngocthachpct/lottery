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
<meta name="robots" content="noadmin-index,nofollow">
<title>PROFILE</title>
<link rel="canonical" href="https://www.wrappixel.com/templates/niceadmin-lite/" />
<link rel="icon" type="image/png" sizes="16x16" href="admin/assets/images/favicon.png">
<link href="admin/dist/css/style.min.css" rel="stylesheet">
</head>
<body>
	<div id="main-wrapper" data-navbarbg="skin6" data-theme="light" data-layout="vertical" data-sidebartype="full" data-boxed-layout="full">
		<header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <div class="navbar-header" data-logobg="skin5">
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)">
                        <i class="ti-menu ti-close"></i>
                    </a> 
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
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin6">
                    <ul class="navbar-nav float-start me-auto">
                    </ul>
                    <ul class="navbar-nav"><p>${name}</p></ul>
                    <ul class="navbar-nav float-end">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="admin/assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31">
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end user-dd animated" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-user me-1 ms-1"></i>
                                    Tài khoản</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-wallet me-1 ms-1"></i>
                                    Số dư</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-email me-1 ms-1"></i>
                                    Hộp thư</a>
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
							<a class="sidebar-link waves-effect waves-dark sidebar-link" href="inforUser?username=${name}" aria-expanded="false"> 
								<i class="mdi mdi-account-network"></i> <span class="hide-menu">Thông tin tài khoản</span>
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
					<div class="col-5 align-self-center">
						<h4 class="page-title">Tài khoản</h4>
					</div>
					<div class="col-7 align-self-center">
						<div class="d-flex align-items-center justify-content-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
									<li class="breadcrumb-item active" aria-current="page">Tài khoản</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<!-- Column -->
					<div class="col-lg-4 col-xlg-3">
						<div class="card">
							<div class="card-body">
								<center class="mt-4">
									<img src="admin/assets/images/users/5.jpg"
										class="rounded-circle" width="150" />
									<h4 class="card-title mt-2">${usr.name}</h4>
									<h6 class="card-subtitle">${usr.groupName}</h6>
									<div class="row text-center justify-content-md-center">
										<div class="col-4">
											<a href="javascript:void(0)" class="link"><i
												class="mdi mdi-account-network"></i> <font
												class="font-medium">254</font> </a>
										</div>
										<div class="col-4">
											<a href="javascript:void(0)" class="link"><i
												class="mdi mdi-camera"></i> <font class="font-medium">54</font>
											</a>
										</div>
									</div>
								</center>
							</div>
							<div>
								<hr>
							</div>
							<div class="card-body">
								<small class="text-muted">Email </small>
								<h6><c:out value="${usr.mail}"></c:out></h6>
								<small class="text-muted pt-4 db">Số điện thoại</small>
								<h6><c:out value="${usr.phone}"></c:out></h6>
								<small class="text-muted pt-4 db">Địa chỉ</small>
								<h6><c:out value="${usr.address}"></c:out></h6>
								
								<div class="map-box">
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d470029.1604841957!2d72.29955005258641!3d23.019996818380896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C+Gujarat!5e0!3m2!1sen!2sin!4v1493204785508"
										width="100%" height="150" frameborder="0" style="border: 0" allowfullscreen>
									</iframe>
								</div>
								<small class="text-muted pt-4 db">Mạng xã hội</small> <br />
								<button class="btn btn-circle btn-secondary">
									<i class="mdi mdi-facebook"></i>
								</button>
								<button class="btn btn-circle btn-secondary">
									<i class="mdi mdi-twitter"></i>
								</button>
								<button class="btn btn-circle btn-secondary">
									<i class="mdi mdi-youtube-play"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-lg-8 col-xlg-9">
						<div class="card">
							<div class="card-body">
									<form class="form-horizontal form-material mx-2"
										action="inforUser" method="post">
										<div class="form-group">
											<label class="col-md-12">Họ tên</label>
											<div class="col-md-12">
												<input type="text" value="${usr.name}"
													class="form-control form-control-line" name="name">
											</div>
										</div>

										<div class="form-group">
											<label class="col-md-12">Mật khẩu</label>
											<div class="col-md-12">
												<input type="password"
													class="form-control form-control-line" name="pwd">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-12">Xác nhận lại</label>
											<div class="col-md-12">
												<input type="password"
													class="form-control form-control-line" name="pwdConfirm">
											</div>
										</div>
										<div class="form-group">
											<label for="example-email" class="col-md-12">Email</label>
											<div class="col-md-12">
												<input type="email" placeholder=""
													class="form-control form-control-line" value="${usr.mail}"
													name="mail" id="example-email">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-12">Số điện thoại</label>
											<div class="col-md-12">
												<input type="tel" class="form-control form-control-line"
													value="${usr.phone}" name="phone">
											</div>
										</div>

										<div class="form-group">
											<label class="col-md-12">Địa chỉ</label>
											<div class="col-md-12">
												<input type="text" class="form-control form-control-line"
													value="${usr.address}" name="address">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-12">
												<button class="btn btn-success text-white">Update
													Profile</button>
											</div>
										</div>
									</form>
								<c:if test="${err == '1' }">
									<script type="text/javascript">
										alert("mật khẩu xác nhận không chính xác")
									</script>
								</c:if>
								<c:if test="${err == '2' }">
									<script type="text/javascript">
										alert("mật khẩu không chính xác")
									</script>
								</c:if>
								<c:if test="${err == '3' }">
									<script type="text/javascript">
										alert("Cập nhật thành công")
									</script>
								</c:if>
								<c:if test="${err == '4' }">
									<script type="text/javascript">
										alert("Số điện thoại không hợp lệ")
									</script>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer text-center">
				<a href="#">SWP490X_FX13870</a>.
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