<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../common/taglib.jsp" %>
<%@ include file="../common/adminLTE-css.jsp" %>
<body class="skin-purple   sidebar-mini">
    <div class="wrapper">
	<%@ include file="../common/adminLTE-header.jsp" %>
	<%@ include file="../common/adminLTE-sidebar.jsp" %>
 
      <div class="content-wrapper">
        <section class="content-header">
          <h1>
            数据总线
            <small>表</small>
          </h1>
<!--           <ol class="breadcrumb"> -->
<!--             <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li> -->
<!--             <li><a href="#">Tables</a></li> -->
<!--             <li class="active">Simple</li> -->
<!--           </ol> -->
        </section>
        <!-- Main content -->
        <section class="content">
			<div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
<!--                   <h3 class="box-title">ROUTE LIST</h3> -->
                  	<a href='<c:url value="/deeproute/contextStop"/>' type="submit" class="btn btn-app"> <i class="fa fa-stop"></i>停止</a>
					<a href='<c:url value="/deeproute/contextStart"/>' type="submit" class="btn btn-app"> <i class="fa fa-play"></i>启动</a>
<!--                   <div class="box-tools"> -->
<!--                     <div class="input-group" style="width: 150px;"> -->
<!--                       <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Search" /> -->
<!--                       <div class="input-group-btn"> -->
<!--                         <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button> -->
<!--                       </div> -->
<!--                     </div> -->
<!--                   </div> -->
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                    <tr>
                      <th>ID</th>
                      <th>FROM</th>
                      <th>TO</th>
                      <th>BACKPATH</th>
                      <th>PROCESSREF</th>
                      <th>ERRORPATH</th>
                      <th>操作</th>
                    </tr>
                    <c:forEach items="${routes}" var="route">
                    <tr>
                      <td>${route.routeid }</td>
                      <td>${route.cfrom }</td>
                      <td>${route.cto }</td>
                      <td>${route.backpath }</td>
                      <td>${route.processRef }</td>
                      <td>${route.errorpath }</td>
                      <td><a href='<c:url value="/route/suspendRoute/${route.routeid }"/>'  >停止</a></td>
                    </tr>
                    </c:forEach>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
          </div>
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

<%@ include file="../common/adminLTE-footer.jsp" %>
    </div>
  </body>
</html>
<%@ include file="../common/adminLTE-js.jsp" %>