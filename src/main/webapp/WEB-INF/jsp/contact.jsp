<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="common.jsp"%>
<title>沈留健个人博客联系页面</title>
</head>
<body class="body-container">
	<header id="mocha-head" class="header"> <!-- Background -->
	<div class="background-image"></div>
	<!-- container -->
	<div class="container">
		<!-- row1  -->
		<%@include file="head.jsp"%>
		<!-- end row 1-->
		<!-- row2 -->
		<div class="row">
			<div class="span12 teaser">
				<h2>Contact</h2>
				<p>不要犹豫，请给我写信</p>
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
			<!-- page content -->
			<div class="span8">
				<form:form class="comments-form contact-form" modelAttribute="suggestion" method="post"
				   action="${blog}/suggestion/sendMessage.html">
					<form:input type="text" path="fromName" placeholder="你的名字*" class="name" required="required"/>
					<form:input type="email" path="toAddress" class="email" placeholder="你的邮箱*" required="required"/>
					<form:input type="text" path="subject" placeholder="主题*" class="name" required="required"/>
					<form:textarea class="message" path="content" placeholder="内容*" required="required"></form:textarea>
					<input type="submit" class="mocha-button submit-comment"
						value="发送消息" />
					</form:form>
			</div>
			<!-- end comments form -->
			<!-- content -->
			<div class="post-content fixed-content span4">
				<!-- content -->
				<div class="content">
					<h4>不要犹豫写信给我!</h4>
					<p class="light-font">如果你对本博客网站有什么建议，或者有什么技术上问题的分享、讨论，请联系我。</p>
					<div class="margin"></div>
					<!-- item meta -->
					<div class="item-meta">
						<dl>
							<dt>地址:</dt>
							<dd>江苏苏州</dd>
							<dt>邮箱:</dt>
							<dd>slj_zone@163.com</dd>
						</dl>
					</div>
					<!-- end item meta -->
				</div>
				<!-- end content -->
			</div>
			<!-- end content section  -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container --> </section>
	<!-- end page content -->
	<%@include file="foot.jsp"%>
</body>
</html>