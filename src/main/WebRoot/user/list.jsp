<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<%@ include file="../common/less-head.jsp" %>

<body>
	
<div id="wrapper" >
<%@ include file="../common/less-top-nav.jsp" %>
<%@ include file="../common/less-aside.jsp" %>

<div id="main-container">
			
			<div class="panel panel-default table-responsive">
					<div class="padding-md clearfix">
						<table class="table table-striped" id="dataTable">
							<thead>
								<tr>
									<th width="80px" nowrap="nowrap">用户名</th>
									<th width="200px" nowrap="nowrap">email</th>
									<th width="200px" nowrap="nowrap">性别</th>
									<th width="200px" nowrap="nowrap">电话</th>
									<th width="120px" nowrap="nowrap">操作</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${users }" var="user">
								<tr id="userid_${user.userid }">
									<td>${user.username }</td>
									<td>${user.email }</td>
									<td>${user.gender }</td>
									<td>${user.phone }</td>
									<td>
									<a title="编辑" class="btn btn-success  btn-xs edit-project" id="edit_${user.userid }" href='${ctx }/user/edit/${user.userid }' ><i class="fa fa-edit fa-lg">编辑</i></a>
									<a title="删除" class="btn btn-danger  btn-xs delete-project" id="${user.userid }"><i class="fa fa-times fa-lg">删除</i></a>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div><!-- /.padding-md -->
				</div><!-- /panel -->
	
	</div>
<!-- /main-container -->



</div><!-- /wrapper -->
<%@ include file="../common/less-js.jsp" %>
<script>
$(function()	{
	$('#dataTable').dataTable( {
		"bJQueryUI": true,
		"sPaginationType": "full_numbers",
// 		sDom: "<'row-fluid'<'span6'l><'span6 text-right'f>r>t<'row-fluid'<'span6'i><'span6 text-right'p>>",
// 	    sPaginationType: "bootstrap",
		oLanguage: {
	    	"sLengthMenu": "每页显示 _MENU_条",
	    	"sInfo": "当前第 _START_ - _END_ 条　共计 _TOTAL_ 条",
	    	"sInfoEmpty": "没有记录",
	    	"sInfoFiltered": "(从 _MAX_ 条记录中过滤)",
	    	"sSearch": "搜索：",
	    	"oPaginate": {
	    	"sFirst": "首页",
	    	"sPrevious": "前一页",
	    	"sNext": "后一页",
	    	"sLast": "尾页"
	    	}
	    }
	});
	
	
	$('.delete-project').click(function(event){
		var id = $(this).attr('id');
		var ttr = $(this).parent().parent();
		
		var dhttp = "${ctx}/user/delete/"+id;
		$.ajax({
			  url: dhttp,
			  type:  'DELETE',
			  success: function(){
				  ttr.hide('slow',function(){
					  ttr.remove();
				  });
				 
			  }
			});
		
	});
	
});
</script>

  
  
  </body>

</html>
