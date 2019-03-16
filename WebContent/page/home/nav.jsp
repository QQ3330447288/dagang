<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<!--小屏幕导航按钮和logo-->
		<div class="navbar-header">
			<button class="navbar-toggle">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="" class="navbar-brand">大岗农民工服务平台</span></a>
		</div>
		<!--小屏幕导航按钮和logo-->
		<!--导航-->
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="" id="item1"><span
						class="glyphicon glyphicon-home"></span>&nbsp;招工信息</a></li>
				<li><a href="./lawInfo.jsp" id="item2">法律法规</a></li>
				<li><a href="./apply.jsp" id="item3">招工申请</a></li>
				<li><a href="./lodgeComplaint.jsp" id="item4">我要投诉</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<li><a href="./login.jsp" target="__blank__" style=""
					role="button"> <span class="glyphicon glyphicon-user"></span>&nbsp;${sessionScope.loginUserName}已登录
				</a></li>
				<li><a href="./register.jsp" target="__blank__" style=""
					role="button"><span class="glyphicon glyphicon-plus"></span>&nbsp;注册</a></li>
				<li><a href="" style="" role="button" data-toggle="modal"
					data-target="#myModal"><span
						class="glyphicon glyphicon-log-out"></span>&nbsp;退出</a></li>
				<li><a href="./user.jsp" style="" role="button"> <span
						class="glyphicon glyphicon-user"></span>&nbsp;会员中心
				</a></li>
			</ul>
		</div>
		<!--导航-->
	</div>
</nav>