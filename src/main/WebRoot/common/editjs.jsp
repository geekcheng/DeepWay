<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<title>EOC费用支出网上申报系统</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="pragma" content="no-cache"> 
<meta http-equiv="cache-control" content="no-cache"> 
<meta http-equiv="expires" content="0">
<link rel="icon" type="image/x-icon" href="${ctx }/assets/images/favicon.ico">
<link href='${ctx }/assets/stylesheets/bootstrap/bootstrap.css' media='all' rel='stylesheet' type='text/css' />
<link href='${ctx }/assets/stylesheets/bootstrap/bootstrap-responsive.css' media='all' rel='stylesheet' type='text/css' />

<link href='${ctx }/assets/stylesheets/plugins/jgrowl/jquery.jgrowl.min.css' media='all' rel='stylesheet' type='text/css' />
<link href='${ctx }/assets/stylesheets/light-theme.css' id='color-settings-body-color' media='all' rel='stylesheet' type='text/css' />
<link href='${ctx }/assets/stylesheets/demo.css' media='all' rel='stylesheet' type='text/css' />
<%-- <link href='${ctx }/assets/stylesheets/easyui/themes/bootstrap/easyui.css' media='all' rel='stylesheet' type='text/css' /> --%>
<%-- <link href='${ctx }/assets/stylesheets/easyui/themes/icon.css' media='all' rel='stylesheet' type='text/css' /> --%>
<link href='${ctx }/assets/stylesheets/common.css' media='all' rel='stylesheet' type='text/css' />


<!--[if lt IE 9]>
<script src='${ctx }/assets/javascripts/html5shiv.js' type='text/javascript'></script>
<![endif]-->

</head>

<script src='${ctx }/assets/datatable/js/jquery.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/jquery_ui/jquery-ui.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/bootstrap/bootstrap.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/bootstrap_switch/bootstrapSwitch.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/select2/select2.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/input_mask/bootstrap-inputmask.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/fileinput/bootstrap-fileinput.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/modernizr/modernizr.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/fileupload/load-image.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/autosize/jquery.autosize-min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/validate/jquery.validate.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/validate/messages_zh.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/nestable/jquery.nestable.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/jgrowl/jquery.jgrowl.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/bootbox/bootbox.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.zh-CN.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/nav.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/demo/jquery.mockjax.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/plugins/jquery.form.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/easyui/jquery.easyui.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/javascripts/easyui/grid_detail.js' type='text/javascript'></script>



<link href='${ctx }/assets/datatable/css/jquery.dataTables.min.css' media='all' rel='stylesheet' type='text/css' />
<%-- <link href='${ctx }/assets/datatable/css/dataTables.bootstrap.min.css' media='all' rel='stylesheet' type='text/css' /> --%>
<link href='${ctx }/assets/Editor/css/editor.bootstrap.css' media='all' rel='stylesheet' type='text/css' />
<link href='${ctx }/assets/Editor/css/editor.dataTables.css' media='all' rel='stylesheet' type='text/css' />
<link href='${ctx }/assets/Editor/css/editor.foundation.css' media='all' rel='stylesheet' type='text/css' />
<link href='${ctx }/assets/Editor/css/editor.jqueryui.css' media='all' rel='stylesheet' type='text/css' />

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.0.3/css/buttons.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.0.1/css/select.dataTables.min.css">




<script src='${ctx }/assets/datatable/js/jquery.dataTables.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/datatable/js/dataTables.bootstrap.min.js' type='text/javascript'></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.0.3/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/select/1.0.1/js/dataTables.select.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/keytable/2.0.0/js/dataTables.keyTable.min.js"></script>

<script src='${ctx }/assets/Editor/js/dataTables.editor.min.js' type='text/javascript'></script>
<script src='${ctx }/assets/Editor/js/editor.bootstrap.min.js' type='text/javascript'></script>

<script type="text/javascript" >
var ctx = '${ctx }';

</script>

<script src='${ctx }/assets/javascripts/demo/demo.js' type='text/javascript'></script>

