<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@include file="common.jsp" %>
    <title>沈留健个人博客收藏文章</title>
</head>
<body class="body-container">
<!-- header -->
<header id="mocha-head" class="header"> <!-- Background -->
    <div class="background-image"></div>
    <!-- container -->
    <div class="container">
        <%@include file="head.jsp" %>
        <!-- row2 -->
        <div class="row">
            <div class="span12 teaser">
                <h2>Blog Content</h2>
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
            <div class="blog-wrapper blog-single-post span8">


                <!-- post -->
                <div class="post gallery-post">


                    <!-- post image / gallery -->
                    <div class="post-image">


                        <!-- flexslider -->
                        <!-- <div class="flexslider gallery-wrapper"> -->
                        <div>
                            <%--
                            <ul class="slides">
                                <li><img src="${blog}/images/demo/gallery1.png" alt="Gallery Image 1"></li>
                                <li><img src="${blog}/images/demo/gallery2.png" alt="Gallery Image 2"></li>
                            </ul> --%>

                            <img alt="沈留健个人博客" src="${article.articleImage}"
                                 style="width: 100%; height: 100%">
                        </div>
                        <!-- end flex slider gallery -->
                    </div>
                    <!-- end gallery / post image -->
                    <!-- meta -->
                    <div class="meta">
                        <p>
							<span><a href="#">${article.articleRead}次浏览</a><span
                                    class="dash">/</span> ${article.articleCreateStr} <!-- <span
								class="dash">/</span> <a href="#comments">0 条评论</a> -->
							   <span
                                       class="dash">/</span>
								<c:if test="${article.articleType==0}">
                                    <a href="#">原创</a></c:if>
								<c:if test="${article.articleType==1 }">
                                    <a href="${article.articleUrl}">引用:原文链接</a>
                                </c:if>
							</span>
                        </p>
                        <!-- <p>
                            Category: <span><a href="#">Technology</a>,<a href="#">Off
                                    Topic</a> <span class="dash">/</span> 13 August 2013 <span
                                class="dash">/</span> <a href="#comments">7 Comments</a></span>
                        </p> -->
                    </div>
                    <!-- end meta -->
                    <!-- content -->
                    <div class="post-content content-section">
                        <h3>
                            <a href="single.html">${article.articleTitle}</a>
                        </h3>
                        <div class="content">
                            <%-- 	<p class="light-font">Class aptent taciti sociosqu ad litora
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
                            <div class="margin"></div>
                            <div class="floatImage">
                                <img src="${blog}/images/demo/blog_post_image.png" alt="Post" />
                            </div>
                            <p class="light-font">
                                Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt
                                auctor a ornare odio. Sed non mauris vitae erat consequat auctor
                                eu in elit. Class aptent taciti sociosqu ad litora torquent per
                                conubia nostra, per inceptos himenaeos. <span class="bold">Mauris
                                    in erat justo. Nullam ac urna eu felis dapibus condimentum sit
                                    amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin
                                    condimentum fermentum nunc.</span> Etiam pharetra, erat sed fermentum
                                feugiat, velit mauris egestas quam, ut aliquam massa nisl quis
                                neque. Suspendisse in orci enim.
                            </p> --%>
                            ${article.articleContent}
                        </div>
                        <!-- end post content -->
                    </div>
                    <!-- end content -->
                    <c:if test="${!empty previousArticle}">
                        <div style="float: left">
                            上一篇:<a
                                href="${blog}/single.html?articleId=${previousArticle.articleId}">${previousArticle.articleTitle}</a>
                        </div>
                    </c:if>
                    <c:if test="${!empty nextArticle}">
                        <div style="float: right">
                            下一篇:<a
                                href="${blog}/single.html?articleId=${nextArticle.articleId}">${nextArticle.articleTitle}</a>
                        </div>
                    </c:if>
                    <div style="clear: both">
                    </div>
                    <!-- comments -->
                    <%-- 	<div id="comments" class="comments content-section">
                        <h3>4 Comments</h3>
                        <div class="comment">
                            <!-- avatar -->
                            <div class="avatar">
                                <img src="${blog}/images/demo/avatar1.png" alt="Avatar">
                            </div>
                            <!-- end avatar -->
                            <!-- content -->
                            <div class="content">

                                <div class="comment-meta">

                                    <a href="#">SuiteTheme</a> <span>18 August 2013</span> <a
                                        href="#respond" class="reply">Reply</a>

                                </div>
                                <!-- end comment meta -->


                                <!-- comment content -->
                                <div class="comment-content">

                                    <p class="light-font">Lorem ipsum dolor sit amet,
                                        consectetur adipisicing elit. Omnis, dolor odio sunt facilis
                                        hic quas laborum voluptatem excepturi quos ducimus nam
                                        perferendis vel aut ab nemo nisi soluta itaque nulla.</p>

                                </div>
                                <!-- end comment content -->

                            </div>
                            <!-- end content -->


                        </div>
                        <!-- end comment -->




                        <div class="comment">

                            <!-- avatar @note width and height will be removed in WP version -->
                            <div class="avatar">

                                <img src="${blog}/images/demo/avatar2.png" alt="Avatar">
                            </div>
                            <!-- end avatar -->


                            <!-- content -->
                            <div class="content">

                                <div class="comment-meta">

                                    <a href="#">Johny Depp</a> <span>19 August 2013</span> <a
                                        href="#respond" class="reply">Reply</a>

                                </div>
                                <!-- end comment meta -->


                                <!-- comment content -->
                                <div class="comment-content">

                                    <p class="light-font">Lorem ipsum dolor sit amet,
                                        consectetur adipisicing elit. Omnis, dolor odio sunt facilis
                                        hic quas laborum voluptatem excepturi quos ducimus nam
                                        perferendis vel aut ab nemo nisi soluta itaque nulla.</p>

                                </div>
                                <!-- end comment content -->

                            </div>
                            <!-- end content -->


                            <div class="comment">

                                <!-- avatar -->
                                <div class="avatar">

                                    <img src="${blog}/images/demo/avatar1.png" alt="Avatar">
                                </div>
                                <!-- end avatar -->


                                <!-- content -->
                                <div class="content">

                                    <div class="comment-meta">

                                        <a href="#">SuiteTheme</a> <span>18 August 2013</span> <a
                                            href="#respond" class="reply">Reply</a>

                                    </div>
                                    <!-- end comment meta -->


                                    <!-- comment content -->
                                    <div class="comment-content">

                                        <p class="light-font">Lorem ipsum dolor sit amet,
                                            consectetur adipisicing elit. Omnis, dolor odio sunt facilis
                                            hic quas laborum voluptatem excepturi quos ducimus nam
                                            perferendis vel aut ab nemo nisi soluta itaque nulla.</p>

                                    </div>
                                    <!-- end comment content -->

                                </div>
                                <!-- end content -->


                            </div>
                            <!-- end comment -->


                        </div>
                        <!-- end comment -->



                        <div class="comment">

                            <!-- avatar -->
                            <div class="avatar">

                                <img src="${blog}/images/demo/avatar3.png" alt="Avatar">
                            </div>
                            <!-- end avatar -->


                            <!-- content -->
                            <div class="content">

                                <div class="comment-meta">

                                    <a href="#">Brad Pitt</a> <span>18 August 2013</span> <a
                                        href="#respond" class="reply">Reply</a>

                                </div>
                                <!-- end comment meta -->


                                <!-- comment content -->
                                <div class="comment-content">

                                    <p class="light-font">Lorem ipsum dolor sit amet,
                                        consectetur adipisicing elit. Omnis, dolor odio sunt facilis
                                        hic quas laborum voluptatem excepturi quos ducimus nam
                                        perferendis vel aut ab nemo nisi soluta itaque nulla.</p>

                                </div>
                                <!-- end comment content -->

                            </div>
                            <!-- end content -->


                        </div>
                        <!-- end comment -->



                    </div> --%>
                    <!-- end comments -->


                    <!-- comments form -->
                    <!-- <div class="content-section comments-wrapper">


                        <h3 id="respond">Leave a Comment</h3>

                        <form class="comments-form">

                            <input type="text" name="name" placeholder="Your Name*"
                                class="name" /> <input type="text" name="email" class="email"
                                placeholder="Your Email*" /> <input type="text" name="website"
                                class="website" placeholder="Your Website" />
                            <textarea class="message" name="message"
                                placeholder="Your Comment*"></textarea>
                            <input type="submit" class="mocha-button submit-comment"
                                value="Submit Comment" />

                        </form>

                    </div> -->
                    <!-- end comments form -->


                </div>
                <!-- end post -->


            </div>
            <!-- end blog -->


            <!-- sidebar -->
            <div id="sidebar" class="sidebar span4">


                <div class="widgets-wrapper">


                    <div class="widget">


                        <!-- 	<h4>Categories</h4> -->
                        <!--
                        <div class="widget-content">

                            <ul>
                                <li><a href="#">Technology</a></li>
                                <li><a href="#">Music</a></li>
                                <li><a href="#">Featured</a></li>
                                <li><a href="#">General</a></li>
                                <li><a href="#">Productivity</a></li>
                            </ul>


                        </div> -->
                        <!-- end widget content -->
                    </div>
                    <!-- end widget -->
                    <!-- widget -->
                    <div class="widget">
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
                    <!-- widget -->
                    <div class="widget">
                        <h4>最近照片</h4>
                        <div class="widget-content">
                            <div class="works-wrapper">
                                <a href="${blog}/album.html"><img
                                        src="${blog}/images/1.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a>
                                <a
                                        href="${blog}/album.html"><img
                                        src="${blog}/images/2.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a>
                                <a
                                        href="${blog}/album.html"><img
                                        src="${blog}/images/3.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a>
                                <a
                                        href="${blog}/album.html"><img
                                        src="${blog}/images/4.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a>
                                <a
                                        href="${blog}/album.html"><img
                                        src="${blog}/images/5.jpg" alt="沈留健个人博客" style="height: 100%;width: 100%"/></a>
                                <a
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
<!-- end page content -->
<%@include file="foot.jsp" %>
</body>
</html>