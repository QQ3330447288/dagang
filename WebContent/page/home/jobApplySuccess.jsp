<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
提交工作申请成功，2s后自动返回！

<script>
setInterval(() => {
	window.location.href="<%=path%>/page/home/jobApply.jsp"
}, 2000);
</script>
</body>
</html>