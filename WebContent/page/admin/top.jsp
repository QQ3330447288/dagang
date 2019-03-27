<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String path = request.getContextPath();%>
<!-- 头部 -->
<div class="navbar">
	<div class="navbar-inner" style="background: #337ab7;">
		<div class="navbar-container">
			<!-- Navbar Barnd -->
			<div class="navbar-header pull-left">
				<a onclick="javascript:;" class="navbar-brand" style="font-size:16px;padding-top:11px">
				大岗农名工服务管理平台
				</a>
			</div>
			<!-- /Navbar Barnd -->
			<!-- Sidebar Collapse -->
			<div class="sidebar-collapse" id="sidebar-collapse">
				<i class="collapse-icon fa fa-bars"></i>
			</div>
			<!-- /Sidebar Collapse -->
			<!-- Account Area and Settings -->
			<div class="navbar-header pull-right">
				<div class="navbar-account">
					<ul class="account-area">
						<li><a class="login-area dropdown-toggle"
							data-toggle="dropdown">
								<div class="avatar" title="View your public profile">
									<img src="<%=path %>/Static/admin/images/thanlon.jpg">
								</div>
								<section>
									<h2>
										<span class="profile"><span>admin</span></span>
									</h2>
								</section>
						</a> <!--Login Area Dropdown-->
							<ul
								class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
								<li class="username"><a>David Stevenson</a></li>
								<li class="dropdown-footer"><a
									href="<%=path%>/admin/Admin_logout.action"> 退出登录 </a></li>
							
							</ul> <!--/Login Area Dropdown--></li>
						<!-- /Account Area -->
						<!--Note: notice that setting div must start right after account area list.
                            no space must be between these elements-->
						<!-- Settings -->
					</ul>
				</div>
			</div>
			<!-- /Account Area and Settings -->
		</div>
	</div>
</div>
<!-- /头部 -->