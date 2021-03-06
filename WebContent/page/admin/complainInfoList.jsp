<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
						<li class="active">>>招工信息管理>>投诉信息列表</li>
					</ul>
				</div>
				<!-- /Page Breadcrumb -->
				<!-- Page Body -->
				<div class="page-body">
					<table class="table">
						<tr>
							<th>编号</th>
							<th>投诉人</th>
							<th>投诉对象</th>
							<th>投诉信息</th>
						</tr>
						<s:iterator value="#session.complaint_list" var="complaint_item">
							<tr>
								<th><s:property value="#complaint_item.id" /></th>
								<th><s:property value="#complaint_item.complaint" /></th>
								<th><s:property value="#complaint_item.complainObj"/></th>
								<th><s:property value="#complaint_item.complainInfo" /></th>
							</tr>
						</s:iterator>
					</table>

				</div>
			</div>
			<!-- /Page Body -->
		</div>
		<!-- /Page Content -->
	</div>
	<%@include file="blockjs.jsp"%>

</body>
</html>