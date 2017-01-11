<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<%@ include file="../common/less-head.jsp" %>

  <body>
	<div class="login-wrapper">
		<div class="text-center">
			<h2 class="fadeInUp animation-delay10" style="font-weight:bold">
				<span class="text-success">DEEPCHAT</span>
			</h2>
	    </div>
		<div class="login-widget animation-delay1">	
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-plus-circle fa-lg"></i> 激活不成功
				</div>
				<div class="panel-body">
							
						<div class="form-group">
							<div class="controls text-right">
								<a class="btn btn-success btn-sm bounceIn animation-delay7" href="${ctx }/register" ><i class="fa fa-plus-circle"></i> 注  册</a>
							</div>
						</div>
				</div>
			</div><!-- /panel -->
		</div><!-- /login-widget -->
	</div><!-- /login-wrapper -->
	
  </body>
<%@ include file="../common/less-js.jsp" %>
</html>
<script>
</script>