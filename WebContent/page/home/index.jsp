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
<meta name="keywords" content="蓝色旗帜">
<title></title>
<%@include file="blockcss.jsp"%>
</head>
<body>
	<!-- nav -->
	<%@include file="nav.jsp"%>
	<!-- /nav -->

	<div class="container" style="margin-top: 60px">
		<div class="row">
			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-heading">最新招工信息</div>
					<div class="panel-body">
						<ul>
							<li class="list-group-item"><a href="index.html">java</a></li>
							<li class="list-group-item"><a href="index.html">java</a></li>
							<li class="list-group-item"><a href="index.html">java</a></li>
							<li class="list-group-item"><a href="index.html">java</a></li>
						</ul>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">热门招工信息</div>
					<div class="panel-body">
						<ul>
							<li class="list-group-item"><a href="index.html">java</a></li>
							<li class="list-group-item"><a href="index.html">java</a></li>
							<li class="list-group-item"><a href="index.html">java</a></li>
							<li class="list-group-item"><a href="index.html">java</a></li>
						</ul>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">热门企业</div>
					<div class="panel-body">
						<ul>
							<li class="list-group-item"><a href="index.html">java</a></li>
							<li class="list-group-item"><a href="index.html">java</a></li>
							<li class="list-group-item"><a href="index.html">java</a></li>
							<li class="list-group-item"><a href="index.html">java</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="media well addboxshadow">
							<div class="col-md-8">
								<h4 class="card-title">Special title treatment</h4>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-primary">Go somewhere</a>
							</div>
							<div class="col-md-1" style="margin-top: 2px">
								<img
									src="{{url_for('static',filename='images/app-banner.jpg')}}"
									height="120">
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="media well addboxshadow">
							<div class="col-md-8">
								<h4 class="card-title">Special title treatment</h4>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-primary">Go somewhere</a>
							</div>
							<div class="col-md-1" style="margin-top: 2px">
								<img
									src="{{url_for('static',filename='images/app-banner.jpg')}}"
									height="120">
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="media well addboxshadow">
							<div class="col-md-8">
								<h4 class="card-title">Special title treatment</h4>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-primary">Go somewhere</a>
							</div>
							<div class="col-md-1" style="margin-top: 2px">
								<img
									src="{{url_for('static',filename='images/app-banner.jpg')}}"
									height="120">
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="media well addboxshadow">
							<div class="col-md-8">
								<h4 class="card-title">Special title treatment</h4>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-primary">Go somewhere</a>
							</div>
							<div class="col-md-1" style="margin-top: 2px">
								<img
									src="{{url_for('static',filename='images/app-banner.jpg')}}"
									height="120">
							</div>
						</div>
					</div>


					<div class="panel-body">
						<nav aria-label="...">
							<ul class="pagination">
								<li class="disabled"><span> <span aria-hidden="true">&laquo;</span>
								</span></li>
								<li class="active"><span>1 <span class="sr-only">(current)</span></span>
								</li>
								<li class=""><span>2 <span class="sr-only">(current)</span></span>
								</li>
								<li class=""><span>3 <span class="sr-only">(current)</span></span>
								</li>
								<li class=""><span>4 <span class="sr-only">(current)</span></span>
								</li>
								<li class=""><span>5 <span class="sr-only">(current)</span></span>
								</li>
								<li class="disabled"><span> <span aria-hidden="true">&raquo;</span>
								</span></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="blockjs.jsp"%>
	<script>
		$(document).ready(function() {
			$("#item1").addClass("active_diy");
		})
	</script>
</body>
</html>

