<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<li><a href="index.jsp" class="menu-dropdown"> <i
				class="menu-icon fa fa-file-text"></i> <span class="menu-text">首页</span>
				<i class="menu-expand"></i>
		</a></li>

		<li><a href="#" class="menu-dropdown"> <i
				class="menu-icon fa fa-file-text"></i> <span class="menu-text">招工信息管理</span>
				<i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="jobList.jsp"> <span class="menu-text">
							招工信息列表 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
			<ul class="submenu">
				<li><a href="addJobInfo.jsp"> <span class="menu-text">
							添加招工信息 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
			<ul class="submenu">
				<li><a href="jobCateList.jsp"> <span class="menu-text">
							招工信息分类 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
			<ul class="submenu">
				<li><a href="addJobCate.jsp"> <span class="menu-text">
							添加招工分类 </span> <i class="menu-expand"></i>
				</a></li>
			</ul></li>
		<li><a href="#" class="menu-dropdown"> <i
				class="menu-icon fa fa-file-text"></i> <span class="menu-text">法律法规管理</span>
				<i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="/admin/document/index.html"> <span
						class="menu-text"> 法律法规列表 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
			<ul class="submenu">
				<li><a href="/admin/document/index.html"> <span
						class="menu-text"> 发布法律法规 </span> <i class="menu-expand"></i>
				</a></li>
			</ul></li>
		<li><a href="#" class="menu-dropdown"> <i
				class="menu-icon fa fa-file-text"></i> <span class="menu-text">投诉信息管理</span>
				<i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="complainInfoList.jsp"> <span class="menu-text">
							投诉信息列表 </span> <i class="menu-expand"></i>
				</a></li>
			</ul></li>


		<li><a href="http://www.chuanke.com/s2260700.html"
			target="_blank" class="menu-dropdown"> <i
				class="menu-icon fa fa-user"></i> <span class="menu-text">用户信息管理</span>
				<i class="menu-expand"></i>
		</a>
			<ul class="submenu">
				<li><a href="./userList.jsp"> <span class="menu-text">
							用户信息列表 </span> <i class="menu-expand"></i>
				</a></li>
			</ul>
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