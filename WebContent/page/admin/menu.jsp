<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path2 = request.getContextPath();
%>
<%
	String username = (String) session.getAttribute("adminUserName");
	Object obj = session.getAttribute("adminUserName");
%>
<%
	if (obj == null || "".equals(obj)) {
		response.sendRedirect("" + path2 + "+/page/admin/login.jsp");
	}
%>

<div class="page-sidebar" id="sidebar">
	<!-- Page Sidebar Header-->
	<div class="sidebar-header-wrapper">
		<input class="searchinput" type="text"> <i
			class="searchicon fa fa-search"></i>
		<div class="searchhelper">Search Reports, Charts, Emails or
			Notifications</div>
	</div>
	<!-- /Page Sidebar Header -->
	<!-- Sidebar Menu -->
	<ul class="nav sidebar-menu">
		<!--Dashboard-->
		<li><a href="<%=path2%>/page/admin/index.jsp"
			class="menu-dropdown"> <i class="menu-icon fa fa-file-text"></i>
				<span class="menu-text">首页</span> <i class="menu-expand"></i>
		</a></li>

		<li><a href="#" class="menu-dropdown"> <i
				class="menu-icon fa fa-file-text"></i> <span class="menu-text">招工信息管理</span>
				<i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="<%=path2%>/page/admin/jobList.jsp"> <span
						class="menu-text"> 招工信息列表 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
			<ul class="submenu">
				<li><a href="<%=path2%>/page/admin/addJobInfo.jsp"> <span class="menu-text">
							添加招工信息 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
			<ul class="submenu">
				<li><a href="<%=path2%>/admin/Admin_queryJobCate.action?page=1&pageSize=10"> <span class="menu-text">
							招工信息分类 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
			<ul class="submenu">
				<li><a href="<%=path2 %>/page/admin/addJobCate.jsp"> <span class="menu-text">
							添加招工分类 </span> <i class="menu-expand"></i>
				</a></li>
			</ul></li>
		<li><a href="#" class="menu-dropdown"> <i
				class="menu-icon fa fa-file-text"></i> <span class="menu-text">法律法规管理</span>
				<i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="<%=path2%>/page/admin/lawInfoList.jsp"> <span
						class="menu-text"> 法律法规列表 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
			<ul class="submenu">
				<li><a href="<%=path2%>/page/admin/addLawInfo.jsp"> <span
						class="menu-text"> 发布法律法规 </span> <i class="menu-expand"></i>
				</a></li>
			</ul></li>
		<li><a href="#" class="menu-dropdown"> <i
				class="menu-icon fa fa-file-text"></i> <span class="menu-text">投诉信息管理</span>
				<i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="<%=path2%>/admin/Admin_queryAllComplaint.action?page=1&pageSize=12"> <span
						class="menu-text"> 投诉信息列表 </span> <i class="menu-expand"></i>
				</a></li>
			</ul></li>


		<li>
		<a href="http://www.chuanke.com/s2260700.html"
			target="_blank" class="menu-dropdown"> <i
				class="menu-icon fa fa-user"></i> <span class="menu-text">招工申请管理</span>
				<i class="menu-expand"></i>
		</a>
		<ul class="submenu">
				<li><a
					href="<%=path2%>/admin/Admin_queryJobApplyList.action?page=1&pageSize=10">
						<span class="menu-text">工作申请列表 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
		</li>
		<li>
		<a href="http://www.chuanke.com/s2260700.html"
			target="_blank" class="menu-dropdown"> <i
				class="menu-icon fa fa-user"></i> <span class="menu-text">用户信息管理</span>
				<i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a
					href="<%=path2%>/admin/Admin_userList.action?page=1&pageSize=5">
						<span class="menu-text"> 用户信息列表 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
			</li>
		<li><a href="#" class="menu-dropdown"> <i
				class="menu-icon fa fa-user"></i> <span class="menu-text">管理员管理</span>
				<i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="./loginRecord.jsp"> <span class="menu-text">
							登录日志 </span> <i class="menu-expand"></i>
				</a></li>

			</ul></li>
	</ul>
	<!-- /Sidebar Menu -->
</div>