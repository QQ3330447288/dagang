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
						<li class="active">>>招工信息管理>>招工信息列表</li>
					</ul>
				</div>
				<!-- /Page Breadcrumb -->
				<!-- Page Body -->
				<div class="page-body">
					<table class="table">
						<tr>
							<th>编号</th>
							<th>工作</th>
							<th>任职需求</th>
							<!-- <th>工作分类</th> -->
							<th>添加时间</th>
							<th>操作</th>
						</tr>
						<s:iterator value="#session.jobinfo_list" var="jobinfo">
							<tr>
								<th><s:property value="#jobinfo.id" /></th>
								<th><s:property value="#jobinfo.jobname" /></th>
								<th><s:property value="#jobinfo.requireInfo" /></th>
								<th></th>
								<th>编辑删除</th>
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
	<script>
	function refresh(){
    	url = location.href;
    	var once = url.split("#");
    	if (once[1] != 1) {
        	url += "#1";
        	self.location.replace(url);
        	window.location.reload();
   		}
	}
	//文档就绪函数
	$(document).ready(function() {
		//alert(11);
		$.get("<%=path%>/findUserJobInfo.action?page=1&pageSize=6",
							function(data, status) {
								refresh();
							});
				});
	</script>
</body>
</html>