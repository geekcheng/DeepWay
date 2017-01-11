<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<header>
    <div class='navbar navbar-fixed-top'>
        <div class='navbar-inner'>
            <div class='container-fluid'>
                <a class='brand' href='${ctx }/'>
                    <img src="${ctx }/assets/images/sinotrans.png" style="width: 40px;" />
                    <span class='hidden-phone'>EOC费用支出网上申报系统</span>
                </a>
                
      <c:if test="${!empty SPRING_SECURITY_CONTEXT }">
       <a class='toggle-nav btn pull-left' href='#'>
           <i class='icon-reorder'></i>
       </a>
      </c:if>
                
      <c:if test="${!empty SPRING_SECURITY_CONTEXT }">          
      <ul class='nav pull-right'>
		<jsp:include page="/common/theme.jsp"></jsp:include>   
        <c:if test="${currentUser != null}">
       	 <jsp:include page="/warning/warningalert"></jsp:include>
<%--       	 <jsp:include page="/warning/myworkwarningalert"></jsp:include>--%>
        </c:if>
        	<li class='dropdown dark user-menu'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <jsp:include page="/headimg"></jsp:include>
<%--                            <span class='user-name hidden-phone'><sec:authentication property="name" /></span>--%>
                            <span class='user-name hidden-phone'>${currentUser.realname}</span>
                            <b class='caret'></b>
                        </a>
                        <ul class='dropdown-menu'>
                            <li>
                                <a href='${ctx }/user/myProfile'> <i class='icon-cog'></i>设置</a>
                            </li>
                            <li>
                                <a href='${ctx }/recorg/list'> <i class='icon-cog'></i>我的收款单位</a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='${ctx }/j_spring_security_logout' id="logout"><i class='icon-signout'></i>退出</a>
                            </li>
                        </ul>
        	</li>
        </ul>
        </c:if>
        <ul class='nav pull-right'>
			<li class='dropdown only-icon'>
				<a   href='${ctx }/assets/EOC_User_Manual.pdf' title="用户手册" target="_blank"><i class='icon-book'></i></a>	            
	       	</li>
         </ul>
<%--                <form accept-charset="UTF-8" action="search_results.html" class="navbar-search pull-right hidden-phone" method="get" /><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>--%>
<%--                    <button class="btn btn-link icon-search" name="button" type="submit"></button>--%>
<%--                    <input autocomplete="off" class="search-query span2" id="q_header" name="q" placeholder="Search..." type="text" value="" />--%>
<%--                </form>--%>
            </div>
        </div>
    </div>
</header>


