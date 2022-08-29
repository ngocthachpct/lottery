<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Trang Chủ</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="js/jquery-ui.css">
<script type="text/javascript" src="js/modernizr.min.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<c:set scope="request" var="list" value="${list}"></c:set>
	<div id="content">
		<div class="container">
			<div class="row">
				<div id="top-ads" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center mgt10">
					<img src="images/topads.jpg" alt="" class="img-resonsive">
				</div>
				<div id="col-left" class="col-xs-12 col-md-9">
					<div class="kqsx-first">
						<div class="box-kqxs">
							<div class="header-title">
								<h4>Dò vé số</h4>
							</div>
							<div class="box-kqxs-content row-eq-height">
								<div
									class="col-md-8 col-sm-8 col-xs-12 col-xs-12-pad mm-result-left paddingtb10">
									<form action="searchHomePage" method="post" role="form" class="form-inline">
										<div class="form-group">
											<input type="text" class="form-control" id="ngaydo" name="date" placeholder="Chọn ngày" >
										</div>
										<div class="form-group">
											<select name="province" id="input" class="form-control" required="required">
												<option >Đồng Tháp</option>
												<option selected="selected">Hồ Chí Minh</option>
												<option >Vũng Tàu</option>
												<option >Đắc Lắc</option>
												<option >Quảng Nam</option>
												<option  >Hà Nội</option>
											</select>
										</div>
										<div class="form-group">
											<input type="text" class="form-control" name="number" placeholder="Nhập số" >
										</div>
										<div class="form-group ">
											<button type="submit" class="btn btn-sm btn-default" required>Kết quả</button>
										</div>
									</form>
								</div>
								<div class="col-md-4 col-sm-4 col-xs-12 col-xs-12-pad mm-result-right paddingtb10">
									<p>Bạn đã truy vấn dò kết quả vé số <br>
										<b class="redstar">${province} </b>
										<br> Loại vé 6 chữ số, mở thưởng ngày <b class="redstar">${date}</b>
										<br> Dãy số của bạn là: <b class="redstar">${number}</b>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="col-md-6 col-md-offset-4 paddingtb10 div-trungso">
							<img class="img-responsive" src="images/do-so-trung.png" alt="">
							<div id="tbtrungso">
								<h4>${note1}</h4>
								<p>
									${note2}<br> ${note3}
								</p>
							</div>
						</div>
						<div class="clearfix"></div>
						<c:if test="${list != null}">
						<div class="box-kqxs">
							<div class="header-title">
								<h4>Kết quả xố số ${province} ngày ${date}</h4>
							</div>
							<div class="box-kqxs-content">
								<table border="0" cellpadding="0" cellspacing="0" class="col-md-8 col-sm-8 col-xs-8 mm-result-left">
									<tbody>
										<tr>
											<td class="arrange" valign="top">
												<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 leftcl">
													<tbody>
														<tr>
															<td class="award-7-second">Giải 7</td>
														</tr>
														<tr>
															<td class="award-6-second">Giải 6</td>
														</tr>
														<tr>
															<td class="award-5-second">Giải 5</td>
														</tr>
														<tr>
															<td class="award-4-second">Giải 4</td>
														</tr>
														<tr>
															<td class="award-3-second">Giải 3</td>
														</tr>
														<tr>
															<td class="award-2-second">Giải 2</td>
														</tr>
														<tr>
															<td class="award-1-second">Giải 1</td>
														</tr>
														<tr>
															<td class="award-special-second">Giải ĐB</td>
														</tr>
													</tbody>
												</table>
											</td>
											<td valign="top">
												<table class="col-md-12 col-sm-12 col-xs-12" border="0" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<td valign="top" class="col-md-4 col-sm-4 col-xs-4">
																<table class="col-md-12 col-sm-12 col-xs-12 rightcl" cellpadding="0" cellspacing="0">
																	<tbody>									
																		<tr>
																			<td class="award-7-second">
																				<c:forEach items="${list.seventhPrize}" var="p">
																					<div>
																						<c:out value="${p}"></c:out>
																					</div>
																				</c:forEach>
																			</td>
																		</tr>
																		<tr>
																			<td class="award-6-second">
																				<c:forEach items="${list.sixthPrize}" var="p">
																					<div>
																						<c:out value="${p}"></c:out>
																					</div>
																				</c:forEach>
																			</td>
																		</tr>
																		<tr>
																			<td class="award-5-second">
																				<c:forEach items="${list.fifthPrize}" var="p">
																					<div>
																						<c:out value="${p}"></c:out>
																					</div>
																				</c:forEach>
																			</td>
																		</tr>
																		<tr>
																			<td class="award-4-second">
																			<c:forEach items="${list.fourthPrize}" var="p">
																				<div>
																					<c:out value="${p}"></c:out>
																				</div>
																			</c:forEach>
																			</td>
																		</tr>
																		<tr>
																			<td class="award-3-second">
																			<c:forEach items="${list.thirdPrize}" var="p">
																				<div>
																					<c:out value="${p}"></c:out>
																				</div>
																			</c:forEach>
																			</td>
																		</tr>
																		<tr>
																			<td class="award-2-second">
																			<c:forEach items="${list.secondPrize}" var="p">
																				<div>
																					<c:out value="${p}"></c:out>
																				</div>
																			</c:forEach>
																			</td>
																		</tr>
																		<tr>
																			<td class="award-1-second">
																			<c:forEach items="${list.firstPrize}" var="p">
																				<div>
																					<c:out value="${p}"></c:out>
																				</div>
																			</c:forEach>
																			</td>
																		</tr>
																		<tr>
																			<td class="award-special-second">
																			<c:forEach items="${list.specialPrize}" var="p">
																				<div>
																						<c:out value="${p}"></c:out>
																				</div>
																			</c:forEach>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
								<table border="0" cellpadding="0" cellspacing="0" class="col-md-4 col-sm-4 col-xs-4 mm-result-right">
									<tbody>
										<tr>
											<td class="arrange" valign="top">
												<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 leftcl">
													<tbody>
														<tr>
															<td class="ten">Đầu</td>
														</tr>
														<tr>
															<td class="giai0">0</td>
														</tr>
														<tr>
															<td class="giai1">1</td>
														</tr>
														<tr>
															<td class="giai2">2</td>
														</tr>
														<tr>
															<td class="giai3">3</td>
														</tr>
														<tr>
															<td class="giai4">4</td>
														</tr>
														<tr>
															<td class="giai5">5</td>
														</tr>
														<tr>
															<td class="giai6">6</td>
														</tr>
														<tr>
															<td class="giai7">7</td>
														</tr>
														<tr>
															<td class="giai8">8</td>
														</tr>
														<tr>
															<td class="giai9">9</td>
														</tr>
													</tbody>
												</table>
											</td>
											<td valign="top">
												<table class="col-md-12 col-sm-12 col-xs-12" border="0" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<td valign="top" class="col-md-6 col-sm-6 col-xs-6">
																<table class="col-md-12 col-sm-12 col-xs-12 rightcl" cellpadding="0" cellspacing="0">
																	<tbody>
																		<tr>
																			<td class="ten">Đuôi</td>
																		</tr>
																		<tr>
																			<td class="giai0">1,2,5,4</td>
																		</tr>
																		<tr>
																			<td class="giai1"></td>
																		</tr>
																		<tr>
																			<td class="giai2">1,5</td>
																		</tr>
																		<tr>
																			<td class="giai3">3,8</td>
																		</tr>
																		<tr>
																			<td class="giai4">4,8,6</td>
																		</tr>
																		<tr>
																			<td class="giai5"></td>
																		</tr>
																		<tr>
																			<td class="giai6"></td>
																		</tr>
																		<tr>
																			<td class="giai7">7,8</td>
																		</tr>
																		<tr>
																			<td class="giai8">8,9</td>
																		</tr>
																		<tr>
																			<td class="giai9">1,5,6</td>
																		</tr>
																	</tbody>
																</table>
															</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
								<div class="clearfix"></div>
							</div>
						</div>
						</c:if>
						<div class="clearfix">
							<div class="pagination" style="float: right">
								<ul>
									<li><a href="#">&lt;&lt;</a></li>
									<li><a href="#" class="active">1</a></li>
									<li><a href="#" class="">2</a></li>
									<li><a href="#" class="">3</a></li>
									<li><a href="#">&gt;&gt;</a></li>
								</ul>
							</div>
							<div class="social-button">
								<ul>
									<li>
										<div>
											<div class="fb-like" data-send="false"
												data-layout="button_count" data-width="150"
												data-show-faces="true"></div>
										</div>
									</li>
									<li>
										<div>
											<g:plusone size="medium" width="250px"></g:plusone>
										</div>
									</li>
									<li>
										<a class="btn btn-xs btn-color-green" href="#" id="tabRbt">
											<i class="i-noimg"></i><span>Đổi số trúng</span>
										</a>
									</li>
									<li>
										<a class="btn btn-xs btn-color-red" href="#" id="tabShare"> 
											<i class="i-noimg"></i><span>In vé dò</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="col-right" class="col-xs-12 col-md-3">
					<div class="down-app">
						<div class="header-title">
							<h4>ứng dụng dò kqsx</h4>
						</div>
						<div class="app-content">
							<div class="pull-left">
								<a href="">
									<img class="pull-left" src="images/apple.png" height="35" width="35" alt="iOS">
									<span class="pull-right">Tải Về <br />iOS </span>
								</a>
							</div>
							<div class="pull-left">
								<a href="">
									<img class="pull-left" src="images/android.png" height="30" width="30" alt="android">
									<span class="pull-right">Tải về <br />Android </span>
								</a>
							</div>
							<div class="pull-left">
								<a href="#">
									<img class="pull-left" src="images/winphone.png" height="30" width="30" alt="windowphone">
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
						<img src="images/advertise.jpg" class="img-responsive"
							alt="aside-banner">
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate-1.2.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
	<script type="text/javascript" src="js/jquery.ui.datepicker.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$("#ngaydo").datepicker({dateFormat: 'yy-mm-dd' ,
						changeMonth : true,
						changeYear : true,
						showOtherMonths : true,
						selectOtherMonths : true,
						monthNamesShort : [ 'Tháng 1', 'Tháng 2',
								'Tháng 3', 'Tháng 4', 'Tháng 5',
								'Tháng 6', 'Tháng 7', 'Tháng 8',
								'Tháng  9', 'Tháng 10', 'Tháng 11',
								'Tháng 12' ],
						dayNames : [ 'Chủ nhật', 'Thứ 2', 'Thứ 3',
								'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7' ],
						dayNamesMin : [ 'CN', 'T2', 'T3', 'T4', 'T5',
								'T6', 'T7' ],
						monthNames : [ 'Tháng 1', 'Tháng 2', 'Tháng 3',
								'Tháng 4', 'Tháng 5', 'Tháng 6',
								'Tháng 7', 'Tháng 8', 'Tháng  9',
								'Tháng 10', 'Tháng 11', 'Tháng 12' ]
					});
				})
	</script>
</body>
</html>