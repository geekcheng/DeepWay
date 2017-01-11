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
          数据交换记录
          </h1>
        </section>
        <!-- Main content -->
        <section class="content">
			<div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                    <tr>
                      <th>文件名</th>
                      <th>处理时间</th>
                      <th>From</th>
                      <th>To</th>
                    </tr>
                    <c:forEach items="${records}" var="record">
                    <tr id="tr_${record.processrecordid }">
                      <td>${record.filenameonly }</td>
                      <td>${record.processtime }</td>
                      <td>${record.deepRoute.cfrom }</td>
                      <td>${record.deepRoute.cto }</td>
                      <td><a href="<c:url value="/record/download/${record.processrecordid }"/>">下载</a></td>
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