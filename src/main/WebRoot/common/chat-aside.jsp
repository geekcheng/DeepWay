<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
	
		<aside class="fixed skin-6">	
			<div class="sidebar-inner scrollable-sidebar">
<!-- 				<div class="size-toggle"> -->
<!-- 					<a class="btn btn-sm" id="sizeToggle"> -->
<!-- 						<span class="icon-bar"></span> -->
<!-- 						<span class="icon-bar"></span> -->
<!-- 						<span class="icon-bar"></span> -->
<!-- 					</a> -->
<!-- 					<a class="btn btn-sm pull-right logoutConfirm_open"  href="#logoutConfirm"> -->
<!-- 						<i class="fa fa-power-off"></i> -->
<!-- 					</a> -->
<!-- 				</div>/size-toggle	 -->
				<div class="user-block clearfix">
					<img src="${ctx }/static/less/img/log.png" alt="">
					<div class="detail">
						<strong>${currentUser.username }</strong>
<!-- 						<span class="badge badge-danger m-left-xs bounceIn animation-delay4">4</span> -->
						<ul class="list-inline">
<!-- 							<li><a href="profile.html">Profile</a></li> -->
<!-- 							<li><a href="inbox.html" class="no-margin">Inbox</a></li> -->
<!-- 						</ul> -->
					</div>
				</div><!-- /user-block -->
<!-- 				<div class="search-block"> -->
<!-- 					<div class="input-group"> -->
<!-- 						<input type="text" class="form-control input-sm" placeholder="search here..."> -->
<!-- 						<span class="input-group-btn"> -->
<!-- 							<button class="btn btn-default btn-sm" type="button"><i class="fa fa-search"></i></button> -->
<!-- 						</span> -->
<!-- 					</div>/input-group -->
<!-- 				</div>/search-block -->
				<div class="main-menu">
<ul>
<!-- 						<li class=""> -->
<%-- 							<a href="${ctx }/user/myspace"> --%>
<!-- 								<span class="menu-icon"><i class="fa fa-desktop fa-lg"></i></span> -->
<!-- 								<span class="text">工作台</span> -->
<!-- 								<span class="menu-hover"></span> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li class=""> -->
<%-- 							<a href="${ctx }/project/list"> --%>
<!-- 								<span class="menu-icon"><i class="fa fa-laptop fa-lg"></i></span> -->
<!-- 								<span class="text">项目管理</span> -->
<!-- 								<span class="menu-hover"></span> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li class=""> -->
<%-- 							<a href="${ctx }/expert/list"> --%>
<!-- 								<span class="menu-icon"><i class="fa fa-user fa-lg"></i></span> -->
<!-- 								<span class="text">专家库管理</span> -->
<!-- 								<span class="menu-hover"></span> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li class=""> -->
<%-- 							<a href="${ctx }/resultexpert/list"> --%>
<!-- 								<span class="menu-icon"><i class="fa fa-legal fa-lg"></i></span> -->
<!-- 								<span class="text">抽选结果</span> -->
<!-- 								<span class="menu-hover"></span> -->
<!-- 							</a> -->
<!-- 						</li> -->
						<li class="">
							<a href="${ctx }/chat">
								<span class="menu-icon">
									<i class="fa fa-comment fa-lg"></i> 
								</span>
								<span class="text">
									聊天室
								</span>
								<span class="menu-hover"></span>
							</a>
						</li>
						<li class="">
							<a href="${ctx }/user/list">
								<span class="menu-icon">
									<i class="fa fa-comment fa-lg"></i> 
								</span>
								<span class="text">
									用户
								</span>
								<span class="menu-hover"></span>
							</a>
						</li>
					</ul>				
				
				</div><!-- /main-menu -->
			</div><!-- /sidebar-inner scrollable-sidebar -->
		</aside>
