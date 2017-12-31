<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Trang chu</title>
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
						<div class="col-md-2 col-md-offset-10" id="lien-he">
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


		<!-- carousel -->
		<div class="row">
			<div class="col-md-12" id="carousell">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="img/banner-top1.png" alt="Los Angeles">
						</div>

						<div class="item">
							<img src="img/banner-top3.jpg" alt="Chicago">
						</div>

						<div class="item">
							<img src="img/banner-top2.png" alt="New York">
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
		<!-- noi dung -->


		<div class="col-md-12">
			<div class="col-md-12">
				<div class="col-md-8 col-md-offset-2 header">
					<center>
						<h1>Chúng tôi giúp mọi người học tiếng Anh và chứng tỏ khả
							năng với thế giới</h1>
					</center>
				</div>
			</div>
			<div class="col-md-12">
				<div class="card-deck">
					<div class="col-md-3 col-md-offset-1 card">
						<div class="card-body">
							<center>
								<h3 style="color: blue" class="card-title">Trường Học</h3>
							</center>
							<hr id="hr1">
							<p class="card-text text">Các văn bằng chứng chỉ của chúng
								tôi cung cấp cho học sinh một lộ trình được thiết kế chặt chẽ
								nhằm nâng cao trình độ tiếng Anh. Tìm hiểu cách thức gia nhập
								mạng lưới toàn cầu gồm 50.000 trung tâm đào tạo của chúng tôi.</p>
						</div>
						<div class="card-footer">
							<small class="text-muted">Last updated 3 mins ago</small>
						</div>
					</div>
					<div class="col-md-4 card">
						<div class="card-body">
							<center>
								<h3 style="color: green;" class="card-title">Giáo Viên</h3>
							</center>
							<hr id="hr1">
							<p class="card-text text">Chúng tôi có thể giúp bạn luyện tập
								cho các em học sinh và nâng cao khả năng tiếng Anh của các em.
								Chúng tôi cũng có các văn bằng chứng chỉ và chương trình phát
								triển chuyên nghiệp để giúp bạn phát huy được tối đa nghiệp vụ
								giảng dạy của bạn.</p>
						</div>
						<div class="card-footer">
							<small class="text-muted">Last updated 3 mins ago</small>
						</div>
					</div>
					<div class="col-md-3 card">
						<div class="card-body">
							<center>
								<h3 style="color: brown;" class="card-title">Học Sinh</h3>
							</center>
							<hr id="hr1">
							<p class="card-text text">Việc chuẩn bị cho một trong các kỳ
								thi của chúng tôi có thể giúp bạn giao tiếp trong đời sống thực
								tế. Hãy dành thời gian xem qua một số tài liệu miễn phí của
								chúng tôi để giúp bạn học tiếng Anh.</p>
						</div>
						<div class="card-footer">
							<small class="text-muted">Last updated 3 mins ago</small>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="col-md-12" style="margin: 40px;">
				<div class="col-md-6">
					<img src="img/hinh11.jpg" style="width: 80%; height: 80%">
				</div>

				<div class="col-md-4" style="margin-left: 20px;">
					<a href="#"><img src="img/tracNghiemOnline.vn-logo.png"
						style="width: 40%"></a> <br>
					<h3>
						<b>Hành trinh từng bước học tiếng Anh</b>
					</h3>
					<br>
					<h5 style="font-size: 18px;">
						<i>Trắc Nghiệm Online</i> có các kỳ thi chuyên sâu <br> giúp
						cho việc học tiếng Anh trở nên thú vị, hiệu quả và bổ ích. <br>
						<br> Phương pháp tiếp cận độc đáo của chúng tôi khuyến khích
						sự tiến bộ không ngừng với lộ trình học rõ ràng giúp nâng cao kỹ
						năng ngôn ngữ.<br> <br> Chúng tôi có các văn bằng chứng
						chỉ cho trường học, dùng cho các mục đích thông thường, giáo dục
						bậc cao và thương mại.
					</h5>
				</div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="col-md-12" style="margin: 40px;">
				<div class="col-md-4 col-md-offset-1">
					<h3>
						<b>Chúng tôi truyền cảm hứng để người học tiến xa hơn</b>
					</h3>
					<br>
					<h5 style="font-size: 18px; margin-left: 20px;">
						Các nguồn tài liệu giảng dạy miễn phí,<br> các giáo trình và
						các hoạt động được thiết kế nhằm giúp giáo viên ôn tập cho học
						viên trước khi tham gia các kỳ thi .<br> <br> Chúng tôi
						cũng có nhiều văn bằng chứng chỉ giảng dạy, các khóa học và công
						cụ hỗ trợ để giúp bạn trở thành một giáo viên.
					</h5>
				</div>
				<div class="col-md-6 ">
					<img src="img/hinh22.jpg" style="width: 80%; height: 80%;">
				</div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="col-md-12" style="margin: 40px;">
				<div class="col-md-6">
					<img src="img/hinh33.jpg" style="width: 100%; height: 100%;">
				</div>
				<div class="col-md-5">
					<br> <br>
					<h2>
						<b>Kiểm tra trình độ tiếng Anh của bạn</b>
					</h2>
					<br>
					<p style="font-size: 18px; margin-left: 20px;">Một cách nhanh
						chóng, các bài thi trực tuyến miễn phí sẽ chỉ ra trình độ tiếng
						Anh hiện tại của bạn. Những bài thi này phù hợp cho mọi trình độ
						và sau khi làm xong, bạn sẽ được tư vấn cách để nâng cao khả năng
						tiếng Anh.</p>
					<br> <br>
					<button type="button" class="btn btn-success btn-lg">Đăng
						Nhập Ngay</button>
				</div>
			</div>
		</div>
		<!-- footer -->

		<b><hr style="margin: 40px;"></b>


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