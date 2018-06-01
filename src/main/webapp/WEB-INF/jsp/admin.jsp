<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />
<c:set var="blog" value="${pageContext.request.contextPath}" />
<title>Support Admin</title>
<!-- BOOTSTRAP CORE STYLE CSS -->
<link href="${blog}/css/bootstrap.css" rel="stylesheet" />
<!-- FONT AWESOME CSS -->
<link href="${blog}/css/font-awesome.min.css" rel="stylesheet" />
<link href="${blog}/css/wangEditor.min.css" rel="stylesheet" />
<!-- CUSTOM STYLE CSS -->
<link href="${blog}/css/style.css" rel="stylesheet" />
<!-- Google	Fonts -->
<link href='http://fonts.googleapis.com/css?family=Nova+Flat'
	rel='stylesheet' type='text/css' />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css' />
<script src="${blog }/js/jquery.min.js"></script>
<script src="${blog }/js/bootstrap.js"></script>
<script src="${blog }/js/wangEditor.min.js"></script>
<script src="${blog}/js/ajaxfileupload.js"></script>
<title>ADMIN</title>
</head>
<body>
	<div id="head">
		<div class="container">
			<div class="row">

				<div class="col-lg-4 col-md-4 col-sm-4">
					<a href="index.html"> <img src="${blog}/images/logo.png" />
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 text-center">
					<img src="${blog}/images/top-mouse.png " class="header-mid" />
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h4>
						<span>Call:</span> +01-4589-987-567
					</h4>
					<h4>
						<span>E-mail:</span> info@domain.com
					</h4>
				</div>

			</div>
		</div>
	</div>
	<section>
	<div class="container">
		<div class="row noti-div">
			<div class="col-lg-3 col-md-3 col-sm-3  text-center">
				<a href="admin-user-list.html">
					<div class="alert alert-danger">
						<i class="fa fa-user fa-4x"></i> <span class="label label-info">New
							Users</span> <span class="label label-danger">5</span>
						<p>Total New Registered Users This Week</p>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3  text-center">
				<a href="admin-open-tickets.html">
					<div class="alert alert-success">
						<i class="fa fa-folder-open-o fa-4x"></i> <span
							class="label label-warning">Open Tickets</span> <span
							class="label label-success">45</span>
						<p>New Open Tickets Which Are Not Replied Yet</p>
					</div>
				</a>
			</div>


			<div class="col-lg-3 col-md-3 col-sm-3  text-center">
				<a href="admin-support-cat.html">
					<div class="alert alert-warning">
						<i class="fa fa-briefcase fa-4x"></i> <span
							class="label label-success">Support Categories</span> <span
							class="label label-warning">4</span>
						<p>Total Support Categories For Support Tickets.</p>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 text-center">
				<a href="admin-user-list.html">
					<div class="alert alert-info">
						<i class="fa fa-recycle fa-4x"></i> <span
							class="label label-danger">All Users</span> <span
							class="label label-info">145</span>
						<p>The Total Number Of Registered Users</p>

					</div>
				</a>
			</div>
		</div>


	</div>

	</section>
	<section id="main">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-md-9 col-sm-9 alert alert-info">
				<h3 class=" text-center">Compose New Notification</h3>
				<div class="hr-div">
					<hr />
				</div>
				<form:form modelAttribute="article" method="post"
					action="${blog}/article/createAtricle.html">
					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<label>文章标题</label>
						<form:input path="articleTitle" class="form-control"
							required="required" placeholder="标题" />
					</div>
					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<label>是否原创</label>
						<div>
							<label class="radio-inline"> <form:radiobutton
									path="articleType" value="0" checked="checked" /> 是
							</label> <label class="radio-inline"> <form:radiobutton
									path="articleType" value="1" /> 否
							</label>
						</div>
					</div>
					<div class="form-group col-lg-12 col-md-12 col-sm-12"
						style="display: none;" id="articleUrl">
						<label>文章链接</label>
						<form:input path="articleUrl" class="form-control"
							placeholder="文章链接" />
					</div>
					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<label>描述（文章前200字左右）</label>
						<form:textarea path="articleDes" class="form-control" rows="14"
							placeholder="简单描述" />
					</div>
					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<label>图片上传</label> <input type="file" id="imageFile"
							name="imageFile" />
						<div>
							<span id="fileMessage" style="color: red;"></span>
						</div>
						<div id="upload">
							<button type="button" class="btn btn-primary"
								onclick="uploadImage()">上传</button>
						</div>
					</div>
					<input type="hidden" name="articleImage" id="articleImage" />
					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<label>内容</label>
						<!-- 	<textarea class="form-control" rows="14"
							placeholder="Enter Notification "></textarea> -->
						<form:textarea path="articleContent" id="textarea1"
							class="form-control" rows="14" required="required" />
					</div>
					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<button type="submit" class="btn btn-primary">提交</button>
					</div>
				</form:form>

			</div>
			<div class="col-lg-3 col-md-3 col-sm-3">
				<a href="index.html" class=" label label-danger"><strong>LOGOUT
						/ SINGOUT</strong> </a>
				<div class="list-group">
					<a href="#" class="list-group-item active">Quick Links </a> <a
						href="admin-dashboard.html" class="list-group-item">My
						Dashboard</a> <a href="admin-user-list.html" class="list-group-item">New
						Users</a> <a href="admin-open-tickets.html" class="list-group-item">Open
						Tickets</a> <a href="admin-support-cat.html" class="list-group-item">Support
						Categories</a> <a href="admin-user-list.html" class="list-group-item">All
						Users</a> <a href="admin-change-password.html" class="list-group-item">Change
						Password</a>


				</div>
				<div class="alert alert-danger text-center">
					<h3>Import Information</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla
					pretium lectus vel justo iaculis blandit.
				</div>

			</div>
		</div>
	</div>
	</section>
	<div id="footer">
		<div class="container">

			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h3>Physical Location</h3>
					<p>
						<i>Addresss :</i> 125/890 , New York Street, <br /> United States
						of America (USA). <br /> &copy; 2014 yourdomian | More Templates
						<a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
						- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
							target="_blank">网页模板</a>

					</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h3>Get Quick Help</h3>
					<h4>
						<span>Call: </span>+01-4589-987-567
					</h4>
					<h4>
						<span>E-mail: </span>info@domain.com
					</h4>
					<h4>
						<span>Skype:</span> sonasup
					</h4>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">

					<h3>Subscribe For Updates</h3>
					<form>

						<div class="form-group">
							<input type="text" class="form-control" required="required"
								placeholder="Your Email" />
						</div>

						<div class="form-group">
							<button type="submit" class="btn btn-danger">提交</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			var editor = new wangEditor('textarea1');
			editor.create();
			$('input:radio[name="articleType"]').change(function() {
				var value = $(this).val();
				if (value == 0) {
					$("#articleUrl").hide();
				} else {
					$("#articleUrl").show();
				}
			});
		});

		function uploadImage() {
			   $.ajaxFileUpload
	            (
	                {
	                    url: '${blog}/article/uploadImage.do', //用于文件上传的服务器端请求地址
	                    secureuri: false, //是否需要安全协议，一般设置为false
	                    fileElementId: 'imageFile', //文件上传域的ID
	                    dataType: 'json', //返回值类型 一般设置为json
	                    success: function (data, status)  //服务器成功响应处理函数
	                    {
	                        if(data.code==200){
	                        	$("#articleImage").val(data.data);
	                        	$("#imageFile").hide();
	                        	$("#upload").hide();
	                        }
	                        $("#fileMessage").html(data.msg);
	                    },
	                    error: function (data, status, e)//服务器响应失败处理函数
	                    {
	                        alert(e);
	                    }
	                }
	            )
		}
	</script>
</body>
</html>