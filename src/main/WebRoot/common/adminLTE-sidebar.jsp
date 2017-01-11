<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
<!--           <div class="user-panel"> -->
<!--             <div class="pull-left image"> -->
<%--               <img src="${ctx }/static/AdminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" /> --%>
<!--             </div> -->
<!--             <div class="pull-left info"> -->
<%--               <p>${currentUser.username}</p> --%>
<!--               <a href="#"><i class="fa fa-circle text-success"></i> 在线</a> -->
<!--             </div> -->
<!--           </div> -->
          <ul class="sidebar-menu" id="onlineUserList">
<!--             <li class="header">MAIN NAVIGATION</li> -->
            <li>
              <a href="<c:url value="/deeproute/"/>">
                <i class="fa fa-dashboard"></i> <span>路由管理</span> 
              </a>
            </li>
            <li>
              <a href="<c:url value="/record/"/>">
                <i class="fa fa-th"></i> <span>转发记录</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>

            
            
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>


