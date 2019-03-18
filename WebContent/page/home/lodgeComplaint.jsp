<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1 , user-scalable=no">
<meta name="description" content="">
<!-- add description message which will be showing on the search-->
<meta name="keywords" content="">
<title>${sessionScope.jobinfo_list}</title>
<%@include file="blockcss.jsp"%>
</head>
<body>
	<!-- nav -->
	<%@include file="nav.jsp"%>
	<!-- /nav -->
	<div class="container" style="margin-top: 60px">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">投诉</div>
					<div class="panel-body">
						<fieldset>
							<div class="form-group">
								<label for="input_name"><span
									class="glyphicon glyphicon-user"></span>&nbsp;投诉人</label> <input
									type="text" class="form-control input" name="userName"
									id="userName" maxlength="15" placeholder="请输入申请人真实姓名"
									value="${sessionScope.loginUserName}" disabled="disabled"> <span id="tip"
									style="color: red; font-weight: bold"></span>
							</div>
							<div class="form-group">
								<label for="input_name"><span
									class="glyphicon glyphicon-user"></span>&nbsp;投诉对象</label> <input
									type="text" class="form-control input" name="userName"
									id="userName" maxlength="15" autofocus> <span id="tip"
									style="color: red; font-weight: bold"></span>
							</div>
							<div class="form-group">
								<label for="input_email"><span
									class="glyphicon glyphicon-lock"></span>&nbsp;投诉信息</label>
								<textarea class="form-control" rows="5"></textarea>
							</div>
							<div class="col-md-12">
								<input type="submit" value="投诉"
									class="btn btn-log btn-primary btn-block" onclick="register();">
							</div>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="bottom.jsp"%>
	<%@include file="blockjs.jsp"%>
	<script>
		$(document).ready(function() {
			$("#item4").addClass("active_diy");
		})
	</script>
</body>
</html>

