<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
	
		<aside class="fixed skin-6">	
			<div class="sidebar-inner scrollable-sidebar">
				<div class="user-block clearfix">
					<img src="${ctx }/static/less/img/log.png" alt="">
					<div class="detail">
						<strong>${currentUser.username }</strong>
						<ul class="list-inline">
					</div>
				</div><!-- /user-block -->
				<div class="main-menu">
<ul>
						<li class="">
							<a href="${ctx }/deeproute/">
								<span class="menu-icon"><i class="fa fa-laptop fa-lg"></i></span>
								<span class="text">路由</span>
								<span class="menu-hover"></span>
							</a>
						</li>
<!-- 						<li class=""> -->
<%-- 							<a href="${ctx }/expert/list"> --%>
<!-- 								<span class="menu-icon"><i class="fa fa-user fa-lg"></i></span> -->
<!-- 								<span class="text">专家库管理</span> -->
<!-- 								<span class="menu-hover"></span> -->
<!-- 							</a> -->
<!-- 						</li> -->
					</ul>				
				
				</div>
			</div>
		</aside>
