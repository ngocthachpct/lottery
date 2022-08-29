<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang Chủ</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-them	e.min.css">
<link rel="stylesheet" type="text/css" href="js/jquery-ui.css">
<script type="text/javascript" src="js/modernizr.min.js"></script>
</head>
<body>
	<div id="wrap">
		<%@include file="header.jsp"%>
		<c:set scope="request" var="list1" value="${list1}"></c:set>
		<c:set scope="request" var="list2" value="${list2}"></c:set>
		<c:set scope="request" var="list3" value="${list3}"></c:set>
		<c:set scope="request" var="list4" value="${list4}"></c:set>
		<c:set scope="request" var="list5" value="${list5}"></c:set>
		<c:set scope="request" var="list6" value="${list6}"></c:set>
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
									<h4>Kết quả xổ số miền nam <c:out value="${list1.openDay}"></c:out></h4>
								</div>
								<div class="box-kqxs-content">
									<table border="0" cellpadding="0" cellspacing="0" class="col-md-8 col-sm-8 col-xs-8 mm-result-left">
										<tbody>
											<tr>
												<td class="arrange" valign="top">
													<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 leftcl">
														<tbody>
															<tr>
																<td class="dayofweek">Thứ 3</td>
															</tr>
															<tr>
																<td class="fullday">10/03/2022</td>
															</tr>
															
															<tr>
																<td class="award-7">Giải 7</td>
															</tr>
															<tr>
																<td class="award-6">Giải 6</td>
															</tr>
															<tr>
																<td class="award-5">Giải 5</td>
															</tr>
															<tr>
																<td class="award-4">Giải 4</td>
															</tr>
															<tr>
																<td class="award-3">Giải 3</td>
															</tr>
															<tr>
																<td class="award-2">Giải 2</td>
															</tr>
															<tr>
																<td class="award-1">Giải 1</td>
															</tr>
															<tr>
																<td class="award-special">Giải ĐB</td>
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
																				<td class="province"><c:out value="${list1.province}"></c:out></td>
																			</tr>
																			<tr>
																				<td class="province-code">K34-T08</td>
																			</tr>

																			<tr>
																				<td class="award-7">
																				<c:forEach items="${list1.seventhPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																			</tr>
																			<tr>
																				<td class="award-6">
																					<c:forEach items="${list1.sixthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-5">
																				<c:forEach items="${list1.fifthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-4">
																					<c:forEach items="${list1.fourthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-3">
																				<c:forEach items="${list1.thirdPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-2">
																					<c:forEach items="${list1.secondPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-1">
																				<c:forEach items="${list1.firstPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-special">
																				<c:forEach items="${list1.specialPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
																<td valign="top" class="col-md-4 col-sm-4 col-xs-4">
																	<table class="col-md-12 col-sm-12 col-xs-12 rightcl" cellpadding="0" cellspacing="0">
																		<tbody>
																			<tr>
																				<td class="province"><c:out value="${list2.province}"></c:out></td>
																			</tr>
																			<tr>
																				<td class="province-code">K34-T08</td>
																			</tr>

																			<tr>
																				<td class="award-7">
																				<c:forEach items="${list2.seventhPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																			</tr>
																			<tr>
																				<td class="award-6">
																					<c:forEach items="${list2.sixthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-5">
																				<c:forEach items="${list2.fifthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-4">
																					<c:forEach items="${list2.fourthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-3">
																				<c:forEach items="${list2.thirdPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-2">
																					<c:forEach items="${list2.secondPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-1">
																				<c:forEach items="${list2.firstPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-special">
																				<c:forEach items="${list2.specialPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
																<td valign="top" class="col-md-4 col-sm-4 col-xs-4">
																	<table class="col-md-12 col-sm-12 col-xs-12 rightcl" cellpadding="0" cellspacing="0">
																		<tbody>
																			<tr>
																				<td class="province"><c:out value="${list3.province}"></c:out></td>
																			</tr>
																			<tr>
																				<td class="province-code">K34-T08</td>
																			</tr>

																			<tr>
																				<td class="award-7">
																				<c:forEach items="${list3.seventhPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																			</tr>
																			<tr>
																				<td class="award-6">
																					<c:forEach items="${list3.sixthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-5">
																				<c:forEach items="${list3.fifthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-4">
																					<c:forEach items="${list3.fourthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-3">
																				<c:forEach items="${list3.thirdPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-2">
																					<c:forEach items="${list3.secondPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-1">
																				<c:forEach items="${list3.firstPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																				</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-special">
																				<c:forEach items="${list3.specialPrize}" var="p">
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
																<td class="name">Đầu</td>
															</tr>
															<tr>
																<td class="award-0">0</td>
															</tr>
															<tr>
																<td class="award-1">1</td>
															</tr>
															<tr>
																<td class="award-2">2</td>
															</tr>
															<tr>
																<td class="award-3">3</td>
															</tr>
															<tr>
																<td class="award-4">4</td>
															</tr>
															<tr>
																<td class="award-5">5</td>
															</tr>
															<tr>
																<td class="award-6">6</td>
															</tr>
															<tr>
																<td class="award-7">7</td>
															</tr>
															<tr>
																<td class="award-8">8</td>
															</tr>
															<tr>
																<td class="award-9">9</td>
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
																				<td class="name">Bến Tre</td>
																			</tr>
																			<tr>
																				<td class="award-0">1,2,5,4</td>
																			</tr>
																			<tr>
																				<td class="award-1"></td>
																			</tr>
																			<tr>
																				<td class="award-2">1,5</td>
																			</tr>
																			<tr>
																				<td class="award-3">3,8</td>
																			</tr>
																			<tr>
																				<td class="award-4">4,8,6</td>
																			</tr>
																			<tr>
																				<td class="award-5"></td>
																			</tr>
																			<tr>
																				<td class="award-6"></td>
																			</tr>
																			<tr>
																				<td class="award-7">7,8</td>
																			</tr>
																			<tr>
																				<td class="award-8">8,9</td>
																			</tr>
																			<tr>
																				<td class="award-9">1,5,6</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
																<td valign="top" class="col-md-6 col-sm-6 col-xs-6">
																	<table class="col-md-12 col-sm-12 col-xs-12 rightcl" cellpadding="0" cellspacing="0">
																		<tbody>
																			<tr>
																				<td class="name">Bạc Liêu</td>
																			</tr>
																			<tr>
																				<td class="award-0">1,2,5,4</td>
																			</tr>
																			<tr>
																				<td class="award-1"></td>
																			</tr>
																			<tr>
																				<td class="award-2">1,5</td>
																			</tr>
																			<tr>
																				<td class="award-3">3,8</td>
																			</tr>
																			<tr>
																				<td class="award-4">4,8,6</td>
																			</tr>
																			<tr>
																				<td class="award-5"></td>
																			</tr>
																			<tr>
																				<td class="award-6"></td>
																			</tr>
																			<tr>
																				<td class="award-7">7,8</td>
																			</tr>
																			<tr>
																				<td class="award-8">8,9</td>
																			</tr>
																			<tr>
																				<td class="award-9">1,5,6</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr style="border-top: 1px solid #010000;">
												<td class="arrange" valign="top">
													<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 leftcl">
														<tbody>
															<tr>
																<td class="name">Đầu</td>
															</tr>
															<tr>
																<td class="award-0">0</td>
															</tr>
															<tr>
																<td class="award-1">1</td>
															</tr>
															<tr>
																<td class="award-2">2</td>
															</tr>
															<tr>
																<td class="award-3">3</td>
															</tr>
															<tr>
																<td class="award-4">4</td>
															</tr>
															<tr>
																<td class="award-5">5</td>
															</tr>
															<tr>
																<td class="award-6">6</td>
															</tr>
															<tr>
																<td class="award-7">7</td>
															</tr>
															<tr>
																<td class="award-8">8</td>
															</tr>
															<tr>
																<td class="award-9">9</td>
															</tr>
														</tbody>
													</table>
												</td>
												<td valign="top">
													<table class="col-md-12 col-sm-12 col-xs-12" border="0" cellspacing="0" cellpadding="0">
														<tbody>
															<tr>
																<td valign="top" class="col-md-6 col-sm-6 col-xs-6">
																	<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 rightcl">
																		<tbody>
																			<tr>
																				<td class="name">Vũng Tàu</td>
																			</tr>
																			<tr>
																				<td class="award-0">1,2,5,4</td>
																			</tr>
																			<tr>
																				<td class="award-1"></td>
																			</tr>
																			<tr>
																				<td class="award-2">1,5</td>
																			</tr>
																			<tr>
																				<td class="award-3">3,8</td>
																			</tr>
																			<tr>
																				<td class="award-4">4,8,6</td>
																			</tr>
																			<tr>
																				<td class="award-5"></td>
																			</tr>
																			<tr>
																				<td class="award-6"></td>
																			</tr>
																			<tr>
																				<td class="award-7">7,8</td>
																			</tr>
																			<tr>
																				<td class="award-8">8,9</td>
																			</tr>
																			<tr>
																				<td class="award-9">1,5,6</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
																<td valign="top" class="col-md-6 col-sm-6 col-xs-6">
																	<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 rightcl">
																		<tbody>
																			<tr>
																				<td class="name"></td>
																			</tr>
																			<tr>
																				<td class="award-0"></td>
																			</tr>
																			<tr>
																				<td class="award-1"></td>
																			</tr>
																			<tr>
																				<td class="award-2"></td>
																			</tr>
																			<tr>
																				<td class="award-3"></td>
																			</tr>
																			<tr>
																				<td class="award-4"></td>
																			</tr>
																			<tr>
																				<td class="award-5"></td>
																			</tr>
																			<tr>
																				<td class="award-6"></td>
																			</tr>
																			<tr>
																				<td class="award-7"></td>
																			</tr>
																			<tr>
																				<td class="award-8"></td>
																			</tr>
																			<tr>
																				<td class="award-9"></td>
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
							<!-- End-box-kqxs -->
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
												<div class="fb-like" data-send="false" data-layout="button_count" data-width="150" data-show-faces="true"></div>
											</div>
										</li>
										<li>
											<div>
												<g:plusone size="medium" width="250px"></g:plusone>
											</div>
										</li>
										<li>
											<a class="btn btn-xs btn-color-green" href="#" id="tabRbt"> <i class="i-noimg"></i><span>Đổi số trúng</span> </a>
										</li>
										<li>
											<a class="btn btn-xs btn-color-red" href="#" id="tabShare"> <i class="i-noimg"></i><span>In vé dò</span> </a>
										</li>
									</ul>
									<script>
										(function(d, s, id) {
											var js, fjs = d
													.getElementsByTagName(s)[0];
											if (d.getElementById(id))
												return;
											js = d.createElement(s);
											js.id = id;
											js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
											fjs.parentNode
													.insertBefore(js, fjs);
										}(document, 'script', 'facebook-jssdk'));
									</script>
									<script type="text/javascript">
										window.___gcfg = {
											lang : 'en-US'
										};

										(function() {
											var po = document
													.createElement('script');
											po.type = 'text/javascript';
											po.async = true;
											po.src = 'https://apis.google.com/js/plusone.js';
											var s = document
													.getElementsByTagName('script')[0];
											s.parentNode.insertBefore(po, s);
										})();
									</script>
								</div>
							</div>
						</div>
						<div lass="kqsx-second">
							<div class="box-kqxs">
								<div class="header-title">
									<h4>kết quả xổ số miền bắc <c:out value="${list4.openDay}"></c:out></h4>
								</div>
								<div class="box-kqxs-content">
									<table border="0" cellpadding="0" cellspacing="0" class="col-md-8 col-sm-8 col-xs-8 mm-result-left">
										<tbody>
											<tr>
												<td class="arrange" valign="top">
													<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 leftcl">
														<tbody>
															<tr>
																<td class="dayofweek-second">Thứ 3</td>
															</tr>
															<tr>
																<td class="award-special-second">Giải ĐB</td>
															</tr>
															<tr>
																<td class="award-1-second">Giải 1</td>
															</tr>
															<tr>
																<td class="award-2-second">Giải 2</td>
															</tr>
															<tr>
																<td class="award-3-second">Giải 3</td>
															</tr>
															<tr>
																<td class="award-4-second">Giải 4</td>
															</tr>
															<tr>
																<td class="award-5-second">Giải 5</td>
															</tr>
															<tr>
																<td class="award-6-second">Giải 6</td>
															</tr>
															<tr>
																<td class="award-7-second">Giải 7</td>
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
																				<td class="province-second"><c:out value="${list4.province}"></c:out></td>
																			</tr>
																			<tr>
																				<td class="award-special-second">
																					<c:forEach items="${list4.specialPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-1-second">
																					<c:forEach items="${list4.firstPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-2-second">
																					<c:forEach items="${list4.secondPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-3-second">
																					<c:forEach items="${list4.thirdPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-4-second">
																					<c:forEach items="${list4.fourthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																					</td>
																			</tr>
																			<tr>
																				<td class="award-5-second">
																					<c:forEach items="${list4.fifthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-6-second">
																					<c:forEach items="${list4.sixthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-7-second">
																					<c:forEach items="${list4.seventhPrize}" var="p">
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
																<td class="name-second">Đầu</td>
															</tr>
															<tr>
																<td class="award-0-second">0</td>
															</tr>
															<tr>
																<td class="award-1-second">1</td>
															</tr>
															<tr>
																<td class="award-2-second">2</td>
															</tr>
															<tr>
																<td class="award-3-second">3</td>
															</tr>
															<tr>
																<td class="award-4-second">4</td>
															</tr>
															<tr>
																<td class="award-5-second">5</td>
															</tr>
															<tr>
																<td class="award-6-second">6</td>
															</tr>
															<tr>
																<td class="award-7-second">7</td>
															</tr>
															<tr>
																<td class="award-8-second">8</td>
															</tr>
															<tr>
																<td class="award-9-second">9</td>
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
																				<td class="name-second">Đuôi</td>
																			</tr>
																			<tr>
																				<td class="award-0-second">1,2,5,4</td>
																			</tr>
																			<tr>
																				<td class="award-1-second"></td>
																			</tr>
																			<tr>
																				<td class="award-2-second">1,5</td>
																			</tr>
																			<tr>
																				<td class="award-3-second">3,8</td>
																			</tr>
																			<tr>
																				<td class="award-4-second">4,8,6</td>
																			</tr>
																			<tr>
																				<td class="award-5-second"></td>
																			</tr>
																			<tr>
																				<td class="award-6-second"></td>
																			</tr>
																			<tr>
																				<td class="award-7-second">7,8</td>
																			</tr>
																			<tr>
																				<td class="award-8-second">8,9</td>
																			</tr>
																			<tr>
																				<td class="award-9-second">1,5,6</td>
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
												<!--FB LIKE-->
												<div class="fb-like" data-send="false" data-layout="button_count" data-width="150" data-show-faces="true"></div>
											</div>
										</li>
										<li>
											<div>
												<g:plusone size="medium" width="250px"></g:plusone>
											</div>
										</li>
										<li><a class="btn btn-xs btn-color-green" href="#" id="tabRbt"> <i class="i-noimg"></i><span>Đổi số trúng</span>
										</a></li>
										<li><a class="btn btn-xs btn-color-red" href="#" id="tabShare"> <i class="i-noimg"></i><span>In vé dò</span>
										</a></li>
									</ul>
									<script>
										(function(d, s, id) {
											var js, fjs = d
													.getElementsByTagName(s)[0];
											if (d.getElementById(id))
												return;
											js = d.createElement(s);
											js.id = id;
											js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
											fjs.parentNode
													.insertBefore(js, fjs);
										}(document, 'script', 'facebook-jssdk'));
									</script>
									<script type="text/javascript">
										window.___gcfg = {
											lang : 'en-US'
										};

										(function() {
											var po = document
													.createElement('script');
											po.type = 'text/javascript';
											po.async = true;
											po.src = 'https://apis.google.com/js/plusone.js';
											var s = document
													.getElementsByTagName('script')[0];
											s.parentNode.insertBefore(po, s);
										})();
									</script>
								</div>
							</div>
						</div>
						<div class="kqsx-first">
							<div class="box-kqxs">
								<div class="header-title">
									<h4>kết quả xổ số miền trung <c:out value="${list5.openDay}"></c:out></h4>
								</div>
								<div class="box-kqxs-content">
									<table border="0" cellpadding="0" cellspacing="0" class="col-md-8 col-sm-8 col-xs-8 mm-result-left">
										<tbody>
											<tr>
												<td class="arrange" valign="top">
													<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xl-12 leftcl">
														<tbody>
															<tr>
																<td class="dayofweek">Thứ 3</td>
															</tr>
															<tr>
																<td class="fullday">03/05/2022</td>
															</tr>
															
															<tr>
																<td class="award-7">Giải 7</td>
															</tr>
															<tr>
																<td class="award-6">Giải 6</td>
															</tr>
															<tr>
																<td class="award-5">Giải 5</td>
															</tr>
															<tr>
																<td class="award-4">Giải 4</td>
															</tr>
															<tr>
																<td class="award-3">Giải 3</td>
															</tr>
															<tr>
																<td class="award-2">Giải 2</td>
															</tr>
															<tr>
																<td class="award-1">Giải 1</td>
															</tr>
															<tr>
																<td class="award-special">Giải ĐB</td>
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
																				<td class="province"><c:out value="${list5.province}"></c:out></td>
																			</tr>
																			<tr>
																				<td class="province-code">K34-T08</td>
																			</tr>
																			
																			<tr>
																				<td class="award-7">
																				<c:forEach items="${list5.seventhPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-6">
																					<c:forEach items="${list5.sixthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-5">
																					<c:forEach items="${list5.fifthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-4">
																					<c:forEach items="${list5.fourthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-3">
																					<c:forEach items="${list5.thirdPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-2">
																					<c:forEach items="${list5.secondPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-1">
																					<c:forEach items="${list5.firstPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-special">
																					<c:forEach items="${list5.specialPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
																<td valign="top" class="col-md-4 col-sm-4 col-xs-4">
																	<table class="col-md-12 col-sm-12 col-xs-12 rightcl" cellpadding="0" cellspacing="0">
																		<tbody>
																			<tr>
																				<td class="province"><c:out value="${list6.province}"></c:out></td>
																			</tr>
																			<tr>
																				<td class="province-code">K34-T08</td>
																			</tr>
																			
																			<tr>
																				<td class="award-7">
																				<c:forEach items="${list6.seventhPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-6">
																					<c:forEach items="${list6.sixthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-5">
																					<c:forEach items="${list6.fifthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-4">
																					<c:forEach items="${list6.fourthPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-3">
																					<c:forEach items="${list6.thirdPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-2">
																					<c:forEach items="${list6.secondPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-1">
																					<c:forEach items="${list6.firstPrize}" var="p">
																						<div>
																							<c:out value="${p}"></c:out>
																						</div>
																					</c:forEach>
																				</td>
																			</tr>
																			<tr>
																				<td class="award-special">
																					<c:forEach items="${list6.specialPrize}" var="p">
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
									<!-- End box-kqxs-content-left -->
									<!-- Start box-kqxs-content-right -->
									<table border="0" cellpadding="0" cellspacing="0" class="col-md-4 col-sm-4 col-xs-4 mm-result-right">
										<tbody>
											<tr>
												<td class="arrange" valign="top">
													<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 leftcl">
														<tbody>
															<tr>
																<td class="name">Đầu</td>
															</tr>
															<tr>
																<td class="award-0">0</td>
															</tr>
															<tr>
																<td class="award-1">1</td>
															</tr>
															<tr>
																<td class="award-2">2</td>
															</tr>
															<tr>
																<td class="award-3">3</td>
															</tr>
															<tr>
																<td class="award-4">4</td>
															</tr>
															<tr>
																<td class="award-5">5</td>
															</tr>
															<tr>
																<td class="award-6">6</td>
															</tr>
															<tr>
																<td class="award-7">7</td>
															</tr>
															<tr>
																<td class="award-8">8</td>
															</tr>
															<tr>
																<td class="award-9">9</td>
															</tr>
														</tbody>
													</table>
												</td>
												<td valign="top">
													<table class="col-md-12 col-sm-12 col-xs-4" border="0" cellspacing="0" cellpadding="0">
														<tbody>
															<tr>
																<td valign="top" class="col-md-6 col-sm-6 col-xs-6">
																	<table class="col-md-12 col-sm-12 col-xs-12 rightcl" cellpadding="0" cellspacing="0">
																		<tbody>
																			<tr>
																				<td class="name">Đắc Lắc</td>
																			</tr>
																			<tr>
																				<td class="award-0">1,2,5,4</td>
																			</tr>
																			<tr>
																				<td class="award-1"></td>
																			</tr>
																			<tr>
																				<td class="award-2">1,5</td>
																			</tr>
																			<tr>
																				<td class="award-3">3,8</td>
																			</tr>
																			<tr>
																				<td class="award-4">4,8,6</td>
																			</tr>
																			<tr>
																				<td class="award-5"></td>
																			</tr>
																			<tr>
																				<td class="award-6"></td>
																			</tr>
																			<tr>
																				<td class="award-7">7,8</td>
																			</tr>
																			<tr>
																				<td class="award-8">8,9</td>
																			</tr>
																			<tr>
																				<td class="award-9">1,5,6</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
																<td valign="top" class="col-md-6 col-sm-6 col-xs-6">
																	<table class="col-md-12 col-sm-12 col-xs-12 rightcl" cellpadding="0" cellspacing="0">
																		<tbody>
																			<tr>
																				<td class="name">Quảng Nam</td>
																			</tr>
																			<tr>
																				<td class="award-0">1,2,5,4</td>
																			</tr>
																			<tr>
																				<td class="award-1"></td>
																			</tr>
																			<tr>
																				<td class="award-2">1,5</td>
																			</tr>
																			<tr>
																				<td class="award-3">3,8</td>
																			</tr>
																			<tr>
																				<td class="award-4">4,8,6</td>
																			</tr>
																			<tr>
																				<td class="award-5"></td>
																			</tr>
																			<tr>
																				<td class="award-6"></td>
																			</tr>
																			<tr>
																				<td class="award-7">7,8</td>
																			</tr>
																			<tr>
																				<td class="award-8">8,9</td>
																			</tr>
																			<tr>
																				<td class="award-9">1,5,6</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr style="border-top: 1px solid #A5A4A4;" class="remove-tdborder">
												<td class="arrange" valign="top">
													<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 leftcl">
														<tbody>
															<tr>
																<td class="name doimau-ten"></td>
															</tr>
															<tr>
																<td class="award-0"></td>
															</tr>
															<tr>
																<td class="award-1"></td>
															</tr>
															<tr>
																<td class="award-2"></td>
															</tr>
															<tr>
																<td class="award-3"></td>
															</tr>
															<tr>
																<td class="award-4"></td>
															</tr>
															<tr>
																<td class="award-5"></td>
															</tr>
															<tr>
																<td class="award-6"></td>
															</tr>
															<tr>
																<td class="award-7"></td>
															</tr>
															<tr>
																<td class="award-8"></td>
															</tr>
															<tr>
																<td class="award-9"></td>
															</tr>
														</tbody>
													</table>
												</td>
												<td valign="top">
													<table class="col-md-12 col-sm-12 col-xs-12" border="0" cellspacing="0" cellpadding="0">
														<tbody>
															<tr>
																<td valign="top" class="col-md-6 col-sm-6 col-xs-6">
																	<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 rightcl">
																		<tbody>
																			<tr>
																				<td class="name doimau-ten"></td>
																			</tr>
																			<tr>
																				<td class="award-0"></td>
																			</tr>
																			<tr>
																				<td class="award-1"></td>
																			</tr>
																			<tr>
																				<td class="award-2"></td>
																			</tr>
																			<tr>
																				<td class="award-3"></td>
																			</tr>
																			<tr>
																				<td class="award-4"></td>
																			</tr>
																			<tr>
																				<td class="award-5"></td>
																			</tr>
																			<tr>
																				<td class="award-6"></td>
																			</tr>
																			<tr>
																				<td class="award-7"></td>
																			</tr>
																			<tr>
																				<td class="award-8"></td>
																			</tr>
																			<tr>
																				<td class="award-9"></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
																<td valign="top" class="col-md-6 col-sm-6 col-xs-6">
																	<table border="0" cellpadding="0" cellspacing="0" class="col-md-12 col-sm-12 col-xs-12 rightcl">
																		<tbody>
																			<tr>
																				<td class="name doimau-ten"></td>
																			</tr>
																			<tr>
																				<td class="award-0"></td>
																			</tr>
																			<tr>
																				<td class="award-1"></td>
																			</tr>
																			<tr>
																				<td class="award-2"></td>
																			</tr>
																			<tr>
																				<td class="award-3"></td>
																			</tr>
																			<tr>
																				<td class="award-4"></td>
																			</tr>
																			<tr>
																				<td class="award-5"></td>
																			</tr>
																			<tr>
																				<td class="award-6"></td>
																			</tr>
																			<tr>
																				<td class="award-7"></td>
																			</tr>
																			<tr>
																				<td class="award-8"></td>
																			</tr>
																			<tr>
																				<td class="award-9"></td>
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
											<a class="btn btn-xs btn-color-green" href="#" id="tabRbt"> <i class="i-noimg"></i><span>Đổi số trúng</span> </a>
										</li>
										<li>
											<a class="btn btn-xs btn-color-red" href="#" id="tabShare"> <i class="i-noimg"></i><span>In vé dò</span> </a>
										</li>
									</ul>
									<script>
										(function(d, s, id) {
											var js, fjs = d
													.getElementsByTagName(s)[0];
											if (d.getElementById(id))
												return;
											js = d.createElement(s);
											js.id = id;
											js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
											fjs.parentNode
													.insertBefore(js, fjs);
										}(document, 'script', 'facebook-jssdk'));
									</script>
									<script type="text/javascript">
										window.___gcfg = {
											lang : 'en-US'
										};

										(function() {
											var po = document
													.createElement('script');
											po.type = 'text/javascript';
											po.async = true;
											po.src = 'https://apis.google.com/js/plusone.js';
											var s = document
													.getElementsByTagName('script')[0];
											s.parentNode.insertBefore(po, s);
										})();
									</script>
								</div>
							</div>
						</div>
						<div class="banner-content">
							<img src="images/banner.png" class="img-responsive" alt="">
						</div>
						<div class="kqsx-dt">
							<div class="box-kqsx-dt">
								<div class="header-title">
									<h4>kết quả sổ xố điện toán 03/05/2022</h4>
								</div>
								<div class="box-kqsx-dt-content">
									<div class="bkq123">
										<div class="title">
											<table border="0" cellpadding="0" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td class="title"><a href="#">Điện toán 1*2*3</a></td>
														<td align="right" class="mothuong">Mở thưởng ngày:Thứ Ba&#44;&nbsp;03/05/2022</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="content">
											<table border="0" cellpadding="0" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td align="left">
															<table align="left" border="0" cellpadding="0" cellspacing="0">
																<tbody>
																	<tr>
																		<td align="center" valign="middle">
																			<div class="finnish1 bool">8</div>
																		</td>
																		<td width="40">&nbsp;</td>
																		<td align="center" valign="middle">
																			<div class="finnish2 bool">6</div>
																			<div class="finnish3 bool">0</div>
																		</td>
																		<td width="40">&nbsp;</td>
																		<td align="center" valign="middle">
																			<div class="finnish4 bool">5</div>
																			<div class="finnish5 bool">9</div>
																			<div class="finnish6 bool">1</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
														<td align="right" width="120">
															<div class="button">
																<a class="buttonBlue pngfix" href="#">Xem thêm!...</a>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="bkq636">
										<div class="title">
											<table border="0" cellpadding="0" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td align="left" class="title"><a href="#">Điện toán 6*36</a></td>
														<td align="right" class="mothuong">Mở thưởng ngày:Thứ Ba&#44;&nbsp;03/05/2022</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="content">
											<table border="0" cellpadding="0" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td align="left">
															<div>
																<td align="center" class="arrange-class col-md-2 col-sm-2 col-xs-2">
																	<div class="finnish1 bool">01</div>
																</td>
																<td align="center" class="arrange-class col-md-2 col-sm-2 col-xs-2">
																	<div class="finnish2 bool">15</div>
																</td>
																<td align="center" class="arrange-class col-md-2 col-sm-2 col-xs-2">
																	<div class="finnish3 bool">89</div>
																</td>
																<td align="center" class="arrange-class col-md-2 col-sm-2 col-xs-2">
																	<div class="finnish4 bool">25</div>
																</td>
																<td align="center" class="arrange-class col-md-2 col-sm-2 col-xs-2">
																	<div class="finnish5 bool">89</div>
																</td>
																<td align="center" class="arrange-class col-md-2 col-sm-2 col-xs-2">
																	<div class="finnish6 bool">25</div>
																</td>
															</div>
														</td>
														<td align="right">
															<div class="button">
																<a class="buttonBlue pngfix" href="#">Xem thêm!...</a>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="kqsxdt-tt">
										<div class="title">
											<table border="0" cellpadding="0" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td align="left" class="title"><a href="#">Điện toán Thần Tài</a></td>
														<td align="right" class="mothuong">Mở thưởng ngày:Thứ Ba&#44;&nbsp;03/05/2022</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="content">
											<table border="0" cellpadding="0" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td align="left">
															<div class="finnish1 bool">1</div>
															<div class="finnish5 bool">5</div>
															<div class="finnish9 bool">6</div>
															<div class="finnish10 bool">7</div>
														</td>
														<td align="right">
															<div class="button">
																<a class="buttonBlue pngfix" href="#">Xem thêm!...</a>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="banner-content" style="margin-top: 30px">
							<img src="images/banner-1.jpg" class="img-responsive" alt="">
						</div>
					</div>
					<div id="col-right" class="col-xs-12 col-md-3">
						<div class="down-app">
							<div class="header-title">
								<h4>ứng dụng dò kqsx</h4>
							</div>
							<div class="app-content">
								<div class="pull-left">
									<a href=""><img class="pull-left" src="images/apple.png" height="35" width="35" alt="iOS"><span class="pull-right">Tải Về <br/>iOS</span></a>
								</div>
								<div class="pull-left">
									<a href=""><img class="pull-left" src="images/android.png" height="30" width="30" alt="android"><span class="pull-right">Tải về <br/>Android</span></a>
								</div>
								<div class="pull-left">
									<a href=""><img class="pull-left" src="images/winphone.png" height="30" width="30" alt="windowphone"><span class="pull-right">Tải Về <br/>Winphone</span></a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="statistics">
							<div class="header-title-aside">
								<h4>Thống kê</h4>
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
						<img src="images/aside-banner.jpg" class="img-responsive" alt="aside-banner">
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
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