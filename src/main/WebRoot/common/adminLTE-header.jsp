<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
      <header class="main-header">
        <!-- Logo -->
        <a href="${ctx }/static/AdminLTE/index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>D</b>Way</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Deep</b>Way</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">开关</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="${ctx }/static/AdminLTE/dist/img/user2-160x160.jpg" class="user-image" alt="User Image" />
                  <span class="hidden-xs">${currentUser.username}</span>
                </a>
<!--                 <ul class="dropdown-menu"> -->
<!--                   <li class="user-header"> -->
<%--                     <img src="${ctx }/static/AdminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" /> --%>
<!--                   </li> -->
<!--                   <li class="user-footer"> -->
<!--                     <div class="pull-left"> -->
<!--                       <a href="#" class="btn btn-default btn-flat">设   置</a> -->
<!--                     </div> -->
<!--                     <div class="pull-right"> -->
<%--                       <a href='${ctx }/j_spring_security_logout' id="logout" class="btn btn-default btn-flat"><i class='icon-signout'></i>退   出</a> --%>
<!--                     </div> -->
<!--                   </li> -->
<!--                 </ul> -->
              </li>
<!--               <li class="user-footer"> -->
<%--                   <a href='${ctx }/j_spring_security_logout' id="logout" class="btn btn-default btn-flat"><i class='icon-signout'></i>退   出</a> --%>
<!--               </li> -->
            </ul>
          </div>
        </nav>
      </header>
