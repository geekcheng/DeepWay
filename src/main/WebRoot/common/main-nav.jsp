<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<div id='main-nav-bg'></div>
<nav class='main-nav-fixed' id='main-nav'>
<!-- <nav id='main-nav'> -->
<div class='navigation'>
<ul class='nav nav-stacked'>
<li class='' id='indexpage'>
    <a href='<c:url value="/user/myspace"/>'  >
        <i class='icon-home'></i>
        <span>首页</span>
    </a>
</li>

<li class='' id='myspace'>
    <a href='<c:url value="/user/face"/>'>
        <i class='icon-star'></i>
        <span>我的空间</span>
    </a>
</li>


<%--<sec:authorize ifAnyGranted="ROLE_Admin" >--%>
<%--<li class=''>--%>
<%--    <a  href='${ctx }/doc/paytype'>--%>
<%--        <i class='icon-edit'></i>--%>
<%--        <span>制单(暂时不用)</span>--%>
<%--    </a>--%>
<%--</li>--%>
<%--</sec:authorize>--%>

<li class=''  id='selectdoclist'>
    <a  href='<c:url value="/doc/paydoctype"/>'>
		<i class='icon-edit'></i>
        <span>制作审批单</span>
    </a>

</li>
<li class='' id='mydoclist'>
    <a href='${ctx }/dochead/'>
		<i class='icon-list'></i>
        <span>我的审批单</span>
    </a>
</li>
<li>
    <a class='dropdown-collapse ' href='#'>
        <i class='icon-user'></i>
        <span>代垫单事务</span>
        <i class='icon-angle-down angle-down'></i>
    </a>
    <ul class='nav nav-stacked ' >
        <li class='' id='daidianbaoxiaodan'>
<%--            <a href='${ctx }/doc/paydoctype?docheadtype=601'>--%>
            <a href='${ctx }/dochead/newdaidainsession'>
                <i class='icon-book'></i>
                <span>代垫事务</span>
            </a>
        </li>
         <li class=''  id='daidiandan'>
            <a href='${ctx }/dochead/listamfn?demand[docheadtype.sysid]=602'>
                <i class='icon-group'></i>
                <span>代垫单</span>
            </a>
        </li>
    </ul>
</li>

<sec:authorize ifAnyGranted="ROLE_Department,ROLE_FinancialManager,ROLE_ViceManger,ROLE_FinancialBoss" >
<li class='' id ="deptlistwaiting">
  <a href='${ctx }/dochead/deptlistwaiting?demand[dochead.paymenttype.sysid]=50'>
     <i class='icon-eye-open'></i>
     <span>等待审批的现金审批单</span>
  </a>
</li>
</sec:authorize>

<sec:authorize ifAnyGranted="ROLE_Admin, ROLE_Department" >
<li class='' id='deptlist'>
    <a href='${ctx }/dochead/deptlist'>
        <i class='icon-group'></i>
        <span>部门审批单</span>
    </a>
</li>
</sec:authorize>

<sec:authorize ifAnyGranted="ROLE_Check" >
<li class='' id='deptlist'>
    <a href='${ctx }/dochead/checklist'>
        <i class='icon-eye-open'></i>
        <span>待审核的审批单</span>
    </a>
</li>

<li class='' id='checked'>
    <a href='${ctx }/dochead/cashiered'>
        <i class='icon-tasks'></i>
        <span>已审批的审批单</span>
    </a>
</li>

<li class='' id='edilist'>
    <a href='${ctx }/dochead/edifinish?pageSize=100'>
        <i class='icon-reorder'></i>
        <span>产生支付报文</span>
    </a>
</li>
<li class='' id='edilist'>
    <a href='${ctx }/dochead/downedilist'>
        <i class='icon-download-alt'></i>
        <span>下载支付报文</span>
    </a>
</li>
</sec:authorize>


<sec:authorize ifAnyGranted="ROLE_Financial" >
<li class='' id='deptlist'>
    <a href='${ctx }/dochead/financelist'>
        <i class='icon-eye-open'></i>
        <span>待复核的审批单</span>
    </a>
</li>

<li class='' id='waitfinish'>
    <a href='${ctx }/dochead/waitfinish'>
        <i class='icon-tasks'></i>
        <span>待完成的审批单</span>
    </a>
</li>

<li class='' id='waitwebadi'>
    <a href='${ctx }/dochead/waitwebadi'>
        <i class='icon-download-alt'></i>
        <span>下载WEBADI</span>
    </a>
</li>


</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_Admin, ROLE_Department" >
<li class='' id='budgetchart'>
    <a href='${ctx }/budget/budgetchart'>
		<i class='icon-picture'></i>
        <span>部门预算</span>
    </a>
</li>
</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_Admin,ROLE_BudgetVice" >
<li class='' id='budgetchartvice'>
    <a href='${ctx }/budget/budgetchartvice'>
		<i class='icon-lemon'></i>
        <span>分管部门预算</span>
    </a>
</li>
</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_Admin,ROLE_BudgetCmpy" >
<li class='' id='budgetchartcmpy'>
    <a href='${ctx }/budget/budgetchartcmpy'>
		<i class='icon-globe'></i>
        <span>公司预算</span>
    </a>
</li>
<!-- <li class='' id='budgetchartcmpyyear'> -->
<%--     <a href='${ctx }/budget/budgetchartcmpyyear'> --%>
<!-- 		<i class='icon-globe'></i> -->
<!--         <span>公司年度预算</span> -->
<!--     </a> -->
<!-- </li> -->
</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_Admin, ROLE_Financial" >
<li class='' id='budgetmanager'>
<%--     <a href='${ctx }/budget/manager'> --%>
    <a href='${ctx }/budget/managerlist'>
    <i class='icon-eye-open'></i>    
     <span>预算控制</span>
    </a>
</li>
</sec:authorize>

<sec:authorize ifAnyGranted="ROLE_Admin,ROLE_Financial" >
<li class='' id='budgetreport'>
    <a href='${ctx }/budget/report'>
    <i class='icon-cog'></i>    
     <span>预算报表</span>
    </a>
</li>
</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_Admin,ROLE_Department,ROLE_BudgetVice,ROLE_BudgetCmpy" >
<li>
<a class='dropdown-collapse ' href='#'>
    <i class='icon-picture'></i>
    <span>年度预算</span>
    <i class='icon-angle-down angle-down'></i>
</a>
<ul class='nav nav-stacked '>
	<sec:authorize ifAnyGranted="ROLE_Admin,ROLE_Department" >
	<li class='' id='budgetchartyear'>
	    <a href='${ctx }/budget/budgetchartyear'>
			<i class='icon-picture'></i>
	        <span>部门年度预算</span>
	    </a>
	</li>
	</sec:authorize>
	<sec:authorize ifAnyGranted="ROLE_Admin,ROLE_BudgetCmpy" >
	<li class='' id='budgetchartcmpyyear'>
	    <a href='${ctx }/budget/budgetchartcmpyyear'>
			<i class='icon-picture'></i>
	        <span>公司年度预算</span>
	    </a>
	</li>
	</sec:authorize>
	<sec:authorize ifAnyGranted="ROLE_Admin,ROLE_BudgetVice" >
	<li class='' id='budgetchartviceyear'>
	    <a href='${ctx }/budget/budgetchartviceyear'>
			<i class='icon-picture'></i>
	        <span>分管部门年度预算</span>
	    </a>
	</li>
	</sec:authorize>
</ul>
</li>	
</sec:authorize>



<sec:authorize ifAnyGranted="ROLE_Admin" >
<li>
<a class='dropdown-collapse ' href='#'>
    <i class='icon-cog'></i>
    <span>审批单管理</span>
    <i class='icon-angle-down angle-down'></i>
</a>
<ul class='nav nav-stacked '>
	<li class='' id='listmanager'>
	    <a href='${ctx }/dochead/listmanager'>
	    <i class='icon-eye-open'></i>    
	     <span>审批单管理</span>
	    </a>
	</li>
	<li class='' id='listmanager'>
	    <a href='${ctx }/dochead/listamfnmanger?demand[docheadtype.sysid]=602'>
	    <i class='icon-eye-open'></i>    
	     <span>代垫单管理</span>
	    </a>
	</li>
</ul>
</li>
<li>
    <a class='dropdown-collapse ' href='#'>
        <i class='icon-cog'></i>
        <span>系统管理</span>
        <i class='icon-angle-down angle-down'></i>
    </a>
    <ul class='nav nav-stacked '>
         <li class=''>
            <a href='${ctx }/userDept'>
                <i class='icon-group'></i>
                <span>用户部门设置</span>
            </a>
        </li>
        
         <li class='' id='feecategory'>
            <a href='${ctx }/feecategory/'>
                <i class='icon-bar-chart'></i>
                <span>费目</span>
            </a>
        </li>
<!--         <li class='' id='doc'> -->
<%--             <a href='${ctx }/doc/'> --%>
<!--                 <i class='icon-bar-chart'></i> -->
<!--                 <span>审批表</span> -->
<!--             </a> -->
<!--         </li> -->
        <li class='' id='listbudgetsexes'>
            <a href='<c:url value="/budget/listbudgetsexes"/>'>
                <i class='icon-cog'></i>
                <span>预算执行情况</span>
            </a>
        </li>
        <li class='' id='ppty'>
            <a href='${ctx }/p/'>
                <i class='icon-cog'></i>
                <span>系统属性</span>
            </a>
        </li>
    </ul>
</li>
<li>
    <a class='dropdown-collapse ' href='#'>
        <i class='icon-user'></i>
        <span>用户管理</span>
        <i class='icon-angle-down angle-down'></i>
    </a>
    <ul class='nav nav-stacked '>
        <li class='' id='usermanagerli'>
            <a href='<c:url value="/user/list"/>'>
                <i class='icon-user'></i>
                <span>用户管理</span>
            </a>
        </li>
        <li class='' id='usermanagerli'>
            <a href='<c:url value="/user/listtest"/>'>
                <i class='icon-user'></i>
                <span>用户管理TEST</span>
            </a>
        </li>
        <li class='' id='rolemanagerli'>
           <a href='${ctx }/role/'>
               <i class='icon-group'></i>
               <span>角色管理</span>
           </a>
       </li>
<%--        <li class='' id='resource'>--%>
<%--            <a href='${ctx }/resource/'>--%>
<%--                <i class='icon-bar-chart'></i>--%>
<%--                <span>资源管理</span>--%>
<%--            </a>--%>
<%--        </li>--%>
        <li class='' title='管理系统业务角色'>
            <a href='${ctx }/bizrole'>
                <i class='icon-user'></i>
                <span>业务角色</span>
            </a>
        </li>
    </ul>
   
</li>
</sec:authorize>
<li class='' id='feebook'>
    <a href='<c:url value="/feecategory/book"/>'>
        <i class='icon-table'></i>
        <span>费目表</span>
    </a>
</li>
<sec:authorize ifAnyGranted="ROLE_PREVIOUS_ADMINISTRATOR">
	<li class='' id='recurrentuser'>
		<a href='<c:url value="/j_spring_security_exit_user"/>' ><i class='icon-user'></i><span>退出切换用户</span></a>
	</li>
</sec:authorize>

</ul>
</div>
</nav>
<script   type='text/javascript'>
$(document).ready(function() {
	<c:if test="${currentUser.type == 1 }">
        $.jGrowl("请注意：EOC中所有费用仅针对上市部分", {
        	header: "提示!",  
            sticky: true
        });
    </c:if>
	<c:if test="${empty currentUser.email }">
        $.jGrowl("系统发现你没有维护Email，请现在设置中维护自己的Email。", {
        	header: "提示!",  
            sticky: true
        });
    </c:if>

//    $.jGrowl("EOC将在今天15:40更新。16:00恢复运行。请大家先保存数据。", {
//    	header: "更新提示!", 
//        sticky: true
//    });
});
</script>