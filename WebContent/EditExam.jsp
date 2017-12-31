
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Edit</title>
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
			<!-- content -->
			<div class="col-md-12">
				<form id="form" action="ControlerEditExam" method="post" class="col-md-4 col-md-offset-4" style="margin-top:40px;">
				<%ServletContext context = getServletContext(); %>
											<div class="form-group">
												<label for="exampleInputEmail1">Tên Kì thi <label> 
												<input name="ExamName" type="text" class="form-control" value="<%out.print(context.getAttribute("ExamName")); %>" required> 
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Thời Gian Thi <label>
												<input name="TimeText" type="text" class="form-control" value="<%out.print(context.getAttribute("TimeText"));%>" required> 
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Ngày mở <label>
												<input name="TimeOpen" type="text" class="form-control" value="<%out.print(context.getAttribute("TimeOpen")); %>" required> 
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Ngày Đóng <label>
												<input name="TimeClose" type="text" class="form-control" value="<%out.print(context.getAttribute("TimeClose"));%>" required> 
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Số câu hỏi<label>
												<input name="SumQuestion" type="text" class="form-control"value=<%=context.getAttribute("SumQuestion")%> required> 
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">UserID : <label>
												<input name="UserID" type="text" class="form-control" value="<%out.print(context.getAttribute("UserID"));%>" readonly> 
											</div>
											<div class="form-check">
												<label class="form-check-label"> 
													<label>Class </label>
													<input type="radio" name="ClassID"class="form-check-input" value="CL1" <%if(context.getAttribute("ClassID").equals("CL1")){ %>checked<%} %>> 3501
													<input type="radio" name="ClassID"class="form-check-input" value="CL2" <%if(context.getAttribute("ClassID").equals("CL2")){ %>checked<%} %>> 3502
													<input type="radio" name="ClassID"class="form-check-input" value="CL3" <%if(context.getAttribute("ClassID").equals("CL3")){ %>checked<%} %>> 3503
													<input type="radio" name="ClassID"class="form-check-input" value="CL4" <%if(context.getAttribute("ClassID").equals("CL4")){ %>checked<%} %>> 3504
												</label>
											</div>
											<button type="submit" class="btn btn-warning">Save Change</button>
											<button type="button" class="btn btn-light">Cancel</button>
										</form>
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