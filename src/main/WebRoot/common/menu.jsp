<%@ page language="java"  pageEncoding="UTF-8"%>

  <div class="navbar navbar-fixed-top">
  
    <div class="navbar-inner">
<div class="${currentUser.screen =="0" ? 'container':'container-fluid' }">
        
        <div class="nav-collapse collapse">
          <ul class="nav">
         	<li ><a class="brand" href="${ctx }/"   ><img src="${ctx }/static/img/sinotrans.gif" style="width: 40px;" />松江物流</a></li>
          	<sec:authorize ifAnyGranted="ROLE_Admin,ROLE_OCEAN_OP,ROLE_WORK" >
          	<li class='active'><a href='${ctx }/user/myspace'><i class=" icon-home"></i>首页</a></li>
          	</sec:authorize>
<%--			<li  class='active'><a href='${ctx }/plan/listbysea'    >样例</a></li>--%>
			
			<c:if test="${not empty SPRING_SECURITY_CONTEXT}">
			<sec:authorize ifAnyGranted="ROLE_Admin" >
			<li class="dropdown">
				<a href='#' class="dropdown-toggle" data-toggle="dropdown" id="drop2" role="button"><i class="icon-asterisk"></i>应用 <b class="caret"></b></a>
				<ul class="dropdown-menu">
				<li><a href='${ctx }/user/myspace' >我的工作 </a></li>
<%--              <li class="nav-header">计划</li>--%>
<%--              <li><a href="${ctx }/plan/listbysea">海运计划</a></li>--%>
<%--              <li><a href="${ctx }/plan/listbyair">空运计划</a></li>--%>
<%--              <li><a href="${ctx }/customerplan/">报关计划</a></li>--%>
              <li class="nav-header">作业单</li>
              <li><a href="${ctx }/work/listbysea">海运作业单</a></li>
              <li><a href="${ctx }/work/listbyair">空运作业单</a></li>
              <li><a href="${ctx }/customersheet/">报关作业单</a></li>
              <li class="nav-header">费用</li>
              <li><a href="${ctx }/charge/worklist"   class="tooltip-test" data-placement="right" title="结费已经完成的作业" >结费</a></li>
              <li><a href="${ctx }/charge">结费查询</a></li>
              <li><a href="${ctx }/balance/">结算单</a></li>
              <li><a href="${ctx }/invoice/">发票</a></li>
              <li><a href="${ctx }/invoice/mq/">MQ文件</a></li>
             
<%--              <sjs:auth url="/user/">	--%>
<%--              <li class="nav-header">用户管理</li>--%>
<%--              <li><a href="${ctx }/user/"><i class="icon-user"></i>用户管理</a></li>--%>
<%--              <li><a href="${ctx }/role/">角色管理</a></li>--%>
<%--              <li><a href="${ctx }/resource/">资源管理</a></li>--%>
<%--              <li><a href="${ctx }/" class="tooltip-test" data-placement="right" title="恢复已经删除的数据">垃圾箱</a></li>--%>
<%--              </sjs:auth>--%>
				</ul>
			</li>
			
			
			<li class="dropdown">
				<a href='#' class="dropdown-toggle" data-toggle="dropdown" id="drop2" role="button"><i class="icon-asterisk"></i>系统 <b class="caret"></b></a>
				<ul class="dropdown-menu">
				  <li class="nav-header">系统管理</li>
	              <li><a href="${ctx }/transpoint/">运输点</a></li>
	              <li><a href="${ctx }/vehicle/">车辆管理</a></li>
	              <li><a href="${ctx }/invoicetype/">发票类型</a></li>
	              <li><a href="${ctx }/cType/">费用类型</a></li>
	              <li><a href="${ctx }/parter/">客户供应商</a></li>
	<%--              <li><a href="${ctx }/contract/">价格协议</a></li>--%>
	              <li><a href="${ctx }/rateaide/">费用助手</a></li>
	               <li><a href="${ctx }/sjsmsg/formsjsmsg/1">系统消息</a></li>
	               <li><a href="${ctx }/p">系统属性</a></li>
<%--	              <li><a href="${ctx }/" class="tooltip-test" data-placement="right" title="恢复已经删除的数据">垃圾箱</a></li>--%>
	<%--              <sjs:auth url="/user/">	--%>
	              <li class="nav-header">用户管理</li>
	              <li><a href="${ctx }/user/"><i class="icon-user"></i>用户管理</a></li>
	              <li><a href="${ctx }/role/">角色管理</a></li>
	              <li><a href="${ctx }/resource/">资源管理</a></li>
             
<%--              </sjs:auth>--%>
				</ul>
			</li>			
			
			
			</sec:authorize>




			<sec:authorize ifAnyGranted="ROLE_WORK" >
			<li class="dropdown">
				<a href='#' class="dropdown-toggle" data-toggle="dropdown" id="drop2" role="button"><i class="icon-asterisk"></i>作业 <b class="caret"></b></a>
				<ul class="dropdown-menu">
				<li><a href='${ctx }/user/myspace' >我的工作 </a></li>
<%--              <li class="nav-header">计划</li>--%>
<%--              <li><a href="${ctx }/plan/listbysea">海运计划</a></li>--%>
<%--              <li><a href="${ctx }/plan/listbyair">空运计划</a></li>--%>
<%--              <li><a href="${ctx }/customerplan/">报关计划</a></li>--%>
	              <li class="nav-header">作业单</li>
	              <li><a href="${ctx }/work/listbysea">海运作业单</a></li>
	              <li><a href="${ctx }/work/listbyair">空运作业单</a></li>
	              <li><a href="${ctx }/customersheet/">报关作业单</a></li>
	              <li class="nav-header">基础信息</li>
	               <li><a href="${ctx }/parter/">客户供应商</a></li>
				</ul>
			</li>
			</sec:authorize>


			<sec:authorize ifAnyGranted="ROLE_Financial" >
			<li class="dropdown">
				<a href='#' class="dropdown-toggle" data-toggle="dropdown" id="drop2" role="button">费用<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="${ctx }/charge/worklist"   class="tooltip-test" data-placement="right" title="结费已经完成的作业" >结费</a></li>
              		<li><a href="${ctx }/charge">结费查询</a></li>
					<li><a href="${ctx }/balance/">结算单</a></li>
					<li><a href="${ctx }/invoice/">发票</a></li>
					<li><a href="${ctx }/invoice/mq/">MQ文件</a></li>
				</ul>
			</li>
			

			<li class="dropdown">
				<a href='#' class="dropdown-toggle" data-toggle="dropdown" id="drop2" role="button">报表<b class="caret"></b></a>
				<ul class="dropdown-menu">
<%--					<li><a href="${ctx }/report/dailyvechile"   class="tooltip-test" data-placement="right" title="车辆日报表" >车辆日报表</a></li>--%>
					<li><a href="${ctx }/report/reportwork"   	class="tooltip-test" data-placement="right" title="作业报表" >作业报表</a></li>
				</ul>
			</li>
			
			</sec:authorize>


			</c:if>
			
			
			</ul>
			<c:if test="${!empty SPRING_SECURITY_CONTEXT }">
			<ul class="nav pull-right">
				<li><a href='' id="#dialog" name="screen" class="tooltip-test" data-placement="bottom" title="关闭菜单" ><i class="icon-th"></i></a></li>
			</ul>
			</c:if>
        </div><!--/.nav-collapse -->
       
       <c:if test="${empty SPRING_SECURITY_CONTEXT }"><a class="brand"  href='${ctx }/' id='mylogin' >登陆</a></c:if>
       <c:if test="${!empty SPRING_SECURITY_CONTEXT }">
       <a  class="brand"  href='${ctx }/j_spring_security_logout' id="logout">退出</a>
       <a  class="brand"  href='${ctx }/login' style="color:#5D9F7F;;"><sec:authentication property="name" /></a>
       </c:if>
       </div>
    </div>
  </div>



