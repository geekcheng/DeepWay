<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<title>报销系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${ctx }/static/ico/favicon.ico" rel="shortcut icon" type="image/x-icon">
<link href="${ctx }/static/css/bootstrap.css" rel="stylesheet">
<link href="${ctx }/static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${ctx }/static/css/docs.css" rel="stylesheet">

<link href="${ctx }/static/js/google-code-prettify/prettify.css" rel="stylesheet">

<link href="${ctx }/static/css/bootstro.min.css" rel="stylesheet">


<%--<link href="${ctx }/static/css/jquery.ui.base.css" rel="stylesheet">--%>
<link href="${ctx }/static/css/jquery.ui.theme.css" rel="stylesheet">
<link href="${ctx }/static/css/jquery.ui.datepicker.css" rel="stylesheet">
<link href="${ctx }/static/css/sjs.css" rel="stylesheet">


<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="${ctx }/static/js/html5shiv.js"></script>
<![endif]-->

<!-- Le fav and touch icons -->
<script src="${ctx }/static/js/jquery-1.7.1.min.js"></script>
<script src="${ctx }/static/js/google-code-prettify/prettify.js"></script>
<script src="${ctx }/static/js/bootstrap.min.js"></script>

<script src="${ctx }/static/js/jquery.ui.core.js"></script>
<script src="${ctx }/static/js/jquery.ui.widget.js"></script>
<script src="${ctx }/static/js/jquery.ui.datepicker.js"  ></script>
<script src="${ctx }/static/js/jquery.form.js"  ></script>
<script src="${ctx }/static/js/jquery.metadata.js"  ></script>
<script src="${ctx }/static/js/jquery.validate.js"  ></script>
<script src="${ctx }/static/js/application.js"></script>
<script type="text/javascript" >
var ctx = '${ctx }';
$.datepicker.setDefaults({
   showOn: 'focus',
<%--   showButtonPanel: 'false',--%>
<%--   buttonImageOnly: true,--%>
<%--   buttonImage: '${ctx }/static/img/calendar.gif',--%>
<%--   buttonText: 'Calendar', --%>
   dateFormat: 'yy-mm-dd', 
   autosize: true  } );
</script>
<script src="${ctx }/static/js/sjs.js"  ></script>
<sjs:sjsmsg  />
<style>
body {
  position: relative;
  padding-top: 60px;
}
@media (max-width: 767px) {
	body {padding-top: 00px; }
  .footer {
    margin-left: -20px;
    margin-right: -20px;
    padding-left: 20px;
    padding-right: 20px;
  }
}

</style>
    