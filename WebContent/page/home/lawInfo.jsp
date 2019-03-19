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
<title>法律法规</title>
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
					<div class="panel-heading">法律法规</div>
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
				<div class="panel panel-primary">
					<div class="panel-heading">法律分类</div>
					<div class="panel-body">
						<ul>
							<li class="list-group-item"><a href="index.html">中华人民共和国劳动法(10)</a></li>
							<li class="list-group-item"><a href="index.html">职工带新年休假条例(12)</a></li>
							<li class="list-group-item"><a href="index.html">工伤认定办法(10)</a></li>
							<li class="list-group-item"><a href="index.html">工伤保险条例(20)</a></li>
							<li class="list-group-item"><a href="index.html">失业保险条例(40)</a></li>
							<li class="list-group-item"><a href="index.html">住房公积金保险条例(20)</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="bottom.jsp"%>
	<%@include file="blockjs.jsp"%>
	<Script>
	function refresh(){
	    url = location.href;
	    //console.log(url);
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
	<script>
		$(document).ready(function() {
			$("#item2").addClass("active_diy");
		})
	</script>
</body>
</html>

