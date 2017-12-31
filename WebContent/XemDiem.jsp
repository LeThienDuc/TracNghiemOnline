<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@page import="Models.ConnDB"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Xem điểm</title>
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
	<div class="col-md-2 col-md-offset-1">
		<div class="btn-group-vertical" style="width:100%">
		  <button type="button" class="btn btn-primary" onclick="location.href='TrangCaNhan_HS.jsp?UserID=0&RoleID=HS'">Trang cá nhân</button>
		  <button type="button" class="btn btn-primary" onclick="location.href='index.jsp?UserID=0'">Đăng Xuất</button>
		</div>
	</div>
	<div class="col-md-9">
		<table class="table">
		  <thead>
		    <tr><%int index=1 ;%>
		      <th scope="col">ID</th>
		      <th scope="col">Tên kì thi</th>
		            <th scope="col">Mã Môn Thi</th>
		      <th scope="col">Số điểm đạt được</th>
		      <th scope="col">số câu trả lời đúng</th>
		    </tr>
		  </thead>
		  <tbody><%ServletContext context = getServletContext();%>
		  <%
							Models.ConnDB con2 = new ConnDB();
							ResultSet rs2 = con2.chonDuLieu("SELECT * FROM resultexam, exam where exam.ExamID='"+context.getAttribute("ExamID")+"' and resultexam.UserID='"+context.getAttribute("UserID")+"';");
						%>
						<%while (rs2.next()) { %>
		    <tr>
		      <th scope="row"><%=index++%></th>
		      <td><%=rs2.getString(6)%></td>
		      <td><%=rs2.getString(7)%></td>
		      <td><%=rs2.getString(3)%></td>
		      <td><%=rs2.getString(3)%> câu</td>
		    </tr>
		    <%} %>
		  </tbody>
		</table></div>
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