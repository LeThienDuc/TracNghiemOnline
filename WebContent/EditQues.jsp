<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Edit Question</title>
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
	<div class="col-md-12">
	
		<div class="row">
		<div class="col-md-6 col-md-offset-3" style="margin-top:40px; margin-bottom:40px;">
			<form id="formedit" action="ControlerEditQues" method="post">
											<center><h3>Eidt Câu Hỏi</h3></center>
											<br>
											<div class="form-check">
												<label class="form-check-label"> <u>Môn Học</u>  <br>
												<%ServletContext context = getServletContext(); %>
														 
												<input type="radio" name="SubID" value="AV" class="form-check-input" <%if(context.getAttribute("SubID").equals("AV")){ %>checked<%} %> required                            >Anh Văn
												<input type="radio" name="SubID" value="TO" class="form-check-input" <%if(context.getAttribute("SubID").equals("TO")){ %>checked<%} %> required  style="margin-left: 15px;">TOÁN
												<input type="radio" name="SubID" value="TV" class="form-check-input" <%if(context.getAttribute("SubID").equals("TV")){ %>checked<%} %> required  style="margin-left: 15px;">Tiếng Việt
												</label>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Nội dung câu hỏi:</label> <input name="QuestionContent" type="text" class="form-control" placeholder="Nội dung câu hỏi..." required
												value="<%out.print(context.getAttribute("QuestionContent"));%>">
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Đáp án A</label> <input name="A" type="text" class="form-control" placeholder="Đáp án A..." required
												value="<%out.print(context.getAttribute("A"));%>">
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Đáp án B</label> <input name="B" type="text" class="form-control" placeholder="Đáp án B" required
												value="<%out.print(context.getAttribute("B"));%>">
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Đáp án C</label> <input name="C" type="text" class="form-control" placeholder="Đáp Án C" required
												value="<%out.print(context.getAttribute("C"));%>">
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Đáp án D</label> <input name="D" type="text" class="form-control" placeholder="Đáp Án D" required
												value="<%out.print(context.getAttribute("D"));%>">
											</div>
											<div class="form-check">
												<label class="form-check-label"> <label><u>Answer</u> </label><br> 
												<input type="radio" name="Answer" value="A" class="form-check-input" 							<%if(context.getAttribute("Answer").equals("A")){ %>checked<%} %> required> Chọn câu A</input>
												<input type="radio" name="Answer" value="B" class="form-check-input" style="margin-left: 15px;" <%if(context.getAttribute("Answer").equals("B")){ %>checked<%} %> required> Chọn câu B</input>
												<input type="radio" name="Answer" value="C" class="form-check-input" style="margin-left: 15px;" <%if(context.getAttribute("Answer").equals("C")){ %>checked<%} %> required> Chọn câu C</input>
												<input type="radio" name="Answer" value="D" class="form-check-input" style="margin-left: 15px;" <%if(context.getAttribute("Answer").equals("D")){ %>checked<%} %> required> Chọn câu D</input>
												</label>
											</div>
											<button type="submit" class="btn btn-warning" style="margin-left: 70%;">Edit câu hỏi</button>
											<button type="button" class="btn btn-light" onclick="location.href='QuanLiCauHoi.jsp'" >Cancel</button>
										</form>
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