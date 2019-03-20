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
<title></title>
<%@include file="blockcss.jsp"%>
</head>
<body>
	<!-- nav -->
	<%@include file="nav.jsp"%>
	<!-- /nav -->
	<div class="container" style="margin-top: 60px">
		<div>
			<%@include file="menu.jsp"%>
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-map-marker"></span>&nbsp;修改密码
						</h3>
					</div>
					<div class="panel-body">
						<form role="form" method="post" enctype="multipart/form-data">
							<fieldset>
								<div class="form-group">
									<label for="input_email"><span
										class="glyphicon glyphicon-phone"></span>&nbsp;原手机号</label> <input
										type="password" class="form-control" placeholder="请输入原手机号"
										autofocus="autofocus">
								</div>
								<div class="form-group">
									<label for="input_phone"> <span
										class="glyphicon glyphicon-phone"></span>&nbsp;新手机号
									</label> <input id="input_phone" class="form-control"
										placeholder="请输入新手机号" name="password" type="text" value="">
								</div>
								<div class="form-group">
									<label for="input_phone"> <span
										class="glyphicon glyphicon-phone"></span>&nbsp;再次输入新手机号
									</label> <input id="input_phone" class="form-control"
										placeholder="再次输入新手机号" name="password" type="text" value="">
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
			$("#m-2").addClass("active");
		});
	</script>
</body>
</html>


