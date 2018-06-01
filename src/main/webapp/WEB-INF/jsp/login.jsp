<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="blog" value="${pageContext.request.contextPath}" />
<html>
<!--<![endif]-->
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="${blog}/images/favicon.ico" rel="shortcut icon">
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<title>Login</title>
<!-- BOOTSTRAP CORE STYLE CSS -->
<link href="${blog}/css/bootstrap.css" rel="stylesheet" />
<!-- FONT AWESOME CSS -->
<link href="${blog}/css/font-awesome.min.css" rel="stylesheet" />
<!-- CUSTOM STYLE CSS -->
<link href="${blog}/css/style.css" rel="stylesheet" />
<!-- Google	Fonts -->
<link href='http://fonts.googleapis.com/css?family=Nova+Flat'
	rel='stylesheet' type='text/css' />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css' />
<!--  Jquery Core Script -->
<script src="${blog}/js/jquery.min.js"></script>
<!--  Core Bootstrap Script -->
<script src="${blog}/js/bootstrap.js"></script>

</head>
<body>
	<div id="head">
		<div class="container">
			<div class="row">

				<div class="col-lg-4 col-md-4 col-sm-4">
					<a href="${blog}/home.html"> <img src="${blog}/images/logo2.png"
						alt="沈留健个人博客" />
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 text-center">
					<%--    <img src="${blog}/images/top-mouse.png "  class="header-mid" alt="沈留健个人博客"/>
 --%>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<!--        <h4><span>Call:</span> +01-4589-987-567</h4> -->
					<h4>
						<span>电子邮箱:</span>slj_zone@163.com
					</h4>
				</div>
			</div>
		</div>
	</div>
	<section>
		<div class="container">
			<div class="row">

				<div class="col-lg-4 col-md-4 col-sm-4">
					<img src="${blog}/images/premium.png" class="img-responsive"
						alt="沈留健个人博客" />
					<h3>擅长语言</h3>
					<p>PHP,JAVA,JAVASCRIPT,HTML</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<img src="${blog}/images/moniter.png"
						class="img-responsive img-max-width" alt="沈留健个人博客" />

				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h3>登录</h3>
					<form>
						<div class="form-group">
							<input type="text" class="form-control" required="required"
								placeholder="邮箱" />
						</div>
						<div class="form-group">
							<input type="password" class="form-control" required="required"
								placeholder="密码" />
						</div>
						<div class="form-group">
							<a href="user-dashboard.html" class="btn btn-success">登录</a>
						</div>
						<a href="#">忘记密码 ?</a>

					</form>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4">
					<img src="${blog}/images/award.png" class="img-responsive"
						alt="沈留健个人博客" />
					<h3>掌握技术</h3>
					<p>
						SSH、SSM框架；NETTY框架；RABITMQ等消息中间键；REDIS、MEMCAHED等缓存框架；MYSQL、MONGDB等非关系型数据库。
					</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">

					<h3>注册</h3>
					<form>
						<div class="form-group">
							<input type="text" class="form-control" required="required"
								placeholder="昵称" />
						</div>
						<div class="form-group">
							<input type="text" class="form-control" required="required"
								placeholder="邮箱" />
						</div>
						<div class="form-group">
							<input type="text" class="form-control" required="required"
								placeholder="密码" />
						</div>

						<div class="form-group">
							<a href="user-dashboard.html" class="btn btn-primary">注册</a>
						</div>
						<strong>注意: </strong>属于个人博客，现在未开通注册功能
					</form>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<img src="${blog}/images/up.png" class="img-responsive"
						alt="沈留健个人博客" />
					<h3>建议或问题</h3>
					<p>如果有什么问题或者建议，请通过联系页面，发邮件给我。</p>
				</div>
			</div>
		</div>
	</section>
	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h3>地址</h3>
					<p>
						<i>地址 :</i> 江苏苏州 <br />
					</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h3>联系方式</h3>
					<h4>
						<span> 邮箱: </span>slj_zone@163.com
					</h4>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h3>所有者</h3>
					<h4>
						<span> 作者: </span>沈留健
					</h4>
					<!--     <form>
                        <div class="form-group">
                            <input type="text" class="form-control" required="required" placeholder="Your Email" />
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-danger">Click To Subscribe</button>
                        </div>
                    </form> -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>
