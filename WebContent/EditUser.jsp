<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Edit User</title>
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
		<form id="form" action="ControlerEditUser" method="post">

			<div class="form-group">
				<label for="exampleInputEmail1">Họ và tên</label> <input
					name="hovaten" type="text" class="form-control"
					placeholder="Họ và tên" required
					value="<%ServletContext context = getServletContext();
			out.print(context.getAttribute("hoten"));%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					name="email" type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter email"
					value="<%ServletContext context1 = getServletContext();
			out.print(context1.getAttribute("dcMail"));%>"
					required>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Ngày sinh</label> <input
					name="Ngaysinh" type="text" class="form-control"
					placeholder="Ngày Sinh"
					value="<%ServletContext context2 = getServletContext();
			out.print(context2.getAttribute("sn"));%>"
					required>
			</div>
			<div class="form-check">
				<label class="form-check-label"> <label><u>Giới
							Tính</u> </label><br> <%if(context2.getAttribute("Sex").equals("Men")) {%>
					<input type="radio" name="GioiTinh" value="Men"
					class="form-check-input" required checked> Nam <input
					type="radio" name="GioiTinh" value="Women" class="form-check-input"
					style="margin-left: 15px;" required> Nữ <%}
							else{ %> <input
					type="radio" name="GioiTinh" value="Men" class="form-check-input"
					required> Nam <input type="radio" name="GioiTinh"
					value="Women" class="form-check-input" style="margin-left: 15px;"
					checked required> Nữ <%} %>
				</label>
			</div>

			<div class="form-check">
				<label class="form-check-label"> <label><u>Class ID</u> </label><br> 
				<%if(context2.getAttribute("Malop").equals("CL0")) {%>
						<input type="radio" name="ClassID" value="CL0" checked class="form-check-input" required> Không phải là học sinh
						<input type="radio"name="ClassID" value="CL1" class="form-check-input" style="margin-left: 15px;" required> Lớp 3501
						<input type="radio"name="ClassID" value="CL2" class="form-check-input" style="margin-left: 15px;" required> Lớp 3502
						<input type="radio"name="ClassID" value="CL3" class="form-check-input" style="margin-left: 15px;" required> Lớp 3503
						<input type="radio"name="ClassID"  value="CL4"class="form-check-input" style="margin-left: 15px;" required> Lớp 3504 <%}
				else if(context2.getAttribute("Malop").equals("CL1")){%>
				<input type="radio" name="ClassID" value="CL0"  class="form-check-input" required> Không phải là học sinh
						<input type="radio"name="ClassID" value="CL1" checked class="form-check-input" style="margin-left: 15px;" required> Lớp 3501
						<input type="radio"name="ClassID" value="CL2" class="form-check-input" style="margin-left: 15px;" required> Lớp 3502
						<input type="radio"name="ClassID" value="CL3" class="form-check-input" style="margin-left: 15px;" required> Lớp 3503
						<input type="radio"name="ClassID"  value="CL4"class="form-check-input" style="margin-left: 15px;" required> Lớp 3504 <%}
				else if(context2.getAttribute("Malop").equals("CL2")){%>
				<input type="radio" name="ClassID" value="CL0"  class="form-check-input" required> Không phải là học sinh
						<input type="radio"name="ClassID" value="CL1" class="form-check-input" style="margin-left: 15px;" required> Lớp 3501
						<input type="radio"name="ClassID" value="CL2" checked class="form-check-input" style="margin-left: 15px;" required> Lớp 3502
						<input type="radio"name="ClassID" value="CL3" class="form-check-input" style="margin-left: 15px;" required> Lớp 3503
						<input type="radio"name="ClassID"  value="CL4"class="form-check-input" style="margin-left: 15px;" required> Lớp 3504 <%}
				else if(context2.getAttribute("Malop").equals("CL3")){ %>
				<input type="radio" name="ClassID" value="CL0"  class="form-check-input" required> Không phải là học sinh
						<input type="radio"name="ClassID" value="CL1" class="form-check-input" style="margin-left: 15px;" required> Lớp 3501
						<input type="radio"name="ClassID" value="CL2" class="form-check-input" style="margin-left: 15px;" required> Lớp 3502
						<input type="radio"name="ClassID" value="CL3" checked class="form-check-input" style="margin-left: 15px;" required> Lớp 3503
						<input type="radio"name="ClassID"  value="CL4"class="form-check-input" style="margin-left: 15px;" required> Lớp 3504
						<%}else{ %>
						<input type="radio" name="ClassID" value="CL0"  class="form-check-input" required> Không phải là học sinh
						<input type="radio"name="ClassID" value="CL1"  class="form-check-input" style="margin-left: 15px;" required> Lớp 3501
						<input type="radio"name="ClassID" value="CL2" class="form-check-input" style="margin-left: 15px;" required> Lớp 3502
						<input type="radio"name="ClassID" value="CL3"  class="form-check-input" style="margin-left: 15px;" required> Lớp 3503
						<input type="radio"name="ClassID"  value="CL4" checked class="form-check-input" style="margin-left: 15px;" required> Lớp 3504
						<%} %>
				</label>
			</div>


			<div class="form-check">
				<label class="form-check-label"> <label><u>Role</u>
				</label><br> <input type="radio" name="Role" value="HOCS"
					class="form-check-input" required> Học Sinh <input
					type="radio" name="Role" value="QLKT" class="form-check-input"
					style="margin-left: 15px;" required> Giáo Viên
				</label>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>


	<div class="col-md-12"
		style="background-color: #EEEEEE; min-height: 100px;">
		<center>
			<h5>Copyright © 2017 By LTD</h5>
		</center>
		<br>
		<center>
			<div class="btn-group" role="group" aria-label="Basic example">
				<a href="#" style="color: grey;">Trở về đầu trang</a> <a></a> <a
					href="#" style="color: grey; margin: 5px;">Điều khoản và dịch
					vụ</a>

			</div>
		</center>
	</div>

</body>
</html>