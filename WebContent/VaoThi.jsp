<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@page import="Models.ConnDB"%>
	<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Danh sách trang thi</title>
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
		<div id="CHAV" class="bg-success"
					style="width: 100%; height: 500px;">
					<center>
						<h1>Danh Sách Các kì thi</h1>
					</center>
					<!-- danh sách các câu hỏi -->
					<div id="Danhsach" data-offset="0"
						style="width: 100%; max-height: 390px; overflow: auto;"><%ServletContext context = getServletContext();%>
						<%
							Models.ConnDB con1 = new ConnDB();
							ResultSet rs1 = con1.chonDuLieu("select * from tbl_user, exam,examclass where tbl_user.UserID='"+context.getAttribute("UserID")+"' and  tbl_user.ClassID= examclass.ClassID and exam.ExamID= examclass.ExamID;");
						%>
						<table class="table table-bordered">
							<thead>
								<tr>
									<td><b>ExamID</b></td>
									<td><b>ExamName</b></td>
									<td><b>Timetext</b></td>
									<td><b>Date open</b></td>
									<td><b>Date close</b></td>
									<td><b>SumQuestion</b></td>
									<td><b>ClassID</b></td>
									<td><b>Thời hạn</b></td>
									<td><b>note</b></td>
								
								</tr>
							</thead>
							<thead class="thead-dark">
							<tbody>

								<%
									while (rs1.next()) {
								%>
								<tr>
									<td><%=rs1.getString(11)%></td>
									<td><%=rs1.getString(12)%></td>
									<td><%=rs1.getString(14)%></td>
									<td><%=rs1.getString(15)%></td>
									<td><%=rs1.getString(16)%></td>
									<td><%=rs1.getString(17)%></td>
									<td><%=rs1.getString(8)%></td>
									<td>
										<%Date date= new Date();
										  Date date1= new SimpleDateFormat("dd/MM/yyyy").parse(rs1.getString(16));
										  if(date.after(date1)){
											  %>Hết hạn<%
										  }else{
										%>chưa hết hạn<%} %>
									</td>
									<td>
										<!-- button --> 
										<%if(date.after(date1)){%>
											<a href="ControlerChuyenXemDiem?ExamID=<%=rs1.getString(11)%>&UserID=<%=rs1.getString(1)%>"><button class="btn btn-danger"">Xem điểm</button></a>
										<%}else{ %>
											<a href="ControlerChuyenThi?ExamID=<%=rs1.getString(11)%>&UserID=<%=rs1.getString(1)%>"><button class="btn btn-success" "> Vào Thi</button></a>
										<%} %>
									</td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
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