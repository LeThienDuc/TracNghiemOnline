<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Đăng Nhập</title>
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
<script type="text/javascript">
 
    $(document).ready(function() {
 
        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $("#form").validate({
            rules: {
            	Tendangnhap: "required",
            	password: "required",
            	
                Role : "required"
                }
            },
            messages: {
            	Tendangnhap: "Vui lòng nhập tên đăng nhập !!",
            	password: "Vui lòng nhập mật khẩu !!!",
            	
                Role : "Vui lòng chọn chức vụ !!"
            }
        });
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
		<div class="row">
			<div class="col-md-12">
			<div class="col-md-4 col-md-offset-4" style="margin-top:120px;">
				<form id="form" action="ControlerLogin" method="get">
					<div class="form-group">
					
						<label for="exampleInputEmail1">Tên đăng nhập</label> <input
							name="Tendangnhap" type="text" class="form-control" placeholder="Tên Đăng nhập" autofocus required> 
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input name="password"
							type="password" class="form-control" 
							placeholder="Password" required>
					</div>
					
					<div class="form-check">
						<label class="form-check-label"> 
						<label>Role </label><br>
						<input type="radio" name="Role"   class="form-check-input" value="ADMI"  required> Admin
						<input type="radio" name="Role"class="form-check-input" value="HOCS" style="margin-left: 15px;" required> Học Sinh
						<input type="radio"name="Role" value="QLKT" class="form-check-input" style="margin-left: 15px;" required> Giáo Viên
						<input type="radio"name="Role" value="QLCH" class="form-check-input" style="margin-left: 15px;" required> Quản lí câu hỏi
						</label>
					</div>
					<button type="submit" class="btn btn-primary" >Submit</button>
				</form>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-12"
		style="background-color: #EEEEEE; min-height: 100px;margin-top: 120px;">
		<center style="margin-top: 10px;">
			<h5 >Copyright © 2017 By LTD</h5>
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