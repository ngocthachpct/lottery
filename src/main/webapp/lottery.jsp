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
<title>LOTTERY MANAGER</title>
<link rel="canonical" href="https://www.wrappixel.com/templates/niceadmin-lite/" />
<link rel="icon" type="image/png" sizes="16x16" href="admin/assets/images/favicon.png">
<link href="admin/dist/css/style.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>

<body>
	<c:if test="${check == 'y'}">
		<script>
			alert("${alert}");
		</script>
	</c:if>
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
							<a class="sidebar-link waves-effect waves-dark sidebar-link" href="inforUser?username=${name}" aria-expanded="false"> 
								<i class="mdi mdi-account-network"></i> <span class="hide-menu">Th??ng tin t??i kho???n</span>
							</a>
						</li>
						<c:if test="${sessionScope.userSession.groupId =='QL'}">
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="listUser?role=all&view=none" aria-expanded="false">
                                <i class="mdi mdi-border-none"></i>
                                <span class="hide-menu">Qu???n l?? ng?????i d??ng</span>
                            </a>
                        </li>
                       
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="lottery.jsp" aria-expanded="false">
                                <i class="mdi mdi-border-none"></i>
                                <span class="hide-menu">Qu???n l?? v?? s???</span>
                            </a>
                        </li>
                         </c:if>
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
						<h4 class="page-title">Qu???n l?? v?? s???</h4>
					</div>
					<div class="col-7 align-self-center">
						<div class="d-flex align-items-center justify-content-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Trang ch???</a></li>
									<li class="breadcrumb-item active" aria-current="page">Qu???n l?? v?? s???</li>
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
								<select class="form-select form-select-lg mb-3" name="forma" onchange="location = this.value;">
  									<option selected>Ch???n m???c c???n xem</option>
  									<option value="listLottery?objectives=lotterytype&view=none&action=none">Lo???i v?? s???</option>
 									<option value="listLottery?objectives=prizeopening&view=none&action=none">L???ch m??? th?????ng</option>
  									<option value="listLottery?objectives=prize&view=none&action=none">Gi???i th?????ng</option>
  									<option value="listLottery?objectives=result&view=none&action=none">K???t qu???</option>
  									<option value="fast-add.jsp">Th??m m???i nhanh</option>
								</select>
								<c:if test="${action1 != 'deletelist' }">
									<c:if test="${objectives == 'lotterytype'}">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th scope="col">M?? lo???i
															<a href="listLottery?objectives=lotterytype&action=none&view=increase">
																<i class="bi bi-sort-alpha-up"></i>
															</a> &emsp; &emsp; 
															<a href="listLottery?objectives=lotterytype&action=none&view=decrease">
																<i class="bi bi-sort-alpha-down-alt"></i>
															</a>
														</th>
														<th scope="col">T??n lo???i</th>
														<th scope="col">T???nh th??nh</th>
														<th scope="col">Gi??</th>
														<th scope="col">S??? ch??? s???</th>
														<th scope="col">T???ng s??? l???n quay</th>
														<th scope="col">Ng??y ph??t h??nh</th>
														<th scope="col">Ng??y k???t th??c</th>
														<th scope="col">T??c v???</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${target}" var="u">
														<tr>
															<td>${u.id}</td>
															<td>${u.typeName}</td>
															<td>${u.province}</td>
															<td>${u.price}</td>
															<td>${u.numberDigits}</td>
															<td>${u.totalSpins}</td>
															<td>${u.dateStart}</td>
															<td>${u.dateEnd}</td>
															<td><a href="editServlet?objectives=lotterytype&action=update&id=${u.id}"><button>C???p nh???t</button></a>
																<a th data-id="${u.id}" onclick="showConfirmModalDiaglog(this.getAttribute('data-id'),'lotterytype')"><button>X??a</button></a>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<div style="text-align: right; font-size: 100%; margin-right: 1%" >
												<a href="editServlet?objectives=lotterytype&action=add"><button>Th??m m???i lo???i v?? s???</button></a> 
												<a href="editServlet?objectives=lotterytype&action=deletelist&index=1&view=${view}" type="button"><button>X??a nhi???u m???c</button></a>
											</div>
											<div class="btn-box" style="text-align: center;">
												<ul class="pagination">
													<c:if test="${tag>1}">
   													<li class="page-item"><a class="page-link" href="listLottery?index=${tag-1}&objectives=${objectives}&action=none&view=${view}">Previous</a></li>
													</c:if>
													<c:forEach begin="1" end="${num}" var="i">
													<li class="page-item" ><a class="page-link" href="listLottery?index=${i}&objectives=${objectives}&action=none&view=${view}">${i}</a></li>
													</c:forEach>
													<c:if test="${tag<num}">
													 <li class="page-item"><a class="page-link" href="listLottery?index=${tag+1}&objectives=${objectives}&action=none&view=${view}">Next</a></li>
  													</c:if>
  												</ul>
											</div>
										</div>
									</c:if>

									<c:if test="${objectives == 'prizeopening'}">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th scope="col">M?? m??? th?????ng</th>
														<th scope="col">Ng??y</th>
														<th scope="col">Gi???</th>
														<th scope="col">T??n lo???i</th>
														<th scope="col">T???nh th??nh
															<a href="listLottery?objectives=prizeopening&action=none&view=increase">
																<i class="bi bi-sort-alpha-up"></i>
															</a> &emsp; &emsp; 
															<a href="listLottery?objectives=prizeopening&action=none&view=decrease">
																<i class="bi bi-sort-alpha-down-alt"></i>
															</a>
														</th>
														<th scope="col">Gi??</th>
														<th scope="col">Ng??y ph??t h??nh</th>
														<th scope="col">T??c v???</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${target}" var="u">
														<tr>
															<td>${u.poId}</td>
															<td>${u.date}</td>
															<td>${u.time}</td>
															<td>${u.typeName}</td>
															<td>${u.province}</td>
															<td>${u.price}</td>
															<td>${u.dateStart}</td>
															<td><a href="editServlet?objectives=prizeopening&action=update&id=${u.poId}"><button>C???p nh???t</button></a>
																<a th data-id="${u.poId}" onclick="showConfirmModalDiaglog(this.getAttribute('data-id'),'prizeopening')"><button>X??a</button></a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<div style="text-align: right; font-size: 100%; margin-right: 2%" >
												<a href="editServlet?objectives=prizeopening&action=add"><button>Th??m m???i l???ch m??? th?????ng</button></a> 
												<a href="editServlet?objectives=prizeopening&action=deletelist&index=1&view=${view}" type="button"><button>X??a nhi???u m???c</button></a>

											</div>
											<div class="btn-box" style="text-align: center;">
												<ul class="pagination">			
													<c:if test="${tag>1}">
   													<li class="page-item"><a class="page-link" href="listLottery?index=${tag-1}&objectives=${objectives}&action=none&view=${view}">Previous</a></li>
													</c:if>
													<c:forEach begin="1" end="${num}" var="i">
													<li class="page-item" ><a class="page-link" href="listLottery?index=${i}&objectives=${objectives}&action=none&view=${view}">${i}</a></li>
													</c:forEach>
													<c:if test="${tag<num}">
													<li class="page-item"><a class="page-link" href="listLottery?index=${tag+1}&objectives=${objectives}&action=none&view=${view}">Next</a></li>
  													</c:if>
  												</ul>
											</div>
										</div>
									</c:if>

									<c:if test="${objectives == 'prize'}">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th scope="col">M?? gi???i th?????ng</th>
														<th scope="col">T??n gi???i th?????ng</th>
														<th scope="col">T??n lo???i x??? s???
															<a href="listLottery?objectives=prize&action=none&view=increase">
																<i class="bi bi-sort-alpha-up"></i>
															</a> &emsp; &emsp; 
															<a href="listLottery?objectives=prize&action=none&view=decrease">
																<i class="bi bi-sort-alpha-down-alt"></i>
															</a>
														</th>
														<th scope="col">Gi??</th>
														<th scope="col">Ng??y t???o</th>
														<th scope="col">Gi?? tr??? gi???i th?????ng</th>
														<th scope="col">S??? ch??? s???</th>
														<th scope="col">S??? l???n quay</th>
														<th scope="col">T??c v???</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${target}" var="u">
														<tr>
															<td>${u.prizeId}</td>
															<td>${u.prizeName}</td>
															<td>${u.typeName}</td>
															<td>${u.price}</td>
															<td>${u.createDate}</td>
															<td>${u.prizeValue}</td>
															<td>${u.numberDigits}</td>
															<td>${u.totalSpins}</td>
															<td><a href="editServlet?objectives=prize&action=update&id=${u.prizeId}"><button>C???p nh???t</button></a>
																<a th data-id="${u.prizeId}" onclick="showConfirmModalDiaglog(this.getAttribute('data-id'))"><button>X??a</button></a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<div style="text-align: right; font-size: 100%; margin-right: 1%" >
												<a href="editServlet?objectives=prize&action=add"><button>Th??m m???i gi???i th?????ng</button></a> 
												<a href="editServlet?objectives=prize&action=deletelist&index=1&view=${view}" type="button"><button>X??a nhi???u m???c</button></a>
											</div>
											<div class="btn-box" style="text-align: center;">
												<ul class="pagination">
													<c:if test="${tag>1}">
   													<li class="page-item"><a class="page-link" href="listLottery?index=${tag-1}&objectives=${objectives}&action=none&view=${view}">Previous</a></li>
													</c:if>
													<c:forEach begin="1" end="${num}" var="i">
													<li class="page-item" ><a class="page-link" href="listLottery?index=${i}&objectives=${objectives}&action=none&view=${view}">${i}</a></li>
													</c:forEach>
													<c:if test="${tag<num}">
													<li class="page-item"><a class="page-link" href="listLottery?index=${tag+1}&objectives=${objectives}&action=none&view=${view}">Next</a></li>
  													</c:if>
  												</ul>	
											</div>
										</div>
									</c:if>
									<c:if test="${objectives == 'result'}">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th scope="col">T??n lo???i</th>
														<th scope="col">T???nh th??nh
															<a href="listLottery?objectives=result&action=none&view=increase">
																<i class="bi bi-sort-alpha-up"></i>
															</a> &emsp; &emsp; 
															<a href="listLottery?objectives=result&action=none&view=decrease">
																<i class="bi bi-sort-alpha-down-alt"></i>
															</a>
														</th>
														
														<th scope="col">T??n gi???i</th>
														<th scope="col">Ng??y quay th?????ng</th>
														<th scope="col">L???n quay</th>
														<th scope="col">K???t qu???</th>
														<th scope="col">T??c v???</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${target}" var="u">
														<tr>
															<td>${u.typeName}</td>
															<td>${u.province}</td>										
															<td>${u.prizeName}</td>
															<td>${u.openDate}</td>	
															<td>${u.turn}</td>
															<td>${u.result}</td>
															<td><a href="editServlet?objectives=result&action=update&id=${u.id}"><button>C???p nh???t</button></a>
																<a th data-id="${u.id}" onclick="showConfirmModalDiaglog(this.getAttribute('data-id'),'result')"><button>X??a</button></a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<div style="text-align: right; font-size: 100%; margin-right: 5%" >
												<a href="editServlet?objectives=result&action=add"><button>Th??m m???i k???t qu???</button></a> 
												<a href="editServlet?objectives=result&action=deletelist&index=1&view=${view}" type="button"><button>X??a nhi???u m???c</button></a>
											</div>
											<div class="btn-box" style="text-align: center;">
												<ul class="pagination">
													<c:if test="${tag>1}">
   													<li class="page-item"><a class="page-link" href="listLottery?index=${tag-1}&objectives=${objectives}&action=none&view=${view}">Previous</a></li>
													</c:if>
													<c:forEach begin="1" end="${num}" var="i">
													<c:if test="${i<5 || i>num-2 }">
													<li class="page-item" ><a class="page-link" href="listLottery?index=${i}&objectives=${objectives}&action=none&view=${view}">${i}</a></li>
													</c:if>
													</c:forEach>
													<c:if test="${tag<num}">
													<li class="page-item"><a class="page-link" href="listLottery?index=${tag+1}&objectives=${objectives}&action=none&view=${view}">Next</a></li>
  													</c:if>
  												</ul>	
											</div>
										</div>
									</c:if>
								</c:if>
								<c:if test="${action1 == 'deletelist' }">
									<c:if test="${objectives == 'lotterytype'}">
										<form action="editServlet?objectives=lotterytype&action=deletelist" method="post">
											<div class="table-responsive">
												<table class="table">
													<thead>
														<tr>
															<th scope="col">M?? lo???i</th>
															<th scope="col">T??n lo???i</th>
															<th scope="col">T???nh th??nh</th>
															<th scope="col">Gi?? v??</th>
															<th scope="col">S??? ch??? s???</th>
															<th scope="col">T???ng l???n quay</th>
															<th scope="col">Ng??y ph??t h??nh
																<div>
															<a href="listLottery?objectives=lotterytype&action=deletelist&view=increase">
																<i class="bi bi-sort-alpha-up"></i>
															</a> &emsp; &emsp; 
															<a href="listLottery?objectives=lotterytype&action=deletelist&view=decrease">
																<i class="bi bi-sort-alpha-down-alt"></i>
															</a>
														</div>	
															</th>
															<th scope="col">Ng??y k???t th??c</th>
															<th scope="col"><button type="button"
																data-bs-toggle="modal" data-bs-target="#exampleModal2">X??a</button></th></th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${target}" var="u">
															<tr>
																<td>${u.id}</td>
																<td>${u.typeName}</td>
																<td>${u.province}</td>
																<td>${u.price}</td>
																<td>${u.numberDigits}</td>
																<td>${u.totalSpins}</td>
																<td>${u.dateStart}</td>
																<td>${u.dateEnd}</td>
																<td><input type="checkbox" name="userNames"
															value="${u.id}"></td>
															</tr>

														</c:forEach>
													</tbody>
												</table>
												<div class="btn-box" style="text-align: center;">
													<ul class="pagination">
														<c:if test="${tag>1}">
   														<li class="page-item"><a class="page-link" href="editServlet?objectives=lotterytype&action=deletelist&index=${tag-1}&view=${view}">Previous</a></li>
														</c:if>
														<c:forEach begin="1" end="${num}" var="i">
														<li class="page-item" ><a class="page-link" href="editServlet?objectives=lotterytype&action=deletelist&index=${i}&view=${view}">${i}</a></li>
														</c:forEach>
														<c:if test="${tag<num}">
														<li class="page-item"><a class="page-link" href="editServlet?objectives=lotterytype&action=deletelist&index=${tag+1}&view=${view}">Next</a></li>
  														</c:if>
  													</ul>
												</div>
											</div>
											<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-body">B???n mu???n x??a?</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">????ng</button>
															<button type="submit" class="btn btn-primary">X??a</button>
														</div>
													</div>
												</div>
											</div>
										</form>
									</c:if>
									<c:if test="${objectives == 'prizeopening'}">
										<form action="editServlet?objectives=prizeopening&action=deletelist" method="post">
											<div class="table-responsive">
												<table class="table">
													<thead>
														<tr>
															<th scope="col">M?? m??? th?????ng</th>
															<th scope="col">Ng??y</th>
															<th scope="col">Gi???</th>
															<th scope="col">T??n lo???i</th>
															<th scope="col">T???nh th??nh</th>
															<th scope="col">Gi?? v??</th>
															<th scope="col">Ng??y ph??t h??nh
																<div>
															<a href="listLottery?objectives=prizeopening&action=deletelist&view=increase">
																<i class="bi bi-sort-alpha-up"></i>
															</a> &emsp; &emsp; 
															<a href="listLottery?objectives=prizeopening&action=deletelist&view=decrease">
																<i class="bi bi-sort-alpha-down-alt"></i>
															</a>
														</div>
															</th>
															<th scope="col"><button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal3">X??a</button></th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${target}" var="u">
															<tr>
																<td>${u.poId}</td>
																<td>${u.date}</td>
																<td>${u.time}</td>
																<td>${u.typeName}</td>
																<td>${u.province}</td>
																<td>${u.price}</td>
																<td>${u.dateStart}</td>
																<td><input type="checkbox" name="userNames"
															value="${u.poId}"></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
												<div class="btn-box" style="text-align: center;">
													<ul class="pagination">
														<c:if test="${tag>1}">
   														<li class="page-item"><a class="page-link" href="editServlet?objectives=prizeopening&action=deletelist&index=${tag-1}&view=${view}">Previous</a></li>
														</c:if>
														<c:forEach begin="1" end="${num}" var="i">
														<li class="page-item" ><a class="page-link" href="editServlet?objectives=prizeopening&action=deletelist&index=${i}&view=${view}">${i}</a></li>
														</c:forEach>
														<c:if test="${tag<num}">
														<li class="page-item"><a class="page-link" href="editServlet?objectives=prizeopening&action=deletelist&index=${tag+1}&view=${view}">Next</a></li>
  														</c:if>
  													</ul>
												</div>
											</div>
											<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-body">B???n mu???n x??a???</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">????ng</button>
															<button type="submit" class="btn btn-primary">X??a</button>
														</div>
													</div>
												</div>
											</div>
										</form>
									</c:if>
									<c:if test="${objectives == 'prize'}">
										<form action="editServlet?objectives=prize&action=deletelist" method="post">
											<div class="table-responsive">
												<table class="table">
													<thead>
														<tr>
															<th scope="col">M?? gi??? th?????ng</th>
															<th scope="col">T??n gi???i</th>
															<th scope="col">T??n lo???i</th>
															<th scope="col">Gi?? v??</th>
															<th scope="col">Ng??y t???o gi???i
																<div>
															<a href="listLottery?objectives=prize&action=deletelist&view=increase">
																<i class="bi bi-sort-alpha-up"></i>
															</a> &emsp; &emsp; 
															<a href="listLottery?objectives=prize&action=deletelist&view=decrease">
																<i class="bi bi-sort-alpha-down-alt"></i>
															</a>
														</div>
															</th>
															<th scope="col">Gi?? tr??? gi???i</th>
															<th scope="col">S??? ch??? s???</th>
															<th scope="col">S??? l???n quay</th>
															<th scope="col"><button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal4">X??a</button></th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${target}" var="u">
															<tr>
																<td>${u.prizeId}</td>
																<td>${u.prizeName}</td>
																<td>${u.typeName}</td>
																<td>${u.price}</td>
																<td>${u.createDate}</td>
																<td>${u.prizeValue}</td>
																<td>${u.numberDigits}</td>
																<td>${u.totalSpins}</td>
																<td><input type="checkbox" name="userNames"
															value="${u.prizeId}"></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
												<div class="btn-box" style="text-align: center;">
													<ul class="pagination">
														<c:if test="${tag>1}">
   														<li class="page-item"><a class="page-link" href="editServlet?objectives=prize&action=deletelist&index=${tag-1}&view=${view}">Previous</a></li>
														</c:if>
														<c:forEach begin="1" end="${num}" var="i">
														<li class="page-item" ><a class="page-link" href="editServlet?objectives=prize&action=deletelist&index=${i}&view=${view}">${i}</a></li>
														</c:forEach>
														<c:if test="${tag<num}">
														<li class="page-item"><a class="page-link" href="editServlet?objectives=prize&action=deletelist&index=${tag+1}&view=${view}">Next</a></li>
  														</c:if>
  													</ul>
												</div>
											</div>
											<div class="modal fade" id="exampleModal4" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-body">B???n c?? mu???n x??a???</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">????ng</button>
															<button type="submit" class="btn btn-primary">X??a</button>
														</div>
													</div>
												</div>
											</div>
										</form>
									</c:if>
									<c:if test="${objectives == 'result'}">
										<form action="editServlet?objectives=result&action=deletelist" method="post">
											<div class="table-responsive">
												<table class="table">
													<thead>
														<tr>
															<th scope="col">T??n lo???i</th>
															<th scope="col">T???nh th??nh</th>
															<th scope="col">T??n gi???i</th>
															<th scope="col">Ng??y quay th?????ng
																<a href="listLottery?objectives=result&action=deletelist&view=increase">
																	<i class="bi bi-sort-alpha-up"></i>
																</a> &emsp; &emsp; 
																<a href="listLottery?objectives=result&action=deletelist&view=decrease">
																	<i class="bi bi-sort-alpha-down-alt"></i>
																</a>
															</th>
															<th scope="col">L???n</th>
															<th scope="col">K???t qu???</th>
															<th scope="col"><button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal5">X??a</button></th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${target}" var="u">
															<tr>
																<td>${u.typeName}</td>
																<td>${u.province}</td>
																<td>${u.prizeName}</td>
																<td>${u.openDate}</td>
																<td>${u.turn}</td>
																<td>${u.result}</td>
																<td><input type="checkbox" name="userNames" value="${u.id}"></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
												<div class="btn-box" style="text-align: center;">
													<ul class="pagination">
														<c:if test="${tag>1}">
   														<li class="page-item"><a class="page-link" href="editServlet?objectives=result&action=deletelist&index=${tag-1}&view=${view}">Previous</a></li>
														</c:if>
														<c:forEach begin="1" end="${num}" var="i">	
														<c:if test="${i<5 || i>num-2 }"	>			
															<li class="page-item" ><a class="page-link" href="editServlet?objectives=result&action=deletelist&index=${i}&view=${view}">${i}</a></li>
														</c:if>
														</c:forEach>
														<c:if test="${tag<num}">
														<li class="page-item"><a class="page-link" href="editServlet?objectives=result&action=deletelist&index=${tag+1}&view=${view}">Next</a></li>
  														</c:if>
  													</ul>
												</div>
											</div>
											<div class="modal fade" id="exampleModal5" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-body">B???n c?? mu???n x??a???</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">????ng</button>
															<button type="submit" class="btn btn-primary">X??a</button>
														</div>
													</div>
												</div>
											</div>
										</form>
									</c:if>
								</c:if>
								<script>
									function showConfirmModalDiaglog(id,
											objectives) {
										$('#yesOption').attr(
												'href',
												'editServlet?objectives='
														+ objectives
														+ '&action=delete&id='
														+ id);
										$('#confirmationId').modal('show');
									}

									function hideConfirmModalDiaglog() {
										$('#confirmationId').modal('hide');
									}
								</script>
								<!-- Modal -->
								<div class="modal fade" id="confirmationId" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-body">B???n c?? ch???c ch???n mu???n x??a???</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="hideConfirmModalDiaglog()">Kh??ng</button>
												<a id="yesOption" type="button" class="btn btn-secondary">C??</a>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>

</html>