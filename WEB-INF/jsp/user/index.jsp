
<%-- 
    Document   : newjsp
    Created on : Apr 4, 2018, 12:42:12 PM
    Author     : hieuhayho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href='//maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css' rel='stylesheet'/>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content=""> 

        <title>Admin Panel</title> 
        <base href="${pageContext.servletContext.contextPath}/">

        <!-- Bootstrap Core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- DataTables CSS -->
        <link href="vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>a:active{position:relative;top:1px;left:1px}
            #all-button{text-align:center}
            #all-button a{padding:10px 20px;color:#fff;text-align:center;border:0;cursor:pointer;border-radius:3px;display:inline-block;font-weight:500;-webkit-box-shadow:inset 0 -4px rgba(0,0,0,0.15);box-shadow:inset 0 -4px rgba(0,0,0,0.15);color:#fff;max-width:220px;line-height:30px;font-size:16px;text-transform: uppercase;margin:10px}
            #all-button a:hover{-webkit-box-shadow:inset 0 -54px rgba(0,0,0,0.15);box-shadow:inset 0 -54px rgba(0,0,0,0.15);color:#fff}
            .demo-button:before{content:'\f1d9';font-family:fontawesome;display:inline-block;margin:0 8px 3px 0;vertical-align:middle}
            .download-button:before{content:'\f019';font-family:fontawesome;display:inline-block;margin:0 8px 3px 0;vertical-align:middle}
            .buy-button:before{content:'\f07a';font-family:fontawesome;display:inline-block;margin:0 8px 3px 0;vertical-align:middle}
            .blue{background:#3498db;}
            .green{background:#2ecc71}
            .red{background:#e74c3c}
            .orange{background:#e8930c}
            .purple{background:#9b59b6}
            .yellow{background:#FFD600}
            .pink{background:#F889EB}
            .grey{background:#bdc3c7}
            .turquoise{background:#1abc9c}
            .midnight{background:#2c3e50}
            .asbestos{background:#6d7b7c}
            .dark{background:#454545}</style>
    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"></a><img src="img/logo.png" width="130px" height="50px"/>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>Admin</strong>
                                        <span class="pull-right text-muted">
                                            <em>Bây giờ</em>
                                        </span>
                                    </div>
                                    <div>Chào mừng bạn đến với H.Company</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>H.Company</strong>
                                        <span class="pull-right text-muted">
                                            <em>Bây giờ</em>
                                        </span>
                                    </div>
                                    <div>H.Company được thành lập 2018, là công ty đang phát triển về mảng công nghệ thông tin</div>
                                </a>
                            </li>

                            <!--  <li>
                          <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a> 
                            </li>-->
                        </ul>
                        <!-- /.dropdown-messages -->
                    </li>
                    <!-- /.dropdown -->

                    <!-- /.dropdown-tasks -->
                    </li>
                    <!-- /.dropdown -->


                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <img src="img/admin.png"/> <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                               <li><a href="user/detail/${user.id}.htm"><i class="fa fa-user fa-fw"></i> Chào ${user.id}</a>
                            
                            <li><a href="user/change.htm"><i class="fa fa-gear fa-fw"></i> Đổi mật khẩu</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Thoát</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                             <li>

                                <a href="user/index.htm"><img src="img/home.png"/> Chung </a>
                            </li>
                            <li>
                                <a href="#"><img src="img/phongban.png"/> Phòng Ban<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="major.htm"> <img src="img/dot.png"> Cập nhật PB</a> 
                                    </li>
                                    <li>
                                        <a href="phongban/kinhdoanh.htm"> <img src="img/dot.png"> Kinh Doanh</a> 
                                    </li>
                                    <li>
                                        <a href="phongban/ketoan.htm"> <img src="img/dot.png"> Kế Toán</a>
                                    </li>
                                    <li>
                                        <a href="phongban/nhansu.htm"> <img src="img/dot.png"> Nhân Sự</a>
                                    </li>
                                    <li>
                                        <a href="phongban/it.htm"> <img src="img/dot.png"> IT</a>
                                    </li>
                                    <li>
                                        <a href="phongban/truyenthong.htm"> <img src="img/dot.png"> Truyền Thông</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="student.htm"><img src="img/nv.png"/>  Nhân Viên</a>
                            </li>
                            <li>
                                <a href="user/list.htm"><img src="img/dk.png"/> Toàn Khoản</a>
                            </li>
                           <li>
                                <a href="top.htm"><img src="img/thanhtich.png"/> NV Xuất Sắc</a>
                            </li>
                           <li>
                                <a href="ktkl.htm"><img src="img/kyluat.png"/> Khen Thưởng & Kỹ Luật</a>
                            </li>
                            <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><img src="img/tuychon.png"/> Tùy Chọn<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="user/change.htm"> <img src="img/doipass.png"> Đổi mật khẩu</a>
                                    </li>
                                    <li>
                                        <a href="user/bl.htm"><img src="img/baoloi.png"> Báo Lỗi</a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="img/exit.png"> Thoát</a>
                                    </li>

                                    <!-- /.nav-second-level -->
                            </li>

                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">H.Company - Website quản lý nhân viên</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div id="all-button">
                                    <a href="bosung.htm" class="green" target="_blank" rel="nofollow">Bổ sung info</a>
                                    <a href="top.htm" class="orange" target="_blank" rel="nofollow">NV xuất sắc</a>
                                    <a href="report/by-major.htm" class="blue" target="_blank" rel="nofollow">Điểm thưởng PB</a></div>
                                <!-- /.table-responsive -->

                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <img src="img/thongbaovn.png"> Thông tin H.Company
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>



                                            </tr>
                                        </thead>
                                        <style>
                                            .ngon a{
                                                text-align: center;
                                            }
                                        </style>
                                        <tbody>
                                        <img src="img/logo.png">
                                        <a class="ngon"> H.Company là công ty công nghệ & truyền thông</a> </br>
                                        <b>Địa chỉ :</b> 391A Nam Kỳ Khởi Nghĩa, Q3, TP.HCM</br>
                                        <b>Hotline :</b> 0963994337</br>
                                        <b>Thành lập :</b> 2018 bởi Hieuhayho</br>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-6 -->
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <img src="img/nhat.png">  TOP 5 nhân viên suất xắc
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Họ và tên</th>
                                                <th>Phòng ban</th>
                                                <th>Điểm</th>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="m" items="${students}">
                                                <tr>

                                                    <td>${m.fullname}</td>
                                                    <td>${m.major.name}</td>
                                                    <td>${m.mark}</td>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-6 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                 <img src="img/top.png"> IT xuất sắc nhất
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>

                                        <th>Họ và tên</th>
                                                <th>Phòng ban</th>
                                                <th>Điểm</th>
                                                   <th>Tiền thưởng</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                             <c:forEach var="m" items="${students2}">
                                                <tr>

                                                    <td>${m.fullname}</td>
                                                    <td>${m.major.name}</td>
                                                    <td>${m.mark}</td>
                                                    <td>${m.mark*10000} VNĐ</td>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-6 -->
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <img src="img/top.png">   Kế toán xuất sắc nhất
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive table-bordered">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Họ và tên</th>
                                                <th>Phòng ban</th>
                                                <th>Điểm</th>
                                                   <th>Tiền thưởng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="m" items="${students1}">
                                                <tr>

                                                    <td>${m.fullname}</td>
                                                    <td>${m.major.name}</td>
                                                    <td>${m.mark}</td>
                                                    <td>${m.mark*10000} VNĐ</td>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-6 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <img src="img/top.png">   Truyền thông xuất sắc nhất
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                 <th>Họ và tên</th>
                                                <th>Phòng ban</th>
                                                <th>Điểm</th>
                                                   <th>Tiền thưởng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           <c:forEach var="m" items="${students3}">
                                                <tr>

                                                    <td>${m.fullname}</td>
                                                    <td>${m.major.name}</td>
                                                    <td>${m.mark}</td>
                                                    <td>${m.mark*10000} VNĐ</td>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-6 -->
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                               <img src="img/top.png">   Kinh doanh xuất sắc
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                  <th>Họ và tên</th>
                                                <th>Phòng ban</th>
                                                <th>Điểm</th>
                                                   <th>Tiền thưởng</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="m" items="${students4}">
                                                <tr>

                                                    <td>${m.fullname}</td>
                                                    <td>${m.major.name}</td>
                                                    <td>${m.mark}</td>
                                                    <td>${m.mark*10000} VNĐ</td>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                      <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                               <img src="img/top.png">   Nhân sự xuất sắc nhất
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                  <th>Họ và tên</th>
                                                <th>Phòng ban</th>
                                                <th>Điểm</th>
                                                   <th>Tiền thưởng</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="m" items="${students5}">
                                                <tr>

                                                    <td>${m.fullname}</td>
                                                    <td>${m.major.name}</td>
                                                    <td>${m.mark}</td>
                                                    <td>${m.mark*10000} VNĐ</td>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                    <!-- /.col-lg-6 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="vendor/metisMenu/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
        <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="dist/js/sb-admin-2.js"></script>

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function () {
                $('#dataTables-example').DataTable({
                    responsive: true
                });
            });
        </script>

    </body>

    <footer>
        <hr>
        <style>
            .ft{width: auto;
                height: 80px;

                text-align: center;
            }       
        </style>
        <div class="ft">
            <p>H.Company - Công nghệ & Truyền thông</p>
            <p>Địa chỉ : 235/72 Nam Kỳ Khởi Nghĩa, Quận 3, TP.Hồ Chí Minh</p>
            <p>Email : domain3hvn@gmail.com</p>
        </div>
    </footer>
</html>


