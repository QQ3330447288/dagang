<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<meta name="description" content="Dashboard">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="blockcss.jsp"%>
</head>
<body>
	<!-- top -->
	<%@include file="top.jsp"%>
	<!-- /top -->
	<div class="main-container container-fluid">
		<div class="page-container">
			<!-- Page Sidebar -->
			<%@include file="menu.jsp"%>
			<!-- /Page Sidebar -->
			<!-- Page Content -->
			<div class="page-content">
				<!-- Page Breadcrumb -->
				<div class="page-breadcrumbs">
					<ul class="breadcrumb">
						<li class="active">>>招工信息管理>>添加招工信息</li>
					</ul>
				</div>
				<!-- /Page Breadcrumb -->
				<!-- Page Body -->
				<div class="page-body">
					<form action="<%=path%>/admin/Admin_addJobInfo.action"
						method="post" onsubmit="confirm('确认添加？')">
						<fieldset>
							<div class="form-group">
								<label for="input_name"><span
									class="glyphicon glyphicon-user"></span>&nbsp;工作名; </label> <input
									type="text" class="form-control input" name="jobname"
									id="userName" maxlength="15" placeholder="">
							</div>
							<div class="form-group">
								<label for="input_email"><span
									class="glyphicon glyphicon-lock"></span>&nbsp; 任职要求</label>
								<textarea class="form-control" rows="5" name="requireInfo"></textarea>
							</div>
							<div class="col-md-2">
								<input type="submit" value="确认发布"
									class="btn btn-log btn-primary btn-block">
							</div>
						</fieldset>
					</form>
				</div>
			</div>
			<!-- /Page Body -->
		</div>
		<!-- /Page Content -->
	</div>
	<%@include file="blockjs.jsp"%>
</body>
</html>