<%@page import="Models.ConnDB"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Admin</title>
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
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" id="myTab" role="tablist">
		
			<li class="nav-item"><a class="nav-link active" id="home-tab"
				data-toggle="tab" href="#trangcanhan" role="tab"
				aria-controls="home" aria-selected="true">Trang Cá Nhân</a></li>
		
			<li class="nav-item"><a class="nav-link " id="messages-tab"
				data-toggle="tab" href="#QLHS" role="tab" aria-controls="messages"
				aria-selected="false">Quản lí học sinh</a></li>

			<li class="nav-item"><a class="nav-link" id="profile-tab"
				data-toggle="tab" href="#QLGV" role="tab" aria-controls="profile"
				aria-selected="false">Quản lí người tạo kì thi</a></li>



			<li class="nav-item"><a class="nav-link" id="messages-tab"
				data-toggle="tab" href="#QLCH" role="tab" aria-controls="messages"
				aria-selected="false">Quản lí ngân hàng câu hỏi</a></li>

			

			<li class="nav-item"><a class="nav-link" id="DangXuat"
				href="index.jsp?UserID=0" role="tab" aria-controls="settings"
				aria-selected="false">Đăng Xuất</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">

			<div class="tab-pane" id="trangcanhan" role="tabpanel"
				aria-labelledby="settings-tab" style="min-height: 300px;">
				<div class="col-md-12">
					<div class="col-md-6" style="height: 300px;">
						<center>

							<div>
								<img src="img/avatar.jpg" style="width: 200px; height: 200px;" />

							</div>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#UploadAvt">Thay Đổi ảnh đại diện</button>
						</center>
						<div class="modal" tabindex="-1" role="dialog" id="UploadAvt">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Thay đổi avatar</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<form method="post" action="UploadServlet"
											enctype="multipart/form-data">
											Select file to upload: <input type="file" name="uploadFile" />
											<br /> <br /> <input type="submit" value="Upload" />
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6"></div>
					<div style="margin-top: 50px;">
						<center>
							<h2>Thông tin cá nhân</h2>
						</center>
						<label>Họ và tên : </label>
						<h3><%ServletContext context = getServletContext();
			out.print(context.getAttribute("Name"));%></h3>
						<br> <label>Email: </label>
						<h3><%out.print(context.getAttribute("Emaill"));%></h3>
						<br> <label></label>
					</div>
				</div>
			</div>
			<!-- Quản lí học sinh -->

			<div class="tab-pane active" id="QLHS" role="tabpanel"
				aria-labelledby="home-tab">
				<br> <br> <label><h2>Danh sách các học sinh</h2></label>
				<div id="Danhsach" data-offset="0"
					style="width: 100%; max-height: 500px; overflow: auto;">

					<%
						Models.ConnDB con = new ConnDB();
						ResultSet rss = con.chonDuLieu("select * from tbl_User where RoleID= 'HOCS'");
					%>
					<table class="table table-bordered">
						<thead>
							<tr>
								<td><b>ID</b></td>
								<td><b>Họ Tên</b></td>
								<td><b>Email</b></td>
								<td><b>Ngày Sinh</b></td>
								<td><b>Giới Tính</b></td>
								<td><b>ClassID</b></td>
								<td><b>Note</b></td>
							</tr>
						</thead>
						<thead class="thead-dark">
						<tbody>

							<%
								while (rss.next()) {
							%>
							<tr>
								<td><%=rss.getString(1)%></td>

								<td><%=rss.getString(4)%></td>
								<%
									String rs = rss.getString(4);
								%>
								<td><%=rss.getString(5)%></td>
								<td><%=rss.getString(6)%></td>
								<td><%=rss.getString(7)%></td>
								<td><%=rss.getString(8)%></td>
								<td>
									<!-- Edit học sinh --> 
									<a href="ControlerEditUser?ID=<%=rss.getString(1)%>">
										<button class="btn btn-warning">Edit</button>
								</a>




									</div> <!-- Modal Xóa thành viên --> <b>|</b>
									<button type="button" class="btn btn-danger"
										data-toggle="modal" data-target="#XoaHS">Xóa</button>
									<div class="modal fade bd-example-modal-lg" id="XoaHS"
										tabindex="-1" role="dialog"
										aria-labelledby="myLargeModalLabel" aria-hidden="true">
										<div class="modal-dialog ">
											<div class="modal-content">
												<div class="modal-header">
													<center>
														<h3>Xóa Thành viên này?</h3>
													</center>
												</div>
												<div class="modal-body">
													<h4 style="margin-left: 15px;">
														Bạn có chắc là muốn xóa thành viên này hay không? <br>
														Sau khi xóa bạn sẽ không thể khôi phục lại được dữ liệu đã
														xóa
													</h4>
												</div>
												<div class="modal-footer">
													<a href="ColtrolerDeleteUser?ID=<%=rss.getString(1)%>"><button
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
					style="margin-left: 83%" data-target="#ThemHS">Thêm học
					sinh</button>

				<!-- Modal Button Thêm -->

				<div class="modal fade bd-example-modal-lg" id="ThemHS"
					tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
					aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">

							<div class="modal-header">
								<h3 class="modal-title" id="exampleModalLabel">Thêm Học
									Sinh</h3>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>

							<div class="modal-body">
								<form id="form" action="ControlerDangKi" method="post">
									<div class="form-group">
										<label for="exampleInputEmail1">Tên đăng nhập</label> <input
											name="Tendangnhap" type="text" class="form-control"
											placeholder="Tên Đăng nhập" required>
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Password</label> <input
											name="password" type="password" class="form-control"
											placeholder="Password" required>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Password Confirn</label> <input
											name="password-confirn" type="password" class="form-control"
											placeholder="Enter Password" required>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Họ và tên</label> <input
											name="hovaten" type="text" class="form-control"
											placeholder="Họ và tênp" required>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Email address</label> <input
											name="email" type="email" class="form-control"
											id="exampleInputEmail1" aria-describedby="emailHelp"
											placeholder="Enter email" required>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Ngày sinh</label> <input
											name="Ngaysinh" type="text" class="form-control"
											placeholder="Ngày Sinh" required>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <label><u>Giới
													Tính</u> </label><br> <input type="radio" name="GioiTinh"
											value="Men" class="form-check-input" required> Nam <input
											type="radio" name="GioiTinh" value="Women"
											class="form-check-input" style="margin-left: 15px;" required>
											Nữ
										</label>
									</div>

									<div class="form-check">
										<label class="form-check-label"> <label><u>Class
													ID</u> </label><br> <input type="radio" name="ClassID" value="CL1"
											class="form-check-input" style="margin-left: 15px;" required>
											Lớp 3501 <input type="radio" name="ClassID" value="CL2"
											class="form-check-input" style="margin-left: 15px;" required>
											Lớp 3502 <input type="radio" name="ClassID" value="CL3"
											class="form-check-input" style="margin-left: 15px;" required>
											Lớp 3503 <input type="radio" name="ClassID" value="CL4"
											class="form-check-input" style="margin-left: 15px;" required>
											Lớp 3504
										</label>
									</div>


									<div class="form-check">
										<label class="form-check-label"> <label><u>Role</u>
										</label><br> <input type="radio" name="Role" value="HOCS"
											class="form-check-input" required> Học Sinh
										</label>
									</div>
									<button type="submit" class="btn btn-primary">Thêm Học
										Sinh</button>
								</form>
							</div>
						</div>
					</div>
				</div>












			</div>



			<!-- Quản lí người tạo kì thi -->


			<div class="tab-pane" id="QLGV" role="tabpanel"
				aria-labelledby="profile-tab">
				<br> <br> <label><h2>Danh sách các Giáo Viên</h2></label>
				<div id="Danhsach" data-offset="0"
					style="width: 100%; max-height: 500px; overflow: auto;">
					<%
						Models.ConnDB con1 = new ConnDB();
						ResultSet rs1 = con1.chonDuLieu("select * from tbl_User where RoleID= 'QLKT'");
					%>
					<table class="table table-bordered">
						<thead>
							<tr>
								<td><b>ID</b></td>
								<td><b>Họ Tên</b></td>
								<td><b>Email</b></td>
								<td><b>Ngày Sinh</b></td>
								<td><b>Giới Tính</b></td>
								<td><b>ClassID</b></td>
								<td><b>Note</b></td>
							</tr>
						</thead>
						<thead class="thead-dark">
						<tbody>

							<%
								while (rs1.next()) {
							%>
							<tr>
								<td><%=rs1.getString(1)%></td>

								<td><%=rs1.getString(4)%></td>
								<td><%=rs1.getString(5)%></td>
								<td><%=rs1.getString(6)%></td>
								<td><%=rs1.getString(7)%></td>
								<td><%=rs1.getString(8)%></td>
								<td>
									<!-- Edit học sinh --> <a
									href="ControlerEditUser?ID=<%=rs1.getString(1)%>">
										<button class="btn btn-warning">Edit</button>
								</a>




									</div> <!-- Modal Xóa thành viên --> <b>|</b>
									<button type="button" class="btn btn-danger"
										data-toggle="modal" data-target="#XoaQLKT">Xóa</button>
									<div class="modal fade bd-example-modal-lg" id="XoaQLKT"
										tabindex="-1" role="dialog"
										aria-labelledby="myLargeModalLabel" aria-hidden="true">
										<div class="modal-dialog ">
											<div class="modal-content">
												<div class="modal-header">
													<center>
														<h3>Xóa Thành viên này?</h3>
													</center>
												</div>
												<div class="modal-body">
													<h4 style="margin-left: 15px;">
														Bạn có chắc là muốn xóa thành viên này hay không? <br>
														Sau khi xóa bạn sẽ không thể khôi phục lại được dữ liệu đã
														xóa
													</h4>
												</div>
												<div class="modal-footer">
													<a href="ColtrolerDeleteUser?ID=<%=rs1.getString(1)%>"><button
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


					<!-- Button thêm  -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						style="margin-left: 83%" data-target="#ThemQLKT">Thêm
						Giáo Viên</button>

					<!-- Modal Button Thêm -->

					<div class="modal fade bd-example-modal-lg" id="ThemQLKT"
						tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">

								<div class="modal-header">
									<h3 class="modal-title" id="exampleModalLabel">Thêm Học
										Sinh</h3>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>

								<div class="modal-body">
									<form id="form" action="ControlerDangKi" method="post">
										<div class="form-group">
											<label for="exampleInputEmail1">Tên đăng nhập</label> <input
												name="Tendangnhap" type="text" class="form-control"
												placeholder="Tên Đăng nhập" required>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Password</label> <input
												name="password" type="password" class="form-control"
												placeholder="Password" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Password Confirn</label> <input
												name="password-confirn" type="password" class="form-control"
												placeholder="Enter Password" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Họ và tên</label> <input
												name="hovaten" type="text" class="form-control"
												placeholder="Họ và tênp" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Email address</label> <input
												name="email" type="email" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												placeholder="Enter email" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Ngày sinh</label> <input
												name="Ngaysinh" type="text" class="form-control"
												placeholder="Ngày Sinh" required>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <label><u>Giới
														Tính</u> </label><br> <input type="radio" name="GioiTinh"
												value="Men" class="form-check-input" required> Nam <input
												type="radio" name="GioiTinh" value="Women"
												class="form-check-input" style="margin-left: 15px;" required>
												Nữ
											</label>
										</div>

										<div class="form-check">
											<label class="form-check-label"> <label><u>Class
														ID</u> </label><br> <input type="radio" name="ClassID"
												value="CL0" class="form-check-input"
												style="margin-left: 15px;" required> Không Phải là
												học sinh
											</label>
										</div>


										<div class="form-check">
											<label class="form-check-label"> <label><u>Role</u>
											</label><br> <input type="radio" name="Role" value="QLKT"
												class="form-check-input" required> Giáo viên
											</label>
										</div>
										<button type="submit" class="btn btn-primary">Thêm
											Giáo Viên</button>
									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>




			<!-- Quản lí Người quản lí ngân hàng câu hỏi -->
			<div class="tab-pane" id="QLCH" role="tabpanel"
				aria-labelledby="messages-tab">

				<br> <br> <label><h2>Danh sách các Quản trị
						nội dung</h2></label>
				<div id="Danhsach" data-offset="0"
					style="width: 100%; height: 150px; overflow: auto;">
					<%
						Models.ConnDB con2 = new ConnDB();
						ResultSet rs2 = con2.chonDuLieu("select * from tbl_User where RoleID= 'QLCH'");
					%>

					<table class="table table-bordered">
						<thead>
							<tr>
								<td><b>ID</b></td>
								<td><b>Họ Tên</b></td>
								<td><b>Email</b></td>
								<td><b>Ngày Sinh</b></td>
								<td><b>Giới Tính</b></td>
								<td><b>ClassID</b></td>
								<td><b>Note</b></td>
							</tr>
						</thead>
						<thead class="thead-dark">
						<tbody>

							<%
								while (rs2.next()) {
							%>
							<tr>
								<td><%=rs2.getString(1)%></td>

								<td><%=rs2.getString(4)%></td>
								<td><%=rs2.getString(5)%></td>
								<td><%=rs2.getString(6)%></td>
								<td><%=rs2.getString(7)%></td>
								<td><%=rs2.getString(8)%></td>
								<td>
									<!-- Edit học sinh --> <a
									href="ControlerEditUser?ID=<%=rs2.getString(1)%>">
										<button class="btn btn-warning">Edit</button>
								</a>




									</div> <!-- Modal Xóa thành viên --> <b>|</b>
									<button type="button" class="btn btn-danger"
										data-toggle="modal" data-target="#XoaQLCH">Xóa</button>
									<div class="modal fade bd-example-modal-lg" id="XoaQLCH"
										tabindex="-1" role="dialog"
										aria-labelledby="myLargeModalLabel" aria-hidden="true">
										<div class="modal-dialog ">
											<div class="modal-content">
												<div class="modal-header">
													<center>
														<h3>Xóa Thành viên này?</h3>
													</center>
												</div>
												<div class="modal-body">
													<h4 style="margin-left: 15px;">
														Bạn có chắc là muốn xóa thành viên này hay không? <br>
														Sau khi xóa bạn sẽ không thể khôi phục lại được dữ liệu đã
														xóa
													</h4>
												</div>
												<div class="modal-footer">
													<a href="ColtrolerDeleteUser?ID=<%=rs2.getString(1)%>"><button
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
					<!-- Button thêm  -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						style="margin-left: 83%" data-target="#ThemQLCH">Thêm
						Quản Lí</button>

					<!-- Modal Button Thêm -->

					<div class="modal fade bd-example-modal-lg" id="ThemQLCH"
						tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">

								<div class="modal-header">
									<h3 class="modal-title" id="exampleModalLabel">Thêm Quản
										Lí</h3>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>

								<div class="modal-body">
									<form id="form" action="ControlerDangKi" method="post">
										<div class="form-group">
											<label for="exampleInputEmail1">Tên đăng nhập</label> <input
												name="Tendangnhap" type="text" class="form-control"
												placeholder="Tên Đăng nhập" required>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Password</label> <input
												name="password" type="password" class="form-control"
												placeholder="Password" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Password Confirn</label> <input
												name="password-confirn" type="password" class="form-control"
												placeholder="Enter Password" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Họ và tên</label> <input
												name="hovaten" type="text" class="form-control"
												placeholder="Họ và tênp" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Email address</label> <input
												name="email" type="email" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												placeholder="Enter email" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Ngày sinh</label> <input
												name="Ngaysinh" type="text" class="form-control"
												placeholder="Ngày Sinh" required>
										</div>
										<div class="form-check">
											<label class="form-check-label"> <label><u>Giới
														Tính</u> </label><br> <input type="radio" name="GioiTinh"
												value="Men" class="form-check-input" required> Nam <input
												type="radio" name="GioiTinh" value="Women"
												class="form-check-input" style="margin-left: 15px;" required>
												Nữ
											</label>
										</div>

										<div class="form-check">
											<label class="form-check-label"> <label><u>Class
														ID</u> </label><br> <input type="radio" name="ClassID"
												value="CL0" class="form-check-input"
												style="margin-left: 15px;" required> Không Phải là
												học sinh
											</label>
										</div>


										<div class="form-check">
											<label class="form-check-label"> <label><u>Role</u>
											</label><br> <input type="radio" name="Role" value="QLCH"
												class="form-check-input" required> Quản Lí
											</label>
										</div>
										<button type="submit" class="btn btn-primary">Thêm
											Quản Lí</button>
									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- Trang cá nhân -->

		</div>



		<!-- footer -->
		<div class="col-md-12"
			style="background-color: #EEEEEE; min-height: 100px;">
			<center>
				<h5>Copyright © 2017 By LTD. Xin chào </h5>
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