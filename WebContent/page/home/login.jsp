<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<meta charset="UTF-8">
<meta name="keywords" content="keyword1,keyword2,keyword3">
<meta name="description" content="this is my page">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>
	<div class="container" style="margin-top:60px">
		<div class="col-md-6 col-md-offset-3">
			<!-- <h3 class="text-center">登录</h3> -->
		</div>
		<div class="col-md-4 col-md-offset-4" style="margin-top:30px;">
			<div class="panel panel-primary">
				<div class="panel-heading">
				<h3 class="panel-title">
					<span class="glyphicon glyphicon-plus"></span>&nbsp;登录
				</h3>
				</div>
				<div class="panel-body">
					<div style="color:green;font-size: 12px"></div>
					<form action="<%=path%>/user/User_login.action" method="post">
						<div class="form-group">
							<label>账号</label> <input type="text" name="username"
								class="form-control" placeholder="请输入用户账号" autofocus="autofocus">
						</div>
						<div class="form-group">
							<label>密码</label> <input type="password" name="password"
								class="form-control" placeholder="请输入用户密码">
						</div>
						<div class="form-group">
								<label for="input_password"></label>
									没有账号，请前往<a href="<%=path%>/page/home/register.jsp">注册</a>！
								</div>
						<input class="btn btn-primary" type="reset" value="重置" /> <input
							class="btn btn-primary" type="submit" value="登录" />
					</form>
				</div>
			</div>
		</div>
	</div>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous">
	
</script>
</body>
</html>