<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1 , user-scalable=no">
<meta name="description" content="">
<meta name="keywords" content="">
<title>个人中心</title>
<%@include file="blockcss.jsp"%>
</head>
<body>
	<!-- nav -->
	<%@include file="nav.jsp"%>
	<!-- /nav -->
	<div class="container" style="margin-top: 60px">
		<div class="row">
			<%@include file="menu.jsp"%>
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-map-marker"></span>&nbsp;会员中心
						</h3>
					</div>
					<div class="panel-body">
						<form role="form" method="post" enctype="multipart/form-data">
							<fieldset>
								<div class="form-group">
									<label for="input_email"><span
										class="glyphicon glyphicon-envelope"></span>&nbsp;账号</label> <input
										type="text" class="form-control"
										value="${sessionScope.loginUserName}" disabled="disabled">
								</div>
								<div class="form-group">
									<label for="input_email"><span
										class="glyphicon glyphicon-envelope"></span>&nbsp;昵称</label> <input
										type="text" class="form-control" placeholder="请输入昵称"
										value="">
								</div>
								<div class="form-group">
								<label for="input_email"><span
										class="glyphicon glyphicon-envelope"></span>&nbsp;性别</label><br>
								<label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio1" value="option1" checked="checked">
									男
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									女
								</label>
							</div>
							<div class="form-group">
									<label for="input_email"><span
										class="glyphicon glyphicon-envelope"></span>&nbsp;家庭地址</label> <input
										type="text" class="form-control">
								</div>
								<div class="form-group">
									<label for="input_email"><span
										class="glyphicon glyphicon-envelope"></span>&nbsp;绑定邮箱</label> <input
										type="email" class="form-control" placeholder="请输入邮箱">
								</div>
								<button type="button" class="btn btn-primary">修改</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="blockjs.jsp"%>
	<script>
		$(document).ready(function() {
			$("#item5").addClass("active_diy");
		})
		$(document).ready(function() {
			$("#m-1").addClass("active");
		});
	</script>
</body>
</html>


