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
    <link href="admin/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
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
                    <c:if test="${sessionScope.userSession.groupId =='QL'}">
                    <div class="navbar-brand">
                        <a href="admin-index.jsp" class="logo">
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
                    </c:if>
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
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="history"
                                aria-expanded="false">
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
                        <h4 class="page-title">Bảng điều khiển</h4>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Trang chủ</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Bảng điều khiển</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Tỷ lệ bán hàng</h4>
                                <div class="sales ct-charts mt-3"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title mb-1">Thu nhập</h5>
                                <h3 class="font-light">$769.08</h3>
                                <div class="mt-3 text-center">
                                    <div id="earnings"></div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-0">Người dùng</h4>
                                <h2 class="font-light">35,658 <span class="font-16 text-success font-medium">+23%</span>
                                </h2>
                                <div class="mt-4">
                                    <div class="row text-center">
                                        <div class="col-6 border-right">
                                            <h4 class="mb-0">58%</h4>
                                            <span class="font-14 text-muted">New Users</span>
                                        </div>
                                        <div class="col-6">
                                            <h4 class="mb-0">42%</h4>
                                            <span class="font-14 text-muted">Repeat Users</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- column -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Latest Sales</h4>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th class="border-top-0">NAME</th>
                                            <th class="border-top-0">STATUS</th>
                                            <th class="border-top-0">DATE</th>
                                            <th class="border-top-0">PRICE</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>

                                            <td class="txt-oflo">Elite admin</td>
                                            <td><span class="label label-success label-rounded">SALE</span> </td>
                                            <td class="txt-oflo">April 18, 2021</td>
                                            <td><span class="font-medium">$24</span></td>
                                        </tr>
                                        <tr>

                                            <td class="txt-oflo">Real Homes WP Theme</td>
                                            <td><span class="label label-info label-rounded">EXTENDED</span></td>
                                            <td class="txt-oflo">April 19, 2021</td>
                                            <td><span class="font-medium">$1250</span></td>
                                        </tr>
                                        <tr>

                                            <td class="txt-oflo">Ample Admin</td>
                                            <td><span class="label label-purple label-rounded">Tax</span></td>
                                            <td class="txt-oflo">April 19, 2021</td>
                                            <td><span class="font-medium">$1250</span></td>
                                        </tr>
                                        <tr>

                                            <td class="txt-oflo">Medical Pro WP Theme</td>
                                            <td><span class="label label-success label-rounded">Sale</span></td>
                                            <td class="txt-oflo">April 20, 2021</td>
                                            <td><span class="font-medium">-$24</span></td>
                                        </tr>
                                        <tr>

                                            <td class="txt-oflo">Hosting press html</td>
                                            <td><span class="label label-success label-rounded">SALE</span></td>
                                            <td class="txt-oflo">April 21, 2021</td>
                                            <td><span class="font-medium">$24</span></td>
                                        </tr>
                                        <tr>

                                            <td class="txt-oflo">Digital Agency PSD</td>
                                            <td><span class="label label-danger label-rounded">Tax</span> </td>
                                            <td class="txt-oflo">April 23, 2021</td>
                                            <td><span class="font-medium">-$14</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- column -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Recent Comments</h4>
                            </div>
                            <div class="comment-widgets" style="height:430px;">
                                <!-- Comment Row -->
                                <div class="d-flex flex-row comment-row mt-0">
                                    <div class="p-2">
                                        <img src="admin/assets/images/users/1.jpg" alt="user" width="50"
                                            class="rounded-circle">
                                    </div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">James Anderson</h6>
                                        <span class="mb-3 d-block">Lorem Ipsum is simply dummy text of the printing
                                            and type setting industry. </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-end">April 14, 2021</span>
                                            <span class="label label-rounded label-primary">Pending</span>
                                            <span class="action-icons">
                                                <a href="javascript:void(0)">
                                                    <i class="ti-pencil-alt"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-check"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-heart"></i>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2">
                                        <img src="admin/assets/images/users/4.jpg" alt="user" width="50" class="rounded-circle">
                                    </div>
                                    <div class="comment-text active w-100">
                                        <h6 class="font-medium">Michael Jorden</h6>
                                        <span class="mb-3 d-block">Lorem Ipsum is simply dummy text of the printing  and type setting industry. </span>
                                        <div class="comment-footer ">
                                            <span class="text-muted float-end">April 14, 2021</span>
                                            <span class="label label-success label-rounded">Approved</span>
                                            <span class="action-icons active">
                                                <a href="javascript:void(0)">
                                                    <i class="ti-pencil-alt"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="icon-close"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-heart text-danger"></i>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2">
                                        <img src="admin/assets/images/users/5.jpg" alt="user" width="50" class="rounded-circle">
                                    </div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">Johnathan Doeting</h6>
                                        <span class="mb-3 d-block">Lorem Ipsum is simply dummy text of the printing and type setting industry. </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-end">April 14, 2021</span>
                                            <span class="label label-rounded label-danger">Rejected</span>
                                            <span class="action-icons">
                                                <a href="javascript:void(0)">
                                                    <i class="ti-pencil-alt"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-check"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-heart"></i>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex flex-row comment-row mt-0">
                                    <div class="p-2">
                                        <img src="admin/assets/images/users/2.jpg" alt="user" width="50" class="rounded-circle">
                                    </div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium">Steve Jobs</h6>
                                        <span class="mb-3 d-block">Lorem Ipsum is simply dummy text of the printing and type setting industry. </span>
                                        <div class="comment-footer">
                                            <span class="text-muted float-end">April 14, 2021</span>
                                            <span class="label label-rounded label-primary">Pending</span>
                                            <span class="action-icons">
                                                <a href="javascript:void(0)">
                                                    <i class="ti-pencil-alt"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-check"></i>
                                                </a>
                                                <a href="javascript:void(0)">
                                                    <i class="ti-heart"></i>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Temp Guide</h4>
                                <div class="d-flex align-items-center flex-row mt-4">
                                    <div class="display-5 text-info"><i class="wi wi-day-showers"></i>
                                        <span>73<sup>°</sup></span></div>
                                    <div class="ms-2">
                                        <h3 class="mb-0">Saturday</h3><small>Ahmedabad, India</small>
                                    </div>
                                </div>
                                <table class="table no-border mini-table mt-3">
                                    <tbody>
                                        <tr>
                                            <td class="text-muted">Wind</td>
                                            <td class="font-medium">ESE 17 mph</td>
                                        </tr>
                                        <tr>
                                            <td class="text-muted">Humidity</td>
                                            <td class="font-medium">83%</td>
                                        </tr>
                                        <tr>
                                            <td class="text-muted">Pressure</td>
                                            <td class="font-medium">28.56 in</td>
                                        </tr>
                                        <tr>
                                            <td class="text-muted">Cloud Cover</td>
                                            <td class="font-medium">78%</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <ul class="row list-style-none text-center mt-4">
                                    <li class="col-3">
                                        <h4 class="text-info"><i class="wi wi-day-sunny"></i></h4>
                                        <span class="d-block text-muted">09:30</span>
                                        <h3 class="mt-1">70<sup>°</sup></h3>
                                    </li>
                                    <li class="col-3">
                                        <h4 class="text-info"><i class="wi wi-day-cloudy"></i></h4>
                                        <span class="d-block text-muted">11:30</span>
                                        <h3 class="mt-1">72<sup>°</sup></h3>
                                    </li>
                                    <li class="col-3">
                                        <h4 class="text-info"><i class="wi wi-day-hail"></i></h4>
                                        <span class="d-block text-muted">13:30</span>
                                        <h3 class="mt-1">75<sup>°</sup></h3>
                                    </li>
                                    <li class="col-3">
                                        <h4 class="text-info"><i class="wi wi-day-sprinkle"></i></h4>
                                        <span class="d-block text-muted">15:30</span>
                                        <h3 class="mt-1">76<sup>°</sup></h3>
                                    </li>
                                </ul>
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
    <script src="admin/dist/js/custom.min.js"></script>>
    <script src="admin/assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="admin/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="admin/dist/js/pages/dashboards/dashboard1.js"></script>
</body>

</html>