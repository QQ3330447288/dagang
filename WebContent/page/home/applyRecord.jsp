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
		<%@include file="menu.jsp"%>
		<div class="col-md-9">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						<span class="glyphicon glyphicon-map-marker"></span>&nbsp;申请记录
					</h3>
				</div>
				<div class="panel-body">
				<table class="table table-hover text-center">
					<thead>
						<tr>
							<th>编号</th>
							<th>申请职位</th>
							<th>公司</th>
							<th>申请理由</th>
							<th>申请时间</th>
							<th>申请状态</th>
						</tr>
					</thead>
					<s:iterator value="#session.students_list" var="stu">
						<!-- struts2分对象栈和上下文栈 放在session是放在上下文栈，取上下文栈取数据要用#开头-->
						<tr>
							<td><s:property value="#stu.sid" /></td>
							<td><s:property value="#stu.stuName" /></td>
							<td><s:property value="#stu.gender" /></td>
							<td><s:date name="#stu.birData" format="yyyy-MM-dd" /></td>
							<!--  带日期时间用-来表示-->
							<td><s:property value="#stu.address" /></td>
							<td><a href="<%=path %>/students/Students_update?sid=<s:property value="#stu.sid" />" class="btn btn-outline-primary">修改</a>
							 <a href="<%=path %>/students/Students_delete?sid=<s:property value="#stu.sid" />" class="btn btn-outline-danger" onclick="javascript:return confirm('确认要删除？')">删除</a></td>
						</tr>
					</s:iterator>
				</table>
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
			$("#m-3").addClass("active");
		});
	</script>
</body>
</html>


