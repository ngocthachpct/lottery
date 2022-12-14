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
					<c:set scope="page" var="action" value="${action}"></c:set>
					<c:if test="${action == 'update'}">
						<div class="col-5 align-self-center">
							<h4 class="page-title">
								C???p nh???t
								<c:if test="${objectives =='lotterytype'}"><c:out value="Lo???i X??? S???" /></c:if>
								<c:if test="${objectives =='prizeopening'}"><c:out value="L???ch M??? Th?????ng" /></c:if>
								<c:if test="${objectives =='prize'}"><c:out value="Gi???i Th?????ng" /></c:if>
								<c:if test="${objectives =='result'}"><c:out value="K???t Qu???" /></c:if>
							</h4>
						</div>
					</c:if>
					<c:if test="${action == 'add'}">
						<div class="col-5 align-self-center">
							<h4 class="page-title">
								Th??m m???i
								<c:if test="${objectives =='lotterytype'}"><c:out value="Lo???i X??? S???" /></c:if>
								<c:if test="${objectives =='prizeopening'}"><c:out value="L???ch M??? Th?????ng" /></c:if>
								<c:if test="${objectives =='prize'}"><c:out value="Gi???i Th?????ng" /></c:if>
								<c:if test="${objectives =='result'}"><c:out value="K???t Qu???" /></c:if>
							</h4>
						</div>
					</c:if>
					<div class="alert alert-${style}" role="alert">
  						${alert}
					</div>
					
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<c:set scope="page" var="objectives" value="${objectives}"></c:set>
								<c:if test="${objectives == 'user'}">
									<div>
										<div>
											<c:if test="${action=='update' }">
												<form action="editServlet?objectives=user&action=${action}&id=${old.id}&role=${old.groupId}" method="post">
											</c:if>
											<c:if test="${action=='add' }">
												<form action="add?objectives=${objectives}" method="post">
											</c:if>
											<div style="text-align: center; color: red;" class="alert"> ${warning}</div>
											<div class="mb-3 mt-3">
												<label>M?? nh??m:</label> 
												<select name="groupId" id="input" class="form-control"  >
													<option ${old.groupId=="ND"?"selected":""} value="ND">ND</option>
													<option ${old.groupId=="QL"?"selected":""} value="QL">QL</option>		
												</select>
											</div>
											<div class="mb-3">
												<label>T??n Nh??m:</label>
												<select name="groupName" id="input" class="form-control"  >
													<option ${old.groupName=="NGUOIDUNG"?"selected":""} value="NGUOIDUNG">NGUOIDUNG</option>
													<option ${old.groupName=="QUANLY"?"selected":""} value="QUANLY">QUANLY</option>		
												</select>
											</div>
											<c:if test="${action == 'edit'}">
											<div class="mb-3">
												<label>ID: </label> <input class="form-control" name="id" value="${old.id}" readonly>
											</div>
											</c:if>
											<div class="mb-3">
												<label>H??? t??n:</label> <input class="form-control" name="name" value="${old.name}">
											</div>
											<div class="mb-3">
												<label>T??i kho???n:</label> <input class="form-control" name="usr" value="${old.usr}">
											</div>
											<div class="mb-3">
												<label>M???t kh???u:</label> <input class="form-control" type="password" name="pwd" value="${old.pwd}">
											</div>
											<c:if test="${action=='add' }">
												<div class="mb-3">
													<label>X??c nh???n l???i:</label> <input class="form-control" name="repass" type="password">
												</div>
											</c:if>
											<div class="mb-3">
												<label>?????a ch???:</label> <input class="form-control" name="address" value="${old.address}">
											</div>
											<div class="mb-3">
												<label>Mail:</label> <input class="form-control" name="mail" type="email" value="${old.mail}">
											</div>
											<div class="mb-3">
												<label>S??? ??i???n tho???i:</label> <input class="form-control" type="number" name="phone" value="${old.phone}">
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
															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">Close</button>
															<button type="submit" class="btn btn-primary">?????ng ??</button>
														</div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</c:if>

							<c:if test="${objectives == 'lotterytype'}">
								<div>
									<div>
										<c:if test="${action=='update' }">
											<form action="editServlet?objectives=lotterytype&action=${action}&id=${old.id}" method="post">
											</c:if>
											<c:if test="${action=='add' }">
												<form action="add?objectives=${objectives}" method="post">
											</c:if>
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
															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">Close</button>
															<button type="submit" class="btn btn-primary">?????ng ??</button>
														</div>
													</div>
												</div>
											</div>
											</form>
										</div>
									</div>
								</c:if>
								<c:if test="${objectives == 'prizeopening'}">
									<div>
										<div>
											<c:if test="${action=='update' }">
												<form action="editServlet?objectives=prizeopening&action=${action}&id=${old.poId}" method="post">
											</c:if>
											<c:if test="${action=='add' }">
												<form action="add?objectives=${objectives}" method="post">
											</c:if>
											<div class="mb-3 mt-3">
												<label>Ng??y m??? th?????ng :</label> <input class="form-control" name="date" value="${old.date}">
											</div>
											<div class="mb-3">
												<label>Gi??? m??? th?????ng:</label> <input class="form-control" name="time"  value="${old.time}">
											</div>
											<div class="mb-3">
												<label>T??n lo???i:</label>
												<select name="typename" id="input" class="form-control"  >
													<option ${old.typeName=="KI???N THI???T MI???N B???C"?"selected":""} value="KI???N THI???T MI???N B???C">KI???N THI???T MI???N B???C</option>
													<option ${old.typeName=="KI???N THI???T MI???N TRUNG"?"selected":""} value="KI???N THI???T MI???N TRUNG">KI???N THI???T MI???N TRUNG</option>
													<option ${old.typeName=="KI???N THI???T MI???N NAM"?"selected":""} value="KI???N THI???T MI???N NAM">KI???N THI???T MI???N NAM</option>
												</select>
											</div>
											<div class="mb-3">
												<label>T???nh th??nh:</label>
												<select name="province" id="input" class="form-control"  >
													<option ${old.province=="H??? CH?? MINH"?"selected":""} value="H??? CH?? MINH">H??? CH?? MINH</option>
													<option ${old.province=="V??NG T??U"?"selected":""} value="V??NG T??U">V??NG T??U</option>
													<option ${old.province=="?????C L???C"?"selected":""} value="?????C L???C">?????C L???C</option>
													<option ${old.province=="QU???NG NAM"?"selected":""} value="QU???NG NAM">QU???NG NAM</option>
													<option ${old.province=="H?? N???I"?"selected":""} value="H?? N???I">H?? N???I</option>
													<option ${old.province=="?????NG TH??P"?"selected":""} value="?????NG TH??P">?????NG TH??P</option>
												</select>
											</div>
											<div class="mb-3">
												<label>Gi?? v??:</label> <input class="form-control" type="number" name="price" value="${old.price}">
											</div>
											<div class="mb-3">
												<label>Ng??y ph??t h??nh :</label> <input class="form-control" name="issue" value="${old.dateStart}">
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
															<div class="modal-body">B???n mu???n c???p nh??t?</div>
														</c:if>
														<c:if test="${action=='add' }">
															<div class="modal-body">B???n mu???n t???o m???i?</div>
														</c:if>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">Close</button>
															<button type="submit" class="btn btn-primary">?????ng ??</button>
														</div>
													</div>
												</div>
											</div>
											</form>
										</div>
									</div>
								</c:if>
								<c:if test="${objectives == 'prize'}">
									<div>
										<div>
											<c:if test="${action=='update' }">
												<form action="editServlet?objectives=prize&action=${action}&id=${old.prizeId}" method="post">
											</c:if>
											<c:if test="${action=='add' }">
												<form action="add?objectives=${objectives} method="post">
											</c:if>
											<div class="mb-3 mt-3">
												<label>T??n gi???i th?????ng:</label>
												<select name="prizeName" id="input" class="form-control"  >
													<option ${old.prizeName=="GI???I ?????C BI???T"?"selected":""} value="GI???I ?????C BI???T">GI???I ?????C BI???T</option>
													<option ${old.prizeName=="GI???I NH???T"?"selected":""} value="GI???I NH???T">GI???I NH???T</option>
													<option ${old.prizeName=="GI???I NH??"?"selected":""} value="GI???I NH??">GI???I NH??</option>
													<option ${old.prizeName=="GI???I BA"?"selected":""} value="GI???I BA">GI???I BA</option>
													<option ${old.prizeName=="GI???I T??"?"selected":""} value="GI???I T??">GI???I T??</option>
													<option ${old.prizeName=="GI???I N??M"?"selected":""} value="GI???I N??M">GI???I N??M</option>
													<option ${old.prizeName=="GI???I S??U"?"selected":""} value="GI???I S??U">GI???I S??U</option>
													<option ${old.prizeName=="GI???I B???Y"?"selected":""} value="GI???I B???Y">GI???I B???Y</option>
												</select>
											</div>
											<div class="mb-3">
												<label>T??n lo???i:</label>
												<select name="typename" id="input" class="form-control"  >
													<option ${old.typeName=="KI???N THI???T MI???N B???C"?"selected":""} value="KI???N THI???T MI???N B???C">KI???N THI???T MI???N B???C</option>
													<option ${old.typeName=="KI???N THI???T MI???N TRUNG"?"selected":""} value="KI???N THI???T MI???N TRUNG">KI???N THI???T MI???N TRUNG</option>
													<option ${old.typeName=="KI???N THI???T MI???N NAM"?"selected":""} value="KI???N THI???T MI???N NAM">KI???N THI???T MI???N NAM</option>
												</select>
											</div>		
											<div class="mb-3">
												<label>Gi?? v??:</label> <input class="form-control" type="number" name="price" value="${old.price}">
											</div>
											<c:if test="${action == 'update'}">
											<div class="mb-3">
												<label>Ng??y t???o gi???i:</label> <input class="form-control" name="issue" value="${old.createDate}">
											</div>
											</c:if>
											<div class="mb-3">
												<label>Ti???n th?????ng:</label> <input class="form-control" type="number" name="value" value="${old.prizeValue}">
											</div>
											<div class="mb-3">
												<label>S??? ch??? s???:</label> <input class="form-control" type="number" name="number" value="${old.numberDigits}">
											</div>
											<div class="mb-3">
												<label>S??? l???n quay:</label> <input class="form-control" type="number" name="spin" value="${old.totalSpins}">
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
															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">Close</button>
															<button type="submit" class="btn btn-primary">?????ng ??</button>
														</div>
													</div>
												</div>
											</div>
											</form>
										</div>
									</div>
								</c:if>
								<c:if test="${objectives == 'result'}">
									<div>
										<div>
											<c:if test="${action=='update' }">
												<form action="editServlet?objectives=result&action=update&id=${old.id}" method="post">
											</c:if>
											<c:if test="${action=='add' }">
												<form action="add?objectives=${objectives}" method="post">
											</c:if>
											<div class="mb-3">
												<label>T??n lo???i:</label>
												<select name="typename" id="input" class="form-control"  >
													<option ${old.typeName=="KI???N THI???T MI???N NAM"?"selected":""} value="KI???N THI???T MI???N NAM">KI???N THI???T MI???N NAM</option>
													<option ${old.typeName=="KI???N THI???T MI???N B???C"?"selected":""} value="KI???N THI???T MI???N B???C">KI???N THI???T MI???N B???C</option>
													<option ${old.typeName=="KI???N THI???T MI???N TRUNG"?"selected":""} value="KI???N THI???T MI???N TRUNG">KI???N THI???T MI???N TRUNG</option>
												</select>
											</div>	
											<div class="mb-3">
												<label>T???nh th??nh:</label>
												<select name="province" id="input" class="form-control"  >
													<option ${old.province=="H??? CH?? MINH"?"selected":""} value="H??? CH?? MINH">H??? CH?? MINH</option>
													<option ${old.province=="V??NG T??U"?"selected":""} value="V??NG T??U">V??NG T??U</option>
													<option ${old.province=="?????C L???C"?"selected":""} value="?????C L???C">?????C L???C</option>
													<option ${old.province=="QU???NG NAM"?"selected":""} value="QU???NG NAM">QU???NG NAM</option>
													<option ${old.province=="H?? N???I"?"selected":""} value="H?? N???I">H?? N???I</option>
													<option ${old.province=="?????NG TH??P"?"selected":""} value="?????NG TH??P">?????NG TH??P</option>
												</select>
											</div>
											<div class="mb-3">
												<label>Ng??y m??? th?????ng:</label> <input class="form-control" name="issue" value="${old.openDate}">
											</div>
											<c:if test="${action=='update' }">
											<div class="mb-3">
												<label>T??n gi???i:</label>
												<select name="prizeName" id="input" class="form-control"  >
													<option ${old.prizeName=="GI???I ?????C BI???T"?"selected":""} value="GI???I ?????C BI???T">GI???I ?????C BI???T</option>
													<option ${old.prizeName=="GI???I NH???T"?"selected":""} value="GI???I NH???T">GI???I NH???T</option>
													<option ${old.prizeName=="GI???I NH??"?"selected":""} value="GI???I NH??">GI???I NH??</option>
													<option ${old.prizeName=="GI???I BA"?"selected":""} value="GI???I BA">GI???I BA</option>
													<option ${old.prizeName=="GI???I T??"?"selected":""} value="GI???I T??">GI???I T??</option>
													<option ${old.prizeName=="GI???I N??M"?"selected":""} value="GI???I N??M">GI???I N??M</option>
													<option ${old.prizeName=="GI???I S??U"?"selected":""} value="GI???I S??U">GI???I S??U</option>
													<option ${old.prizeName=="GI???I B???Y"?"selected":""} value="GI???I B???Y">GI???I B???Y</option>
												</select>
											</div>
											</c:if>
											<c:if test="${action=='add' }">
											<div class="mb-3 mt-3">
												<label>Gi???i ?????c bi???t:</label>
													<input class="form-control" name="special" type="number" placeholder="6 s???">
												<label>Gi???i nh???t :</label>
													<input class="form-control" name="firt" type="number" placeholder="5 s???">
												<label>Gi???i nh??:</label>
													<input class="form-control" name="second1" type="number" placeholder="5 s???">
													<input class="form-control" name="second1" type="number" placeholder="5 s???">
												<label>Gi???i ba:</label> 
													<input class="form-control" name="third1" type="number" placeholder="5 s???">
													<input class="form-control" name="third2" type="number" placeholder="5 s???">
													<input class="form-control" name="third3" type="number" placeholder="5 s???">
													<input class="form-control" name="third4" type="number" placeholder="5 s???">
													<input class="form-control" name="third5" type="number" placeholder="5 s???">
													<input class="form-control" name="third6" type="number" placeholder="5 s???">
												<label>Gi???i t??:</label> 
													<input class="form-control" name="fourth1" type="number" placeholder="4 s???">
													<input class="form-control" name="fourth2" type="number" placeholder="4 s???" >
													<input class="form-control" name="fourth3" type="number" placeholder="4 s???">
													<input class="form-control" name="fourth4" type="number" placeholder="4 s???">
												<label>Gi???i n??m:</label> 
													<input class="form-control" name="fifth1" type="number" placeholder="4 s???">
													<input class="form-control" name="fifth2" type="number" placeholder="4 s???">
													<input class="form-control" name="fifth3" type="number" placeholder="4 s???">
													<input class="form-control" name="fifth4" type="number" placeholder="4 s???">
													<input class="form-control" name="fifth5" type="number" placeholder="4 s???">
													<input class="form-control" name="fifth6" type="number" placeholder="4 s???">
												<label>Gi???i s??u:</label> 
													<input class="form-control" name="sixth1" type="number" placeholder="3 s???">
													<input class="form-control" name="sixth2" type="number" placeholder="3 s???">
													<input class="form-control" name="sixth3" type="number" placeholder="3 s???">
												<label>Gi???i b???y:</label>
													<input class="form-control" name="seventh1" type="number" placeholder="2 s???">
													<input class="form-control" name="seventh2" type="number" placeholder="2 s???">
													<input class="form-control" name="seventh3" type="number" placeholder="2 s???">
													<input class="form-control" name="seventh4" type="number" placeholder="2 s???">
											</div>
											</c:if>											
											<div class="modal-footer">
												<button type="reset" class="btn btn-secondary" data-dismiss="modal">Reset</button>
												<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"> Submit</button>
											</div>
											<!-- Modal -->
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
															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">Close</button>
															<button type="submit" class="btn btn-primary">?????ng ??</button>
														</div>
													</div>
												</div>
											</div>
											</form>
										</div>
									</div>
								</c:if>
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