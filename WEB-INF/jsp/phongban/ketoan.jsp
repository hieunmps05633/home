<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>



<%-- 
    Document   : newjsp
    Created on : Apr 4, 2018, 12:42:12 PM
    Author     : hieuhayho
--%>



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
        <style>
            .mes{
                color: red;
            }
        </style>
    </head>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.12&appId=146768799431337&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
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
                            </li>s
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
                               <img src="img/ketoan.png">  PHÒNG KẾ TOÁN <a link href="student_edit.htm"><button class="btn btn-default">Thêm nhân viên</button></a>
                            </div>
                            <!-- /.panel-heading -->
                            
                            <div class="panel-body">
                                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example" >
                                   
                                               
                                    <thead>
                                         
                                        <tr>
                                            
                                            <th>Mã NV</th>
                                            <th>Họ và tên</th>
                                            <th>Giới tính</th>
                                            <th>Ngày sinh</th>
                                            <th>Thưởng</th>
                                            <th>Phòng ban</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <c:forEach var="m" items="${students}">
                                        <tr>
                                            <td>${m.id}</td>
                                            <td>${m.fullname}</td>
                                            <td>${m.gender}</td>
                                            <td>${m.birthday}</td>
                                            <td>${m.mark}</td>
                                            <td>${m.major.name}</td>
                                            <td><a href="student_edit/${m.id}.htm">Sửa</a></td>
                                        </tr>
                                    </c:forEach>


                                    </tbody>    
                                </table>
                                 <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              <img src="img/top.png">   Nhân viên suất xắc nhất phòng
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
                                <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                               <img src="img/mes.png">   TRAO ĐỔI ONLINE
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive table-bordered">
                                    <table class="table">
                                     
                                        <tbody>
                                          
                                 <div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/commentsketoan" data-width="auto" data-numposts="10"></div>
                                           
                                        </tbody>
                                    </table>
                                </div>
                    <!-- /.col-lg-6 -->
                </div>
                            
                                <!-- /.table-responsive -->

                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

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


