<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<sec:authorize var="hasChat" access="hasAnyRole('CHAT', 'DEVELOPER')"></sec:authorize>	
<!-- 		<div id="top-nav" class="fixed default skin-3"> -->
		<div id="top-nav" class="fixed  skin-6">
			<div class="brand">
				<span>专家信息管理系统</span>
				<span class="text-toggle"></span>
			</div><!-- /brand -->
			<button type="button" class="navbar-toggle pull-left" id="sidebarToggle">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<button type="button" class="navbar-toggle pull-left hide-menu" id="menuToggle">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<ul class="nav-notification clearfix">
			<li><a tabindex="-1" class="main-link logoutConfirm_open" href="${ctx }/register1"><i class="fa fa-lock fa-lg"></i>REG</a></li>
			<c:if test="${hasChat}" >
				<li class="profile dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<strong>${currentUser.username }</strong>
						<span><i class="fa fa-chevron-down"></i></span>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a class="clearfix" href="#">
								<img src="${ctx }/static/less/img/user.jpg" alt="">
								<div class="detail">
									<strong>${currentUser.username }</strong>
									<p class="grey">${currentUser.username }</p> 
								</div>
							</a>
						</li>
<!-- 						<li><a tabindex="-1" href="profile.html" class="main-link"><i class="fa fa-edit fa-lg"></i> Edit profile</a></li> -->
<!-- 						<li><a tabindex="-1" href="gallery.html" class="main-link"><i class="fa fa-picture-o fa-lg"></i> Photo Gallery</a></li> -->
<!-- 						<li><a tabindex="-1" href="#" class="theme-setting"><i class="fa fa-cog fa-lg"></i> Setting</a></li> -->
<!-- 						<li class="divider"></li> -->
<%-- 						<li><a tabindex="-1" class="main-link logoutConfirm_open" href="${ctx }/j_spring_security_logout"><i class="fa fa-lock fa-lg"></i> Log out</a></li> --%>
					</ul>
				</li>
				
				<li><a tabindex="-1" class="main-link logoutConfirm_open" href="${ctx }/j_spring_security_logout"><i class="fa fa-lock fa-lg"></i> 退出</a></li>
			</c:if>			
			
			<c:if test="${!hasChat}" >
						<li class="profile">
							<a class="" href="${ctx }/login">
								<strong>请登录</strong>
							</a>
						</li>
			</c:if>						

			</ul>
			
	
			
		</div><!-- /top-nav-->
		

