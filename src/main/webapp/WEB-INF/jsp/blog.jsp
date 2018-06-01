<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="common.jsp"%>
<title>沈留健个人博客博客列表</title>
<script type="text/javascript" src="${blog}/js/bootstrap.js"></script>
</head>
<body class="body-container">
	<!-- header -->
	<header id="mocha-head" class="header"> <!-- Background -->
	<div class="background-image"></div>
	<!-- container -->
	<div class="container">

		<%@include file="head.jsp"%>
		<!-- row2 -->
		<div class="row">
			<div class="span12 teaser">
				<h2>Blog</h2>
				<p>收藏的博客文章</p>
			</div>
			<!-- end span12 -->
		</div>
		<!-- end row 2-->
	</div>
	<!-- end container --> </header>
	<!-- end header -->
	<!-- page content -->
	<section class="page">
	<div class="container">
		<div class="row">
			<!-- blog -->
			<div class="blog-wrapper span8">
				<c:forEach items="${pageInfo.list}" var="article">
					<div class="post gallery-post">
						<!-- post image / gallery -->
						<div class="post-image">
							<img src="${article.articleImage}" alt="沈留健个人博客"
								style="width: 100%; height: 100%">
						</div>
						<!-- end gallery / post image -->
						<!-- meta -->
						<div class="meta">
							<p>
								<span><a href="#">${article.articleRead}次浏览</a><span
									class="dash">/</span> ${article.articleCreateStr} <!-- <span
									class="dash">/</span> <a href="#comments">0 条评论</a></span> -->
							</p>
						</div>
						<!-- end meta -->
						<!-- content -->
						<div class="post-content">
							<h3>
								<a href="${blog}/single.html?articleId=${article.articleId}">${article.articleTitle}</a>
							</h3>
							<div class="content">
								<p class="light-font">${article.articleDes}</p>
							</div>
							<!-- end post content -->
							<!-- read more -->
							<a href="${blog}/single.html?articleId=${article.articleId}"
								class="mocha-button">阅读</a>
						</div>
						<!-- end content -->
					</div>
					<!-- end post -->
				</c:forEach>
				<%-- <!-- post -->
				<div class="post gallery-post">
					<!-- post image / gallery -->
					<div class="post-image">
						<!-- flexslider -->
						<div class="flexslider gallery-wrapper">
							<ul class="slides">
								<li><img src="${blog}/images/demo/gallery1.png" alt="Gallery Image 1"></li>
								<li><img src="${blog}/images/demo/gallery2.png" alt="Gallery Image 2"></li>
							</ul>
						</div>
						<!-- end flex slider gallery -->
					</div>
					<!-- end gallery / post image -->
					<!-- meta -->
					<div class="meta">

						<p>
							Category: <span><a href="#">Technology</a>,<a href="#">Off
									Topic</a> <span class="dash">/</span> 13 August 2013 <span
								class="dash">/</span> <a href="#comments">7 Comments</a></span>
						</p>


					</div>
					<!-- end meta -->



					<!-- content -->
					<div class="post-content">

						<h3>
							<a href="single.html">Everything You Can Do Right Now.</a>
						</h3>

						<div class="content">

							<p class="light-font">Class aptent taciti sociosqu ad litora
								torquent per conubia nostra, per inceptos himenaeos. Mauris in
								erat justo. Nullam ac urna eu felis dapibus condimentum sit amet
								a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin
								condimentum fermentum nunc. Etiam pharetra, erat sed fermentum
								feugiat, velit mauris egestas quam, ut aliquam massa nisl quis
								neque. Suspendisse in orci enim.</p>

							<p>Nam semper lacus eu enim sagittis vitae malesuada libero
								molestie. Nunc orci risus, iaculis at aliquet vitae, hendrerit
								at est. Proin quis sapien nec eros tempor sodales. Curabitur et
								lacus sed orci rhoncus luctus. Mauris gravida eleifend est vel
								sodales.</p>


						</div>
						<!-- end post content -->


						<!-- read more -->
						<a href="single.html" class="mocha-button">Read More</a>

					</div>
					<!-- end content -->


				</div>
				<!-- end post -->




				<!-- post -->
				<div class="post">


					<!-- post image / audio -->
					<div class="post-image audio-post">

						<div class="image">

							<img src="${blog}/images/demo/blog_post.png" alt="Audio Post Format">

						</div>
						<!-- end image -->

						<div class="audio-wrapper">


							<audio controls> <source
								src="http://suitstheme.com/demo/fresh/wp-content/uploads/audio.ogg"
								type="audio/ogg"> <source
								src="http://suitstheme.com/demo/fresh/wp-content/uploads/audio.mp3"
								type="audio/mpeg">
							<p>Your browser does not support the audio element.</p></audio>



						</div>
						<!-- end audio wrapper -->



					</div>
					<!-- end audio / post image -->




					<!-- meta -->
					<div class="meta">

						<p>
							Category: <span><a href="#">Music</a> / 13 August 2013 / <a
								href="#comments">7 Comments</a></span>
						</p>


					</div>
					<!-- end meta -->



					<!-- content -->
					<div class="post-content">

						<h3>
							<a href="single.html">Audio Post with a Nice Featured Image.</a>
						</h3>

						<div class="content">

							<p class="light-font">Class aptent taciti sociosqu ad litora
								torquent per conubia nostra, per inceptos himenaeos. Mauris in
								erat justo. Nullam ac urna eu felis dapibus condimentum sit amet
								a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin
								condimentum fermentum nunc. Etiam pharetra, erat sed fermentum
								feugiat, velit mauris egestas quam, ut aliquam massa nisl quis
								neque. Suspendisse in orci enim.</p>

							<p>Nam semper lacus eu enim sagittis vitae malesuada libero
								molestie. Nunc orci risus, iaculis at aliquet vitae, hendrerit
								at est. Proin quis sapien nec eros tempor sodales. Curabitur et
								lacus sed orci rhoncus luctus. Mauris gravida eleifend est vel
								sodales.</p>


						</div>
						<!-- end post content -->


						<!-- read more -->
						<a href="single.html" class="mocha-button">Read More</a>

					</div>
					<!-- end content -->


				</div>
				<!-- end post -->





				<!-- post -->
				<div class="post gallery-post">


					<!-- post image / video -->
					<div class="post-image">


						<div class="video-wrapper">


							<iframe
								src="http://player.vimeo.com/video/72168058?title=0&amp;byline=0&amp;portrait=0&amp;color=0078a4"
								width="900" height="400" frameborder="0" webkitallowfullscreen
								mozallowfullscreen allowfullscreen></iframe>



						</div>
						<!-- end video wrapper -->



					</div>
					<!-- end audio / post image -->




					<!-- meta -->
					<div class="meta">

						<p>
							Category: <span><a href="#">Music</a> / 13 August 2013 / <a
								href="#comments">7 Comments</a></span>
						</p>


					</div>
					<!-- end meta -->



					<!-- content -->
					<div class="post-content">

						<h3>
							<a href="single.html">Post with featured video.</a>
						</h3>

						<div class="content">

							<p class="light-font">Class aptent taciti sociosqu ad litora
								torquent per conubia nostra, per inceptos himenaeos. Mauris in
								erat justo. Nullam ac urna eu felis dapibus condimentum sit amet
								a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin
								condimentum fermentum nunc. Etiam pharetra, erat sed fermentum
								feugiat, velit mauris egestas quam, ut aliquam massa nisl quis
								neque. Suspendisse in orci enim.</p>

							<p>Nam semper lacus eu enim sagittis vitae malesuada libero
								molestie. Nunc orci risus, iaculis at aliquet vitae, hendrerit
								at est. Proin quis sapien nec eros tempor sodales. Curabitur et
								lacus sed orci rhoncus luctus. Mauris gravida eleifend est vel
								sodales.</p>
						</div>
						<!-- end post content -->
						<!-- read more -->
						<a href="single.html" class="mocha-button">Read More</a>
					</div>
					<!-- end content -->
				</div>
				<!-- end post --> --%>
				<!-- pagination -->
				<!-- <div class="pagination">
					<div class="links">
						<ul>
							<li><a class="active" href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
						</ul>
					</div>
					<div class="navigaiton">
						<a href="#" class="prev"></a> <a href="#" class="next"></a>
					</div>
				</div> -->
				<!-- end pagination -->

				<!-- 分页 -->
				<form action="${blog}/blog.html" method="POST" name="spForm"
					id="spForm">
					<input type="hidden" name="articleTitle" value="${articleTitle}"/>
					<input type="hidden" id="currentPage" name="currentPage"
						value="${pageInfo.pageNum}"> <input type="hidden"
						id="lineSize" name="lineSize" value="${pageInfo.pageSize}">
					<input type="hidden" id="keyWord" name="keyWord" value="${keyWord}">
					<button type="button" class="btn btn-primary"
						value="${pageInfo.firstPage}"
						${pageInfo.pageNum==1?"disabled='disabled'":""}>首页</button>
					<button type="button" class="btn btn-success"
						value="${pageInfo.prePage}"
						${pageInfo.prePage==0?"disabled='disabled'":""}>上一页</button>
					&nbsp;&nbsp;&nbsp;跳转到第&nbsp;
					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" id="cpBtn">
							${pageInfo.pageNum}&nbsp;&nbsp;<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu" id="cpMenu">
							<c:forEach var="page" begin="1" end="${pageInfo.pages}">
								<li><a href="#">${page}</a></li>
							</c:forEach>
						</ul>
					</div>
					&nbsp;页&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
					<%-- 每页显示&nbsp;
					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" id="lsBtn">
							${pageInfo.pageSize}&nbsp;&nbsp;<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu" id="lsMenu">
							<c:forEach items="${lineSizes}" var="lineSize">
								<li><a href="#">${lineSize}</a></li>
							</c:forEach>
						</ul>
					</div>
					&nbsp;条&nbsp;&nbsp;&nbsp; --%>
					<button type="button" class="btn btn-info"
						value="${pageInfo.nextPage}"
						${pageInfo.nextPage==0?"disabled='disabled'":""}>下一页</button>
					<button type="button" class="btn btn-danger"
						value="${pageInfo.lastPage}"
						${pageInfo.pageNum==pageInfo.lastPage?"disabled='disabled'":""}>
						尾页</button>
					&nbsp;共 &nbsp;${pageInfo.size}/${pageInfo.total} &nbsp;条
				</form>


			</div>
			<!-- end blog -->
			<!-- sidebar -->
			<div id="sidebar" class="sidebar span4">
				<div class="widgets-wrapper">
					<!-- <div class="widget">
						<h4>Categories</h4>
						widget content
						<div class="widget-content">
							<ul>
								<li><a href="#">Technology</a></li>
								<li><a href="#">Music</a></li>
								<li><a href="#">Featured</a></li>
								<li><a href="#">General</a></li>
								<li><a href="#">Productivity</a></li>
							</ul>
						</div>
						end widget content
					</div>
					end widget
 -->
					<!-- widget -->
					<div class="widget">
						<div>
							<input placeholder="Search for..." type="text" style="height: 25px" id="articleTitle" value="${articleTitle}"/>
						</div>
						<hr/>
						<h4>最近文章</h4>
						<div class="widget-content">
							<c:forEach items="${articles}" var="article">
								<div class="recent-post-tab">
									<span>${article.articleCreateStr}</span> <a
										href="${blog}/single.html?articleId=${article.articleId}">${article.articleTitle}</a>
								</div>
							</c:forEach>
						</div>
						<!-- end widget content -->
					</div>
					<!-- end widget -->
					<!-- widget -->
					<div class="widget">
						<h4>最近照片</h4>
						<div class="widget-content">
							<div class="works-wrapper">
								<a href="${blog}/album.html"><img
									src="${blog}/images/1.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a> <a
									href="${blog}/album.html"><img
									src="${blog}/images/2.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a> <a
									href="${blog}/album.html"><img
									src="${blog}/images/3.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a> <a
									href="${blog}/album.html"><img
									src="${blog}/images/4.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a> <a
									href="${blog}/album.html"><img
									src="${blog}/images/5.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a> <a
									href="${blog}/album.html"><img
									src="${blog}/images/6.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a> 
							</div>
							<!-- end works wrapper -->
						</div>
						<!-- end widget content -->
					</div>
					<!-- end widget -->
				</div>
				<!-- end widgets wrapper -->
			</div>
			<!-- end sidebar -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container --> </section>
	<%@include file="foot.jsp"%>
	<script type="text/javascript">
	
	function getLocalTime(nS) {     
	   return new Date(parseInt(nS) * 1000).toLocaleString().replace(/:d{1,2}$/,' ');    
	}     

	function searchArticle() {

    }

		$(function() {
            $("#articleTitle").keydown(function (e) {
                var curKey = e.which;
                if (curKey == 13) {
                    var articleTitle=$("#articleTitle").val();
                    window.location.href="${blog}/blog.html?articleTitle="+articleTitle;
                }
            });

			$(":button[id!='cpBtn'][id!='lsBtn'][id!='searchBtn']").click(
					function() {
						var currentPage = $(this).val();
						//这里可以选择是否接收,因为你不一定使用搜索框,看不懂就不需要改写一样可以分页    
						//var keyWord=$("#keyWordInput").val()  ;    
						$("#currentPage").val(currentPage);
						//  $("#keyWord").val(keyWord);                  //同上
						$("#spForm").submit();
					});
			$("#cpMenu a").click(function() {
				var currentPage = $(this).text();
				// var keyWord=$("#keyWordInput").val()  ;
				$("#currentPage").val(currentPage);
				// $("#keyWord").val(keyWord);
				$("#spForm").submit();
			});
			/* $("#lsMenu a").click(function(){
			     var lineSize=$(this).text()   ;
			     var keyWord=$("#keyWordInput").val()  ;
			     $("#lineSize").val(lineSize);
			     $("#keyWord").val(keyWord);
			     $("#spForm").submit() ;
			});

			$("#searchBtn").click(function(){
			    var keyWord=$("#keyWordInput").val()  ;
			     $("#keyWord").val(keyWord);
			     $("#spForm").submit() ;
			    return false ;
			  });  
			 */
		});
	</script>
</body>
</html>