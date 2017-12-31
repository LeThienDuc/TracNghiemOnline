<%@page import="Models.ConnDB"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Quanr Lí Kì Thi</title>
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
<style>
body {
	position: relative;
}

ul.nav-pills {
	top: 200px;
	left: 10px;
	position: fixed;
}
</style>
</head>
<body>
	<%ServletContext context = getServletContext(); %>
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
							onclick="location.href='Dangki.jsp.jsp';">Đăng kí</button>

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
	
	<div class="container-fluid">
			<nav class="col-sm-3 col-md-2 col-2" id="myScrollspy">
			<ul class="nav nav-pills flex-column">
				<li class="nav-item"><a class="nav-link active"
					href="#CHAV" style="color: #0d0003; font-size:18.5px;">Quản lí Kì Thi</a></li>
				<br>
				<li class="nav-item"><a class="nav-link" href="TrangCaNhan_GV.jsp" style="color: #0d0003; font-size:18.5px;">Trang cá nhân</a></li>
				<br>
				<li class="nav-item"><a class="nav-link" href="index.jsp?UserID=0" style="color: #0d0003; font-size:18.5px;">Đăng Xuất</a></li>
			</ul>
			</nav>
			<div class="col-sm-9 col-md-10 col-10" style="height: 500px;">
				<div id="CHAV" class="bg-success"
					style="width: 100%; height: 500px;">
					<center>
						<h1>Danh Sách Các kì thi</h1>
					</center>
					<!-- danh sách các câu hỏi -->
					<div id="Danhsach" data-offset="0"
						style="width: 100%; max-height: 390px; overflow: auto;">
						<%
							Models.ConnDB con1 = new ConnDB();
							ResultSet rs1 = con1.chonDuLieu("select * from exam where exam.UserID = '"+context.getAttribute("UserID")+"';");
						%>
						<table class="table table-bordered">
							<thead>
								<tr>
									<td><b>ExamID</b></td>
									<td><b>Exam Name</b></td>
									<td><b>SubID</b></td>
									<td><b>Time: </b></td>
									<td><b>Date open</b></td>
									<td><b>Date End</b></td>
									<td><b>Sum Question</b></td>
									<td><b>UserID</b></td>
								</tr>
							</thead>
							<thead class="thead-dark">
							<tbody>

								<%
									while (rs1.next()) {
								%>
								<tr>
									<td><%=rs1.getString(1)%></td>
									<td><%=rs1.getString(2)%></td>
									<td><%=rs1.getString(3)%></td>
									<td><%=rs1.getString(4)%></td>
									<td><%=rs1.getString(5)%></td>
									<td><%=rs1.getString(6)%></td>
									<td><%=rs1.getString(7)%></td>
									<td><%=rs1.getString(8)%></td>
									<td>
										<!-- Edit Kì Thi --> 
										<a href="ControlerEditExam?ID=<%=rs1.getString(1)%>">
											<button class="btn btn-warning">Edit</button>
										</a>
										</div> <!-- Modal Xóa kì thi--> <b>|</b>
										<button type="button" class="btn btn-danger"
											data-toggle="modal" data-target="#XoaCH">Xóa</button> <!-- The Modal -->
										<div class="modal fade" id="XoaCH">
											<div class="modal-dialog">
												<div class="modal-content" style="height: 250px;">
													<button type="button" class="close" data-dismiss="modal"
														style="margin: 15px">&times;</button>
													<h3 class="modal-title"
														style="color: #999999; margin: 10px">Xóa câu hỏi!</h3>

													<hr>
													<br>
													<h4 style="height: 18px; margin: 15px;">Nếu xóa kì thi này, bạn sẽ xóa tất cả dữ liệu về kì thi này!</h4>
													<h4 style="height: 18px; margin: 15px; text-align: right;">Hãy
														thận trọng!!</h4>
													<br>
													<div style="margin-left: 75%">
														<a href="ControlerDeleteExam?ID=<%=rs1.getString(1)%>"><button
																class="btn btn-danger">Xóa</button></a>
														<button type="button" class="btn btn-secondary"
															data-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<%
									}
								%>

							</tbody>

						</table>

					</div>
						<!-- Button thêm  -->
						<button type="button" class="btn btn-primary" data-toggle="modal"
							style="margin-left: 75%" data-target="#ThemKT">Tạo kì thi</button>

						<!-- Modal Button Thêm -->

						<div class="modal fade bd-example-modal-lg" id="ThemKT"
							tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
							aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">

									<div class="modal-header">
										<h3 class="modal-title" id="exampleModalLabel">Tạo kì thi</h3>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>

									<div class="modal-body">
										<form id="form" action="ControlerAddExam" method="post">
											<div class="form-group">
												<label for="exampleInputEmail1">Tên Kì thi <label> 
												<input name="ExamName" type="text" class="form-control" required> 
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Thời Gian Thi <label>
												<input name="TimeText" type="text" class="form-control" required> 
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Ngày mở <label>
												<input name="TimeOpen" type="text" class="form-control" required> 
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Ngày Đóng <label>
												<input name="TimeClose" type="text" class="form-control" required> 
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Số câu hỏi<label>
												<input name="SumQuestion" type="text" class="form-control" required> 
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">UserID : <label>
												<input name="UserID" type="text" class="form-control" value="<%=context.getAttribute("UserID")%>" required> 
											</div>
											<div class="form-check">
												<label class="form-check-label"> 
													<label>Subject </label>
													<input type="radio" name="SubID"class="form-check-input" value="AV"required> Anh Văn
													<input type="radio" name="SubID"class="form-check-input" value="TO"required> Toán
													<input type="radio" name="SubID"class="form-check-input" value="TV"required> Tiếng Việt
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label"> 
													<label>Class </label>
													<input type="radio" name="ClassID"class="form-check-input" value="CL1"required> 3501
													<input type="radio" name="ClassID"class="form-check-input" value="CL2"required> 3502
													<input type="radio" name="ClassID"class="form-check-input" value="CL3"required> 3503
													<input type="radio" name="ClassID"class="form-check-input" value="CL4"required> 3504
												</label>
											</div>
											<button type="submit" class="btn btn-primary">Tạo kì thi</button></a>
										</form>
									</div>
								</div>
							</div>
						</div>
				</div>
				</div>
		</div>
	</div>
	</div>
</body>
</html>