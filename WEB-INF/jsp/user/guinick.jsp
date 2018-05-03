


<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Quên mật khẩu</title>
	<base href="${pageContext.servletContext.contextPath}/">
	
	<script src="js/jquery.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/login.css" rel="stylesheet"/>
	<script src="js/bootstrap.min.js"></script>
        <script src="js/main_1.js"></script>
        
</head>

<header>
Quên mật khẩu H.Company
</header>
<div class="login">
<i ripple>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
<path fill="#C7C7C7" d="m12,2c-5.52,0-10,4.48-10,10s4.48,10,10,10,10-4.48,10-10-4.48-10-10-10zm1,17h-2v-2h2zm2.07-7.75-0.9,0.92c-0.411277,0.329613-0.918558,0.542566-1.20218,1.03749-0.08045,0.14038-0.189078,0.293598-0.187645,0.470854,0.02236,2.76567,0.03004-0.166108,0.07573,1.85002l-1.80787,0.04803-0.04803-1.0764c-0.02822-0.632307-0.377947-1.42259,1.17-2.83l1.24-1.26c0.37-0.36,0.59-0.86,0.59-1.41,0-1.1-0.9-2-2-2s-2,0.9-2,2h-2c0-2.21,1.79-4,4-4s4,1.79,4,4c0,0.88-0.36,1.68-0.930005,2.25z"/>
</svg>
</i>
<div class="photo">
</div>
    <style>
        .giatri1{
            color:red;
            font-size: 16px;
        }
    </style>
<span>Chưa có tài khoản nhấn <a href="user/register.htm">Tạo tài khoản</a></span>
	<form action="user/guinick.htm" method="post">
		<div class="form-group">
                    <div class="giatri1"><p>Vui lòng nhập đúng username để mật khẩu có thể gửi về email</p></div>
			<label>Nhập Username</label>
			<input name="id" class="form-control"/>
                </div>
		
		<div class="form-group">
			<button class="btn btn-default">Tìm</button>
                     

		</div>
            
	
</form>

</div>

<p class="copyright">
	H.Company 2018
</p> 