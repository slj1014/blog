<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="common.jsp"%>
<!-- Animate.css -->
<link rel="stylesheet" href="${blog}/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="${blog}/css/icomoon.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="${blog}/css/magnific-popup.css">
<!-- Salvattore -->
<link rel="stylesheet" href="${blog}/css/salvattore.css">
<!-- Theme Style -->
<link rel="stylesheet" href="${blog}/css/album.css">

<script type="text/javascript" src="${blog}/js/bootstrap.js"></script>
<script type="text/javascript" src="${blog}/js/modernizr-2.6.2.min.js"></script>
<!-- jQuery Easing -->
<script src="${blog }/js/jquery.easing.1.3.js"></script>
<!-- Waypoints -->
<script src="${blog}/js/jquery.waypoints.min.js"></script>
<!-- Magnific Popup -->
<script src="${blog}/js/jquery.magnific-popup.min.js"></script>
<!-- Salvattore -->
<script src="${blog}/js/salvattore.min.js"></script>
<!-- Main JS -->
<script src="${blog }/js/main.js"></script>
<title>沈留健个人博客相册</title>
</head>
<body>
<body class="body-container">
	<!-- header -->
	<header id="mocha-head" class="header"> <!-- Background -->
	<div class="background-image"></div>
	<!-- container -->
	<div class="container">
		<%@include file="head.jsp"%>
		<!-- row2 -->
		<div class="row">
			<div class="home-slider span12">
				<div class="m-slider flexslider">
					<ul class="slides">
						<li>
							<div class="slide">
								<h2>Do You Like ME?</h2>
								<p>听说你喜欢我，喜欢我也没用没我，我只喜欢学习。</p>
								<a href="${blog}/album.html" class="button">Go To Album</a>
							</div> <!-- end slide -->
						</li>
						<li><div class="slide">
								<h2>Study Is My Life</h2>
								<p>妈妈叫我吃饭，我充耳不闻；爸爸叫我喝水，我无动于衷；
									奶奶叫我睡觉，我百般推迟；我爱学习，学习使我快乐，我将生命和希望献给学习</p>
								<a href="${blog}/album.html" class="button">Go To Album</a>
							</div> <!-- end slide --></li>
					</ul>
				</div>
				<!-- end m slider -->
			</div>
			<!-- end home slider -->
		</div>
		<!-- end row 2-->
	</div>
	</header>
	<section class="page album">
	<div class="container">
		<div class="row">
			<div class="col-md-4" id="fh5co-board">
				<!-- member -->
				<div class="member span4 item">
					<div class="animate-box">
						<a href="images/1.jpg" class="image-popup fh5co-board-img"
							title="2017/5/2"><img src="images/1.jpg"
							alt="沈留健个人博客"></a>
					</div>
					<div class="fh5co-desc">2017/5/2</div>
				</div>
			</div>
			<div class="col-md-4" id="fh5co-board">
				<!-- member -->
				<div class="member span4 item">
					<div class="animate-box">
						<a href="images/2.jpg" class="image-popup fh5co-board-img"
							title="2017/5/2"><img src="images/2.jpg"
							alt="沈留健个人博客"></a>
					</div>
					<div class="fh5co-desc">2017/5/2</div>
				</div>
				<div class="col-md-4" id="fh5co-board">
					<!-- member -->
					<div class="member span4 item">
						<div class="animate-box">
							<a href="images/4.jpg" class="image-popup fh5co-board-img"
								title="2017/5/2"><img src="images/4.jpg"
								alt="沈留健个人博客"></a>
						</div>
						<div class="fh5co-desc">2017/5/2</div>
					</div>
				</div>
				<div class="col-md-4" id="fh5co-board">
					<!-- member -->
					<div class="member span4 item">
						<div class="animate-box">
							<a href="images/3.jpg" class="image-popup fh5co-board-img"
								title="2017/5/2"><img src="images/3.jpg"
								alt="沈留健个人博客"></a>
						</div>
						<div class="fh5co-desc">2017/5/2</div>
					</div>
				</div>
				<div class="col-md-4" id="fh5co-board">
					<!-- member -->
					<div class="member span4 item">
						<div class="animate-box">
							<a href="images/5.jpg" class="image-popup fh5co-board-img"
								title="2017/5/2"><img src="images/5.jpg"
								alt="沈留健个人博客"></a>
						</div>
						<div class="fh5co-desc">2017/5/2</div>
					</div>
				</div>
				<div class="col-md-4" id="fh5co-board">
					<!-- member -->
					<div class="member span4 item">
						<div class="animate-box">
							<a href="images/6.jpg" class="image-popup fh5co-board-img"
								title="2017/5/2"><img src="images/6.jpg"
								alt="沈留健个人博客"></a>
						</div>
						<div class="fh5co-desc">2017/5/2</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
</body>
</html>