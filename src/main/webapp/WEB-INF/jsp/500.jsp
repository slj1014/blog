<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<c:set var="blog" value="${pageContext.request.contextPath}" />
<title>沈留健个人博客500</title>
<!-- Bootstrap core CSS -->
<link href="${blog }/css/bootstrap.css" rel="stylesheet">
<!-- FONT AWESOME CSS -->
<link href="${blog }/css/font-awesome.min.css" rel="stylesheet" />

<!-- custom CSS here -->
<link href="${blog }/css/error.css" rel="stylesheet" />
</head>
<body>
	<div class="container">

		<div class="row pad-top text-center">
			<div class="col-md-6 col-md-offset-3 text-center">
				<h1>What have you done?</h1>
				<h5>Now Go Back Using Below LInk</h5>
				<span id="error-link">500</span>
				<h2>! 内部服务器错误 !</h2>
			</div>
		</div>

		<div class="row text-center">
			<div class="col-md-8 col-md-offset-2">

				<h3>
					<i class="fa fa-lightbulb-o fa-5x"></i>
				</h3>
				<a href="${blog}/home.html" class="btn btn-primary">GO TO HOME PAGE</a> <br />
			</div>
		</div>

	</div>
	<!-- /.container -->
</body>
</html>