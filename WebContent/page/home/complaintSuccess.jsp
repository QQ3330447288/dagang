<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>提交投诉信息成功</title>
</head>
<body>
	提交投诉信息成功，2s后自动返回！
	<!-- <script>window.location.href=""</script> -->
	<script>
setInterval(() => {
	window.location.href="<%=path%>/page/home/lodgeComplaint.jsp"
}, 2000);
</script>
</body>
</html>