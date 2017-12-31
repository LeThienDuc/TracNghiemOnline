<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Giới thiệu</title>
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

		<!-- content -->
		<div class="container-fluid">
			<div class="col-md-12" style="margin-top: 40px;">
				<div class="card-group" id="div-card">

					<div class="col-md-4" class="div-card" style="margin-top: 50x;">
						<div class="card">
							<img class="card-img-top" src="img/free.jpg" style="width: 100%;"
								alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title">Vì nó miễn phí !</h4>
								<p class="card-text">Đến với TracNghiemOnline bạn hoàn toàn
									được miễn phí với các đề thi được chọn lọc từ các giáo viên có
									kinh nghiệm của TracnghiemOnline.vn.</p>
								<p class="card-text">
									<small class="text-muted">Last updated 3 mins ago</small>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-4" class="div-card">
						<div class="card">
							<img class="card-img-top" src="img/hinh66.jpg"
								style="width: 100%" alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title">Vì sự hỗ trợ !!</h4>
								<p class="card-text">Các nhân viên của TracNghiemOnline luôn
									luôn sẵn sàng hỗ trợ bạn một cách nhiệt tình nhất ở mọi thời
									điểm trong và 24/7.</p>
								<p class="card-text">
									<small class="text-muted">Last updated 3 mins ago</small>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-4" class="div-card">
						<div class="card">
							<img class="card-img-top" src="img/believe.jpg"
								style="width: 100%" alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title">Vì sự tin tưởng</h4>
								<p class="card-text">TracNghiemOnline đã và đang cố gắn hoàn
									thiện hơn để hỗ trợ các bạn tốt hơn, và hiện nay có khá nhiều
									sự lựa chọn đã chọn và tin tưởng TracNghiemOnline. Và còn bạn
									thì sao?</p>
								<p class="card-text">
									<small class="text-muted">Last updated 3 mins ago</small>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-4" class="div-card">
						<div class="card">
							<img class="card-img-top" src="img/Modern.jpg"
								style="width: 100%" alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title">Vì sự hiện đại</h4>
								<p class="card-text">TracNghiemOnline mang đến cho bạn các
									kì thi chuẩn mực nhất và hiện đại nhất hiện nay.</p>
								<p class="card-text">
									<small class="text-muted">Last updated 3 mins ago</small>
								</p>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="container-fluid"
			style="background-color: #F5F5F5; min-height: 280px; border-top: 1px solid #CDCDC1;">
			<br>
			<center>
				<h1 style="height: 36px;">Tầm Nhìn</h1>
			</center>
			<center>
				<p
					style="height: 24px; font-family: 'Roboto', sans-serif; font-size: 20px;">Với
					mong muốn mang đến kiến thức chất lượng, miễn phí cho mọi người,
					với tâm huyết phá bỏ rào cản kiến thức từ việc <br>giáo
					dục thu phí. Chúng tôi - Kteam đã lập nên trang website này để thế
					giới phẳng hơn.<br>Bất
					cứ ai có mong muốn khai phá thế giới. Phá bỏ mọi thứ ngăn cản sự
					phát triển tất yếu bền vững của xã hội đều là Kter<br><br>
					GIÁO
					DỤC LÀ MIỄN PHÍ!</p>
			</center>
		</div>
		<div class="col-md-12" style="background-color: white">
			<center>
				<h1>Người sáng lập</h1>
			</center>
			<br>
			<center>
				<img src="img/avatar.jpg" alt="avatar" class="rounded-circle">
			</center>
			<center>
				<h3>Lê Thiện Đức</h3>
			</center>
			<center>
				<h5>Phụ Trách</h5>
			</center>
			<center>
				<p>Nhân sự - Chiến lược - Thương hiệu</p>
			</center>
		</div>
		<div class="container-fluid"
			style="background-color: #F5F5F5; min-height: 280px; border-top: 1px solid #CDCDC1;">
			<br>
			<center>
				<h1 style="height: 36px;">Ủng hộ</h1>
			</center>
			<center>
				<p
					style="height: 24px; font-family: 'Roboto', sans-serif; font-size: 20px;">Hỗ
					trợ chúng tôi để cùng xây dựng một nền GIÁO DỤC MIỄN PHÍ cho bất cứ
					ai, ở bất cứ nơi nào. Hoặc </p>
			</center><br>
			<center>
				<p
					style="height: 24px; font-family: 'Roboto', sans-serif; font-size: 20px;">tham gia vào đội ngủ giảng viên, công
					tác viên, tình nguyện viên của chúng tôi.</p>
			</center>
		</div>
		<div class="col-md-12"
			style="background-color: #EEEEEE; min-height: 100px;">
			<center style="margin-top: 10px;">
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