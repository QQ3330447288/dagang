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
						<li class="active">>>用户信息管理>>用户信息列表</li>
					</ul>
				</div>
				<!-- /Page Breadcrumb -->
				<!-- Page Body -->
				<div class="page-body">

					<table class="table">
						<tr>
							<th>编号</th>
							<th>法律法规</th>
							<th>发布时间</th>
							<th>操作</th>
						</tr>
						<s:iterator value="#session.lawinfo_list" var="lawinfo">
							<tr>
								<th><s:property value="#lawinfo.law_id" /></th>
								<th><s:property value="#lawinfo.law" /></th>
								<th><s:property value="#lawinfo.addtime" /></th>
								<th>编辑</th>
								<th>删除</th>
							</tr>
						</s:iterator>
					</table>
					<!-- 
					<s:iterator value="#session.lawinfo_list" var="lawinfo">
						<div class="panel-body">
							<div class="media well addboxshadow"
								style="background-color: white">
								<div class="col-md-12">
									<h4 class="card-title">
										<s:property value="#lawinfo.law_id" />
									</h4>
									<p class="card-text">
										<s:property value="#lawinfo.law" />
									</p>
									发布时间：20
									<s:property value="#lawinfo.addtime" />
								</div>
							</div>
						</div>
					</s:iterator>
 -->

				</div>
			</div>
			<!-- /Page Body -->
		</div>
		<!-- /Page Content -->
	</div>
	<%@include file="blockjs.jsp"%>
	<Script>
	function refresh(){
	    url = location.href;
	    var once = url.split("#");
	    if (once[1] != 1) {
	        url += "#1";
	        self.location.replace(url);
	        window.location.reload();
	    }
	}
	//setTimeout('refresh()', 1000);
	</script>
	<script>
	$(document).ready(function() {
		//alert(11);
		$.get("<%=path%>/findLawInfo.action?page=1&pageSize=5",
							function(data, status) {
								//alert(status);
								//alert(data)
								refresh();
							});
				})
	</script>
	</script>
</body>
</html>