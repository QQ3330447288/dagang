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
						<li class="active">>>招工信息管理>>招工信息列表</li>
					</ul>
				</div>
				<!-- /Page Breadcrumb -->
				<!-- Page Body -->
				<div class="page-body">招工信息列表</div>
			</div>
			<!-- /Page Body -->
		</div>
		<!-- /Page Content -->
	</div>
	<%@include file="blockjs.jsp"%>
	<script>
		
	</script>
</body>
</html>