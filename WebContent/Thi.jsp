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
<title>Trang thi</title>
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
			<div class="col-md-12" ><%ServletContext context = getServletContext();%>
				
				
				<div class="post">
                <div class="footer panel panel-default ">
                    <div class="panel-heading">
                        <div id="dongho" style=" font-size: 20px; font-weight: bold;text-align: center;color: red;">
                            <span id="h">00</span> :
                            <span id="p">30</span> :
                            <span id="s">30</span>
                        </div>
                    </div>
                </div>
            </div>
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
 				Rời khỏi bài thi</button>
				
				<div class="modal" tabindex="-1" role="dialog" id="exampleModal">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title"></h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <p>Nếu bạn rời khoi thì bài thi sẽ hủy kết quả của bạn!</p>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-danger">Leave</button>
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				</div>
				<form id="form" action="ControlerResultExam" method="post" >
											
									
				<%
							Models.ConnDB con1 = new ConnDB();int index=1;
							ResultSet rs1 = con1.chonDuLieu("select * from tbl_user, examquestion,examclass, question where tbl_user.UserID='"+context.getAttribute("UserID")+"' and tbl_user.ClassID= examclass.ClassID and examquestion.ExamID='"+context.getAttribute("ExamID")+"' and examclass.ExamID='"+context.getAttribute("ExamID")+"' and examquestion.QuestionID= question.QuestionID;");
							while (rs1.next()){%>
								<div class="form-check" style="background-color:#CDC9C9; margin:40px;">
												<p><%=index++%>		.<%=rs1.getString(16) %></p> 
												<input type="radio" name="<%=rs1.getString(15)%>" value="A" class="form-check-input"  							required> A	.<%=rs1.getString(18)%>
												<input type="radio" name="<%=rs1.getString(15)%>" value="B" class="form-check-input" style="margin-left:15px;"  required> B	.<%=rs1.getString(19)%>
												<input type="radio" name="<%=rs1.getString(15)%>" value="C" class="form-check-input" style="margin-left:15px;"  required> C	.<%=rs1.getString(20)%>
												<input type="radio" name="<%=rs1.getString(15)%>" value="D" class="form-check-input" style="margin-left:15px;"  required> D	.<%=rs1.getString(21)%>
												<br><br>
											</div>
							<%}
							
				%>	<center><p>UserID: <input name="UserID" value="<%=context.getAttribute("UserID") %>" readonly></input></p></center>
					<center><p>ExamID: <input name="ExamID" value="<%=context.getAttribute("ExamID") %>" readonly></input></p></center>
					<center><button type="submit" class="btn btn-warning" >Nộp bài</button><button type="reset" class="btn btn-danger" style="margin-left:15px;">Reset</button></center>
				</form>		
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