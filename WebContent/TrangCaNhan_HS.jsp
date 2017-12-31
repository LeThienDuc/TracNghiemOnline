<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@page import="Models.ConnDB"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Trang Cá Nhân</title>
<link href="css/home.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>

<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
	$('#mycarousel').carousel({
		interval : 1000
	});
</script>
</head>
<body id="myPage">
	<div class="container-fluid">
		<div class="row">

			<!-- header -->
			<div class="col-md-12" id="header">


				<!-- logo -->

				<div class="col-md-12 col-sm-12 col-xs-12" id="khung-logo">
					<div class="logo">
						<div class="col-md-8" id="logo">
							<img src="img/tracNghiemOnline.vn-logo.png" alt="logo"
								class="logoo">
						</div>
						<div class="col-md-4">
							<div class="col-md-12 hidden-sm hidden-xs" id="canchinh"></div>
						</div>
						<div class="col-md-7 col-md-offset-5" id="lien-he">
							<a alt="hotline" class="hotline" id="sdt">Hotline: 1900.3508</a>
						</div>
					</div>
				</div>

				<!-- menu -->

				<div class="col-md-12 col-sm-12 col-xs-12" id="navbar">
					<div class="col-md-9">
						<button type="button" class="btn btn-info" id="btn-home"
							onclick="location.href='trangchu.jsp';">
							Home</a>
						</button>
						<button type="button" class="btn btn-info" id="btn-vaothi"
							onclick="location.href='Dangki.jsp';">Đăng kí</button>

						<button type="button" class="btn btn-info" id="btn-ketqua"
							onclick="location.href='Dangnhap.jsp';">Đăng nhập</button>

						<button type="button" class="btn btn-info" id="btn-huongdan"
							onclick="location.href='Gioithieu.jsp';">Giới thiệu</button>
					</div>
					<div class="col-md-3">
						<div class="input-group" id="input-search">
							<input type="text" class="form-control"
								placeholder="Search for..." aria-label="Search for...">
							<span class="input-group-btn">
								<button class="btn btn-secondary" type="button">
									<span class="glyphicon glyphicon-search"></span> Search
								</button>
							</span>
						</div>
					</div>
				</div>

				<!--  -->
			</div>
		</div>
		
	</div>
	<div class="col-md-12">
	
		<nav class="col-sm-3 col-md-2 col-2" id="myScrollspy">
			<ul class="list-group">
				<li class="list-group-item list-group-item-secondary"><%ServletContext context = getServletContext();%>
				<a class="link" style="color: #0d0003; font-size:18.5px;" href="ControlerChuyenTrangVaoThi?UserID=<%=context.getAttribute("UserID")%>& ExamID=<%=context.getAttribute("ExamID")%>"> Vào Thi </a>
				<br>
				<li class="list-group-item list-group-item-secondary">
				<a class="link" href="#p" style="color: #0d0003; font-size:18.5px;">Trang cá nhân</a></li>
				<li class="list-group-item list-group-item-secondary">
				<a class="link" href="#" style="color: #0d0003; font-size:18.5px;">Đăng Xuất</a></li>
			</ul>
			</nav>
			<div class="col-sm-9 col-md-10 col-10" >
					<div class="col-md-8">
						<div style="margin:40px;">
						<center>
							<div>
								<img src="${imgAvatar}" style="width: 200px; height: 200px;" />
							</div>
						</center>
					<div style="margin-top: 50px;">
						<center>
							<h2>Thông tin cá nhân</h2>
						</center>
						<label>Họ và tên : </label>
						<h3>     <%
						out.print(context.getAttribute("Name"));%></h3>
						<br> <label>Email: </label>
						<h3><%out.print(context.getAttribute("Emaill"));%></h3>
						<br> <label></label>
					</div>
						</div>
					</div>
			</div>

	</div>
	<div class="col-md-12"
		style="background-color: #EEEEEE; min-height: 100px;">
		<center>
			<h5>Copyright © 2017 By LTD</h5>
		</center>
		<br><center>
		<div class="btn-group" role="group" aria-label="Basic example" >
			<a href="#" style ="color: grey;">Trở về đầu trang</a>
			<a></a>
			<a href="#" style ="color: grey;margin:5px;">Điều khoản và dịch vụ</a>
			
		</div></center>
	</div>
</body>
</html>