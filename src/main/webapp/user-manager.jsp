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
	<title>USER MANAGER</title>
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
							<a class="nav-link waves-effect waves-dark" href="javascript:void(0)">
								<div class="d-flex align-items-center">
									<i class="mdi mdi-magnify font-20 me-1"></i>
									<div class="ms-1 d-none d-sm-block">
										<span>Tìm kiếm</span>
									</div>
								</div>
							</a>
							<form class="app-search position-absolute" action="search" method="get">
								<input type="text" class="form-control" placeholder="Input username or fullname &amp; enter to search" name="search">
									<a class="srh-btn"> <i class="ti-close"></i> </a>
							</form>
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
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
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
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="listUser?role=all&view=none"
                                aria-expanded="false">
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
						<h4 class="page-title">Dang sách tài khoản</h4>
					</div>
					<div class="col-7 align-self-center">
						<div class="d-flex align-items-center justify-content-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
									<li class="breadcrumb-item active" aria-current="page">Quản lý người dùng</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<c:if test="${check == 'y'}">
				<script>
					alert("${alert}")
				</script>
			</c:if>
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<select class="form-select form-select-lg mb-3" name="forma" onchange="location = this.value;">
  									<option selected>Chon mục cần xem</option>
  									<option value="listUser?role=all&view=none">Tất cả tài khoản</option>
 									<option value="listUser?role=QL&view=none">Danh sách quản lý</option>
  									<option value="listUser?role=ND&view=none">Danh sách người dùng</option>
								</select>
								<c:if test="${action1 != 'deletelist' }">
									<div class="table-responsive">
										<c:if test="${role != null }">

											<table class="table">
												<thead>
													<tr>
														<th scope="col">Mã nhóm</th>
														<th scope="col">Tên nhóm</th>
														<th scope="col">Họ tên</th>
														<th scope="col">Id</th>
														<th scope="col">Tài khoản						
															<a href="listUser?role=${role}&view=increase"><i class="bi bi-sort-alpha-up"></i></a> &emsp; &emsp; 
															<a href="listUser?role=${role}&view=decrease"><i class="bi bi-sort-alpha-down-alt"></i></a>
														</th>
														<th scope="col" hidden>Mật khẩu</th>
														<th scope="col">Địa chỉ</th>
														<th scope="col">Email</th>
														<th scope="col">Điện thoại</th>
														<th scope="col">Tác vụ</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${user}" var="u">
														<tr>
															<td>${u.groupId}</td>
															<td>${u.groupName}</td>
															<td>${u.name}</td>
															<td>${u.id}</td>
															<td>${u.usr}</td>
															<td hidden>${u.pwd}</td>
															<td>${u.address}</td>
															<td>${u.mail}</td>
															<td>${u.phone}</td>
															<td><a href="editServlet?objectives=user&action=update&id=${u.id}&role=${u.groupId}"><button>Cập nhật</button></a>
																<a th data-id="${u.id}" th data-role="${u.groupId}" type="button" onclick="showConfirmModalDiaglog(this.getAttribute('data-id'),this.getAttribute('data-role'))"><button>Xóa</button></a>

															</td>

														</tr>
													</c:forEach>
												</tbody>
											</table>
											<div style="text-align: right; font-size: 100%; margin-right: 3.5%">
												<a href="editServlet?objectives=user&action=add"><button>Thêm mới</button></a> 
												<a href="editServlet?objectives=user&action=deletelist&role=${role}&index=1&view=${view}" type="button"><button>Xóa nhiều mục</button></a>
											</div>
											<div class="btn-box" style="text-align: center; ">
												<ul class="pagination">
													<c:if test="${tag>1}">
   													<li class="page-item"><a class="page-link" href="listUser?index=${tag-1}&role=${role}&view=${view}">Previous</a></li>
													</c:if>
													<c:forEach begin="1" end="${num}" var="i">
														<li class="page-item" ><a class="page-link" href="listUser?index=${i}&role=${role}&view=${view}">${i}</a></li>
													</c:forEach>
													<c:if test="${tag<num}">
													 <li class="page-item"><a class="page-link" href="listUser?index=${tag+1}&role=${role}&view=${view}">Next</a></li>
  													</c:if>
  												</ul>
											</div>
										</c:if>
									</div>
								</c:if>

								<c:if test="${action1 == 'search' }">
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th scope="col">GroupID</th>
													<th scope="col">GroupName</th>
													<th scope="col">Name</th>
													<th scope="col">Id</th>
													<th scope="col">Username</th>
													<th scope="col" hidden>Mật khẩu</th>
													<th scope="col">Address</th>
													<th scope="col">Email</th>
													<th scope="col">Phone</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${user}" var="u">
													<tr>
														<td>${u.groupId}</td>
														<td>${u.groupName}</td>
														<td>${u.name}</td>
														<td>${u.id}</td>
														<td>${u.usr}</td>
														<td hidden>${u.pwd}</td>	
														<td>${u.address}</td>
														<td>${u.mail}</td>
														<td>${u.phone}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<div class="btn-box" style="text-align: center;">
											<c:forEach begin="1" end="${num}" var="i">
												<a href="search?index=${i}&search=${save}">${i}</a>
											</c:forEach>
										</div>
									</div>

								</c:if>

								<div class="row alert alert-${alert} justify-content-center">${mess}</div>
								<c:if test="${action1 == 'deletelist' }">
									<form action="editServlet?objectives=user&action=deletelist" method="post">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th scope="col">Mã nhóm</th>
														<th scope="col">Tên nhóm</th>
														<th scope="col">Họ tên</th>
														<th scope="col">Id</th>
														<th scope="col">Tài khoản</th>
														<th scope="col" hidden>Mật khẩu</th>
														<th scope="col">Địa chỉ</th>
														<th scope="col">Email</th>
														<th scope="col">Số điện thoại</th>
														<th scope="col"><button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal1">DELETE</button></th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${user}" var="u">
														<tr>
															<td>${u.groupId}</td>
															<td>${u.groupName}</td>
															<td>${u.name}</td>
															<td>${u.id}</td>
															<td >${u.usr}</td>
															<td hidden>${u.pwd}</td>
															<td>${u.address}</td>
															<td>${u.mail}</td>
															<td>${u.phone}</td>

															<td><input type="checkbox" name="userNames" value="${u.usr}"></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>

											<div class="btn-box" style="text-align: center;">
												<c:forEach begin="1" end="${num}" var="i">
													<a href="editServlet?objectives=user&action=deletelist&role=${role}&index=${i}&view=${view}">${i}</a>
												</c:forEach>
											</div>


										</div>
										<!-- Modal -->
										<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-body">Do you want to delete</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
														<button type="submit" class="btn btn-primary">Delete</button>
													</div>
												</div>
											</div>
										</div>
									</form>
								</c:if>
								<script>
									function showConfirmModalDiaglog(id, role) {
										$('#yesOption').attr(
												'href',
												'editServlet?objectives=user&action=delete&id='
														+ id + '&role=' + role);
										$('#confirmationId').modal('show');
									}

									function hideConfirmModalDiaglog() {
										$('#confirmationId').modal('hide');
									}
								</script>
								<!-- Modal -->
								<div class="modal fade" id="confirmationId" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalLabel"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">Confirmation</h5>
											</div>
											<div class="modal-body">Bạn có chắc chắn muốn xóa???</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal" onclick="hideConfirmModalDiaglog()">Không</button>
												<a id="yesOption" type="button" class="btn btn-secondary">Có</a>
											</div>
										</div>
									</div>
								</div>

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