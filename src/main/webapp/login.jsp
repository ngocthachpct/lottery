<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Đăng nhập</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="js/jquery-ui.css">
<script type="text/javascript" src="js/modernizr.min.js"></script>
</head>
<body>
	<%
	String uid = "", pwd = "", rmb = "";
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cook : cookies) {
			if (cook.getName().equalsIgnoreCase("cookUsername")) {
		uid = cook.getValue();
			}
			if (cook.getName().equalsIgnoreCase("cookPassword")) {
		pwd = cook.getValue();
			}
			if (cook.getName().equals("cookRemember")) {
		rmb = cook.getValue();
			}

		}
	}
	%>
	<c:if test="${err =='y' }">
		<script>
			alert("đăng kí thành công!")
		</script>
	</c:if>
	<div id="wrap">
		<%@include file="header.jsp"%>
		<div id="content">
			<div class="container">
				<div class="row">
					<div id="top-ads" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center mgt10">
						<img src="images/topads.jpg" alt="" class="img-resonsive">
					</div>
					<div id="col-left" class="col-xs-12 col-md-9">
						<form method="post" action="login">
							<div class="kqsx-first">
								<div class="box-kqxs" id="box-ckqxs">
									<div class="header-title">
										<h4>Thông tin tài khoản</h4>
									</div>
									<div class="box-kqxs-content row-eq-height">
										<div
											class="col-md-12 col-xs-12 col-xs-12-pad mm-result-left paddingtb10">
											<div class="row">
												<div class="col-md-7">
													<table class="table">
														<tbody>
															<tr>
																<td>Tên đăng nhập</td>
																<td><input type="text" class="form-control" id="" name="username" placeholder="" value="<%=uid%>" required="required"></td>
																<td class="redstar">*</td>
															</tr>
															<tr>
																<td>Mật khẩu</td>
																<td><input type="password" class="form-control" id="" name="password" placeholder="" value="<%=pwd%>" required="required"></td>
																<td class="redstar">*</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-3 col-md-6 col-xs-offset-3 col-sm-offset-5 col-md-offset-4 mgt10">
									Ghi nhớ 
									<input type="checkbox" name="remember" value="0" <%="1".equals(rmb.trim()) ? "checked='/checked'" : ""%> style="width: 20%;"> <a href="forgot-password.jsp">Quên mật khẩu?</a>
								</div>
								<div class="col-xs-8 col-sm-3 col-md-3 col-xs-offset-3 col-sm-offset-5 col-md-offset-4 mgt10">
									<button type="submit" class="btn btn-danger pull-left">Đăng nhập</button>
									<button type="reset" class="btn btn-danger pull-right">Xóa</button>
								</div>
								<div class="col-xs-8 col-sm-3 col-md-9 col-xs-offset-3 col-sm-offset-5 col-md-offset-4 mgt10 alert">${error}</div>
							</div>
						</form>
					</div>
					<div id="col-right" class="col-xs-12 col-md-3">

						<div class="down-app">
							<div class="header-title">
								<h4>ứng dụng dò kqsx</h4>
							</div>
							<div class="app-content">
								<div class="pull-left">
									<a href=""><img class="pull-left" src="images/apple.png" height="35" width="35" alt="iOS">
										<span class="pull-right">Tải Về <br />iOS </span>
										</a>
								</div>
								<div class="pull-left">
									<a href=""><img class="pull-left" src="images/android.png" height="30" width="30" alt="android">
										<span class="pull-right">Tải về <br />Android </span>
									</a>
								</div>
								<div class="pull-left">
									<a href=""><img class="pull-left" src="images/winphone.png" height="30" width="30" alt="windowphone">
										<span class="pull-right">Tải Về <br />Winphone </span>
									</a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="statistics">
							<div class="header-title-aside">
								<h4>thống kê</h4>
							</div>
							<div class="statis-content">
								<ul>
									<li>
										<p>Thống kê cầu:</p>
										<ul class="sub-menu-side">
											<li><a href="">Cầu xổ số các tỉnh</a></li>
											<li><a href="">Thống kê bạch thủ (MB)</a></li>
											<li><a href="">Thống kê lật liên tục (MB)</a></li>
											<li><a href="">Thống kê về cả cặp (MB)</a></li>
											<li><a href="">Thống kê nhiều nháy (MB)</a></li>
										</ul>
									</li>
									<li>
										<p>Thống kê lô:</p>
										<ul class="sub-menu-side">
											<li><a href="">Thống kê lần xuất hiện</a></li>
											<li><a href="">Thống kê 00 - 99</a></li>
											<li><a href="">Thống kê gan cực đại</a></li>
											<li><a href="">Thống kê lô xiên</a></li>
											<li><a href="">Thống kê chu kỳ</a></li>
										</ul>
									</li>
									<li>
										<p>Thống kê đầu - đuôi:</p>
										<ul class="sub-menu-side">
											<li><a href="">Thống kê 2 số đầu</a></li>
											<li><a href="">Thống kê 2 số cuối giải ĐB</a></li>
											<li><a href="">Thống kê 3 số cuối giải ĐB</a></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<!-- End statistics -->
						<!-- Start direct-->
						<div class="direct">
							<div class="header-title-aside">
								<h4>trực tiếp KQXS</h4>
							</div>
							<div class="direct-content">
								<ul>
									<li>
										<p>Miền Nam - 16h20</p>
										<ul class="sub-menu-side">
											<li><a href=""><span class="loading"></span>Long An</a></li>
											<li><a href=""><span class="loading"></span>Bến Tre</a></li>
											<li><a href=""><span class="loading"></span>Hồ Chí Minh</a></li>
										</ul>
									</li>
									<li>
										<p>Miền Trung - 17h15</p>
										<ul class="sub-menu-side">
											<li><a href=""><span class="new"></span>Đà Lạt</a></li>
											<li><a href=""><span class="new"></span>Nha Trang</a></li>
										</ul>
									</li>
									<li>
										<p>Miền Bắc - 18h15</p>
										<ul class="sub-menu-side">
											<li><a href=""><span class="waiting"></span>Quảng Ninh</a></li>
										</ul>
									</li>
									<li>
										<p class="icon-status">
											<img src="images/loading.png" height="15" width="20" alt="loading">Đang xổ&nbsp;&nbsp; 
											<img src="images/new.png" height="15" width="20" alt="new">Mới&nbsp;&nbsp;
											<img src="images/waiting.png" height="15" width="20" alt="waiting">Chờ
										</p>
									</li>
								</ul>
								<div class="embed-link">
									<a href=""><img src="images/banner.jpg" height="40" width="40" alt="">Chèn KQXS vào Website</a>
								</div>
							</div>
						</div>
						<div class="computing">
							<div class="header-title-aside">
								<h4>xổ số điện toán</h4>
							</div>
							<div class="computing-content">
								<ul>
									<li style="padding-top: 10px">
										<ul class="sub-menu-side">
											<li><a href=""><span class="loading"></span>Xổ số điện toán 1*2*3</a></li>
											<li><a href=""><span class="loading"></span>Xổ số điện toán 6*36</a></li>
											<li><a href=""><span class="loading"></span>Xổ số thần tài 4</a></li>
										</ul>
									</li>
									<li>
										<p class="icon-status">
											<img src="images/loading.png" height="15" width="20" alt="loading">Đang xổ&nbsp;&nbsp; 
											<img src="images/new.png" height="15" width="20" alt="new">Mới&nbsp;&nbsp;
											<img src="images/waiting.png" height="15" width="20" alt="waiting">Chờ
										</p>
									</li>
								</ul>
							</div>
						</div>

						<div class="banner">
							<img src="images/advertise.jpg" class="img-responsive" alt="aside-banner">
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="footer.jsp"%>\
	</div>
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate-1.2.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
	<script type="text/javascript" src="js/jquery.ui.datepicker.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>
</body>
</html>