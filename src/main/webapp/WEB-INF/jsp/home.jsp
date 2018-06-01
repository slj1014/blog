<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<%@include file="common.jsp"%>
<style type="text/css">
</style>
<title>沈留健个人博客首页</title>
</head>
<body class="body-container preload">
	<!-- header -->
	<header id="mocha-head" class="header">
		<!-- Background -->
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
		<!-- end container -->
	</header>
	<!-- end header -->
	<!-- portfolio -->
	<section class="portfolio-wrapper alt-section">
		<div class="container">
			<div class="row home-portfolio-wrapper">
				<!-- section title -->
				<div class="section-title span12">
					<h2>My Album</h2>
					<a href="${blog}/album.html" class="section-link">Go to album</a>
				</div>
				<!-- end section title -->
				<div class="home-portfolio-pagination">
					<a href="#" class="prev"></a> <a href="#" class="next"></a>
				</div>
				<div class="clearfix"></div>
				<!-- portfolio items -->
				<div class="portfolio-slider content-wrapper">

					<!-- portfolio item -->
					<div class="span6 portfolio-item">


						<!-- image -->
						<a href="#" class="image"> <img
							src="${blog}/images/4.jpg" class="ablum" alt="沈留健个人博客">
						</a>
						<!-- end image -->


						<!-- title -->
						<a href="#" class="title">I Am 大帅比 <br />
							<span class="meta">你点击了，说明你同意了。</span></a>


						<!-- icon -->
						<a href="#" class="icon"></a>


					</div>
					<!-- end portfolio item -->


					<!-- portfolio item -->
					<div class="span6 portfolio-item">


						<!-- image -->
						<a href="#" class="image"> <img
							src="${blog}/images/3.jpg" class="ablum" alt="沈留健个人博客">
						</a>
						<!-- end image -->


						<!-- title -->
						<a href="#" class="title">I Am 大帅比<br />
							<span class="meta">你点击了，说明你同意了。</span></a>


						<!-- icon -->
						<a href="#" class="icon"></a>


					</div>
					<!-- end portfolio item -->




					<!-- portfolio item -->
					<div class="span6 portfolio-item">


						<!-- image -->
						<a href="#" class="image"> <img
							src="${blog}/images/2.jpg"  class="ablum" alt="沈留健个人博客">
						</a>
						<!-- end image -->


						<!-- title -->
						<a href="portfolio-single.html" class="title">I Am 大帅比 <br />
							<span class="meta">你点击了，说明你同意了。</span></a>


						<!-- icon -->
						<a href="portfolio-single.html" class="icon"></a>


					</div>
					<!-- end portfolio item -->



				</div>
				<!-- end portfolio items -->

			</div>
			<!-- end row -->
		</div>
		<!-- end container -->


	</section>
	<!-- page content -->
	<section class="page">


		<div class="container">
			<div class="row">


				<!-- section title -->
				<div class="section-title span12">


					<h2>Latest Entries</h2>

					<a href="blog.html" class="section-link">Go to blog</a>

				</div>
				<!-- end section title -->



				<!-- content / blog -->
				<div class="content-wrapper blog-grid">
					<c:forEach items="${articles}" var="article">
						<div class="span4 blog-item">
							<!-- post image -->
							<div class="post-image">
								<!-- image -->
								<a href="${blog}/single.html?articleId=${article.articleId}"
									class="image"> <img src="${article.articleImage}"
									alt="沈留健个人博客" style="height: 100%; width: 100%">
								</a>
								<!-- end image -->
								<!-- icon -->
								<a href="${blog}/single.html?articleId=${article.articleId}"
									class="icon"></a>
							</div>
							<!-- end post image -->
							<!-- post excerpt -->
							<div class="post-excerpt">
								<h4>
									<a href="${blog}/single.html?articleId=${article.articleId}">${article.articleTitle}</a>
								</h4>
								<p>${article.articleDes}</p>
							</div>
							<!-- end post excerpt -->
						</div>
						<!-- end blog item -->
					</c:forEach>
				</div>
				<!-- end content wrapper -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</section>
	<!-- end page content -->
	<%@include file="foot.jsp"%>
</body>
</html>