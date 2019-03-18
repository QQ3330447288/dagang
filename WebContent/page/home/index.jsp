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

			<div class="col-md-9">
				<div class="panel panel-primary">
					<div class="panel-heading">招工信息</div>
					<s:iterator value="#session.jobinfo_list" var="jobinfo">
						<div class="panel-body">
							<div class="media well addboxshadow" style="background-color:white">
								<div class="col-md-12">
									<h4 class="card-title">
										<s:property value="#jobinfo.jobname" />
									</h4>
									<p class="card-text">
										<s:property value="#jobinfo.requireInfo" />
									</p>
									<a href="#" class="btn btn-primary">申请</a>
								</div>
								<!-- 
								<div class="col-md-1" style="margin-top: 2px">
									<img src="<%=path%>/static/home/images/works.jpg" height="120"
										alt="pic">
								</div>
								 -->

							</div>
						</div>
					</s:iterator>
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
			<div class="col-md-3">
			<!-- 
				<div class="panel panel-primary">
					<div class="panel-heading">热门工作</div>
					<div class="panel-body">
						<ul>
							<li class="list-group-item"><a href="index.html">招聘10名矿工</a></li>
							<li class="list-group-item"><a href="index.html">招聘10名电子厂工人</a></li>
							<li class="list-group-item"><a href="index.html">需要3个外卖送餐员</a></li>
							<li class="list-group-item"><a href="index.html">招聘5名机械工人</a></li>
						</ul>
					</div>
				</div>
				 -->
				<div class="panel panel-primary">
					<div class="panel-heading">招工分类</div>
					<div class="panel-body">
						<ul>
							<li class="list-group-item"><a href="index.html">矿工（10）</a></li>
							<li class="list-group-item"><a href="index.html">建筑工人（12）</a></li>
							<li class="list-group-item"><a href="index.html">电子厂职工（23）</a></li>
							<li class="list-group-item"><a href="index.html">机械工人（23）</a></li>
						</ul>
					</div>
				</div>
				<div class="panel panel-primary">
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
		</div>
	</div>
	<%@include file="bottom.jsp"%>
	<%@include file="blockjs.jsp"%>
	<script>
	//文档就绪函数
	$(document).ready(function() {
		//alert(11);
		$.get("<%=path%>/findUserJobInfo.action?page=1&pageSize=5",
							function(data, status) {
								//alert(status);
								//alert(data)
							});
				})
	</script>
	<script>
    $(document).ready(function () {
        $("#item1").addClass("active_diy");
    })
</script>
</body>
</html>

