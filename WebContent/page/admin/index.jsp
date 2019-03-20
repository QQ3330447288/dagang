<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
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

<body onload="showTime();">
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
						<li class="active">>>首页</li>
					</ul>
				</div>
				<!-- /Page Breadcrumb -->
				<!-- Page Body -->
				<div class="page-body">
					<h4>欢迎使用本大岗农名工服务管理系统</h4>
					<h4>当前时间：<span id="show"></span></h4>
				</div>
			</div>
			<!-- /Page Body -->
		</div>
		<!-- /Page Content -->
	</div>
	<%@include file="blockjs.jsp"%>
	<script type="text/javascript">
	function showTime() {
	　　　　var nowTime = new Date();
	　　　　var years = nowTime.getFullYear();
	　　　　var mouths = nowTime.getMonth();
	　　　　var days = nowTime.getDate();
	　　　　var hours = nowTime.getHours();
	　　　　var minites = nowTime.getMinutes();
	　　　　var seconds = nowTime.getSeconds();
	　　　　var time = years+"年";
	　　　　time += (mouths+1)+"月"+days+"日";
	　　　　time += (hours<10?"0":"")+hours;
	　　　　time += (minites<10?":0":":") + minites;
	　　　　time += (seconds<10?":0":":") + seconds;
	　　　　time += (hours>12)?"PM":"AM";
	　　　　document.getElementById("show").innerHTML = time;
	　　　　setTimeout("showTime()",1000);
	　　　　}
	</script>
</body>
</html>