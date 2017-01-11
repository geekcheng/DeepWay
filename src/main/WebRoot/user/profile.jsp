<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<%@ include file="../common/less-head.jsp" %>

<body class="overflow-hidden">
	
<div id="wrapper" class="sidebar-mini">
<%@ include file="../common/less-top-nav.jsp" %>
<%@ include file="../common/less-aside.jsp" %>
		

		<div id="main-container">
			<ul class="tab-bar grey-tab">
				<li class="active">
					<a href="#overview" data-toggle="tab">
						<span class="block text-center">
							<i class="fa fa-home fa-2x"></i> 
						</span>
						查&nbsp;&nbsp;看
					</a>
				</li>
				<li>
					<a href="#edit" data-toggle="tab">
						<span class="block text-center">
							<i class="fa fa-edit fa-2x"></i> 
						</span>
						编&nbsp;&nbsp;辑
					</a>
				</li>
				<li>
					<a href="#message" data-toggle="tab">
						<span class="block text-center">
							<i class="fa fa-envelope fa-2x"></i> 
						</span>	
						消&nbsp;&nbsp;息
					</a>
				</li>
			</ul>
			
			<div class="padding-md">
				<div class="row">
					<div class="col-md-3 col-sm-3">
						<div class="row">
							<div class="col-xs-6 col-sm-12 col-md-6 text-center">
								<a href="#">
<!-- 									<img src="img/user.jpg" alt="User Avatar" class="img-thumbnail"> -->
									<img src="${ctx }/user/headimg/${currentUser.userid }" alt="User Avatar" class="img-thumbnail" />
								</a>
								<div class="seperator"></div>
								<div class="seperator"></div>
							</div><!-- /.col -->
							<div class="col-xs-6 col-sm-12 col-md-6">
								<strong class="font-14">${currentUser.username }</strong>
								<small class="block text-muted">
									${currentUser.email }
								</small> 
							</div><!-- /.col -->
						</div><!-- /.row -->
						
						<h5 class="headline">
							自觉能力
							<span class="line"></span>
						</h5>
						<dl>
							<dt>HTML5 <span class="pull-right">90%</span></dt>
							<dd>
								<div class="progress progress-striped">
									<div class="progress-bar progress-bar-success animated-bar" style="width:90%"></div>
								</div>
							</dd>
							<dt>CSS <span class="pull-right">75%</span></dt>
							<dd>
								<div class="progress progress-striped">
									<div class="progress-bar progress-bar-info animated-bar" style="width:75%"></div>
								</div>
							</dd>
							<dt>jQuery <span class="pull-right">65%</span></dt>
							<dd>
								<div class="progress progress-striped">
									<div class="progress-bar progress-bar-warning animated-bar" style="width:65%"></div>
								</div>
							</dd>
							<dt>PHP <span class="pull-right">50%</span></dt>
							<dd>
								<div class="progress progress-striped">
									<div class="progress-bar progress-bar-danger animated-bar" style="width:50%"></div>
								</div>
							</dd>
							<dt>Java <span class="pull-right">10%</span></dt>
							<dd>
								<div class="progress progress-striped">
									<div class="progress-bar progress-bar-danger animated-bar" style="width:10%"></div>
								</div>
							</dd>
						</dl>
					</div><!-- /.col -->
					<div class="col-md-9 col-sm-9">
						<div class="tab-content">
							<div class="tab-pane fade in active" id="overview">
								<div class="row">
									<div class="col-md-6">
										<div class="panel panel-default fadeInDown animation-delay2">
											<div class="panel-heading">
												我
											</div>
											<div class="panel-body">
												<p>aboutME</p>
											</div>
										</div><!-- /panel -->
											
									</div><!-- /.col -->
															
								
								</div><!-- /.row -->
	
							
							</div><!-- /tab1 -->
							<div class="tab-pane fade" id="edit">
								
								<div class="row">
									<div class="panel panel-info pull-right">
										<div class="panel-body">
											Last Update on 12 Oct,2013
										</div>
									</div><!-- /panel -->
								</div><!-- /.row -->
								
								<div class="panel panel-default">
									<form class="form-horizontal form-border">
										<div class="panel-heading">
											Basic Information
										</div>
										<div class="panel-body">
											<div class="form-group">
												<label class="control-label col-md-2">Username</label>												
												<div class="col-md-10">
													<input type="text" class="form-control input-sm" placeholder="Username" value="John Doe">
												</div><!-- /.col -->
											</div><!-- /form-group -->
											<div class="form-group">
												<label class="control-label col-md-2">Password</label>
												<div class="col-md-10">
													<input type="password" class="form-control input-sm" value="Password">
												</div><!-- /.col -->
											</div><!-- /form-group -->
											<div class="form-group">
												<label class="control-label col-md-2">Email</label>
												<div class="col-md-10">
													<input type="text" class="form-control input-sm" value="john_doe@email.com">
												</div><!-- /.col -->
											</div><!-- /form-group -->
											<div class="form-group">
												<label class="control-label col-md-2">Gender</label>
												<div class="col-md-10">
													<label class="label-radio inline">
														<input type="radio" name="inline-radio" checked>
														<span class="custom-radio"></span>
														Male
													</label>
													<label class="label-radio inline">
														<input type="radio" name="inline-radio">
														<span class="custom-radio"></span>
														Female
													</label>
												</div><!-- /.col -->
											</div><!-- /form-group -->
											<div class="form-group">
												<label class="control-label col-md-2">Address</label>
												<div class="col-md-10">
													<textarea class="form-control" rows="3"></textarea>
												</div><!-- /.col -->
											</div><!-- /form-group -->
											<div class="form-group">
												<label class="control-label col-md-2">Phone</label>
												<div class="col-md-10">
													<input type="text" class="form-control input-sm">
												</div><!-- /.col -->
											</div><!-- /form-group -->
										</div>
										<div class="panel-footer">
											<div class="text-right">
												<button class="btn btn-sm btn-success">Update</button>
												<button class="btn btn-sm btn-success" type="reset">Reset</button>
											</div>
										</div>
									</form>
								</div><!-- /panel -->
							
								<div class="panel panel-default">
									<div class="panel-body padding-xs">
										<textarea class="form-control no-border no-shadow" rows="2" placeholder="What's on your mind?"></textarea>
									</div>
									<div class="panel-footer clearfix">
										<a class="btn btn-xs btn-success pull-right">Post</a>
									</div>
								</div><!-- /panel -->
								<div class="panel panel-default">
									<div class="panel-heading">
										About Me
									</div>
									<div class="panel-body padding-xs">
										<textarea class="form-control no-border no-shadow" rows="5" placeholder="Who are you?"></textarea>
									</div>
									<div class="panel-footer clearfix">
										<a class="btn btn-xs btn-success pull-right">Save</a>
									</div>
								</div><!-- /panel -->
									
							</div><!-- /tab2 -->
							
							
							
							<div class="tab-pane fade" id="message">
								<div class="panel panel-default inbox-panel">
									<div class="panel-heading">
										<div class="input-group">
											<input type="text" class="form-control input-sm" placeholder="Search here...">
												<span class="input-group-btn">
												<button class="btn btn-default btn-sm" type="button"><i class="fa fa-search"></i></button>
											</span>
										</div><!-- /input-group -->
									</div>
									<div class="panel-body">
										<label class="label-checkbox inline">
											<input type="checkbox" id="chk-all">
											 <span class="custom-checkbox"></span>
										</label>
										<a class="btn btn-sm btn-danger"><i class="fa fa-plus"></i> Write Mail</a>
										<a class="btn btn-sm btn-default"><i class="fa fa-trash-o"></i> Delete</a>
								
										<div class="pull-right">
											<a class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"><i class="fa fa-refresh"></i></a>			
											<div class="btn-group" id="inboxFilter">
												<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
													All
													<span class="caret"></span>
												</button>
												<ul class="dropdown-menu pull-right">
													<li><a href="#">Read</a></li>
													<li><a href="#">Unread</a></li>
													<li><a href="#">Starred</a></li>
													<li><a href="#">Unstarred</a></li>
												</ul>
											</div>
										</div>
									</div>
									<ul class="list-group">
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="starred"><i class="fa fa-star fa-lg"></i></span>
											<span class="from">John Doe</span>		
										
											<span class="detail">
												<span class="label label-danger">Important</span>		
												Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor suscipit lobortis.
											</span>
											<span class="inline-block pull-right">
												<span class="attachment"><i class="fa fa-paperclip fa-lg"></i></span>							
												<span class="time">2:32 Am</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="starred"><i class="fa fa-star fa-lg"></i></span>
											<span class="from">Jane Doe</span>		
											<span class="detail">
												<span class="label label-info">Work</span>		
												Nunc vel lorem volutpat, placerat erat ut, pulvinar mi.
											</span>		
											<span class="inline-block pull-right">
												<span class="attachment"><i class="fa fa-paperclip fa-lg"></i></span>							
												<span class="time">1:17 Am</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">My business</span>		
											<span class="detail">Phasellus ac feugiat mauris. Interdum et malesuada fames ac ante ipsum primis in faucibus.</span>		
											<span class="inline-block pull-right">
												<span class="time">Yesterday</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">John Doe</span>		
											<span class="detail">Suspendisse tristique ullamcorper sapien id pulvinar.</span>		
											<span class="inline-block pull-right">
												<span class="time">Oct 10</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">Bill Doe</span>	
											<span class="detail">
												<span class="label label-danger">Important</span>												
												Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor suscipit lobortis.
											</span>		
											<span class="inline-block pull-right">
												<span class="time">Oct 9</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">My friend</span>		
											<span class="detail">
												<span class="label label-warning">Private</span>												
												Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor suscipit lobortis.
											</span>		
											<span class="inline-block pull-right">
												<span class="time">Oct 9</span>			
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">John Doe</span>		
											<span class="detail">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor suscipit lobortis.</span>
											<span class="inline-block pull-right">
												<span class="attachment"><i class="fa fa-paperclip fa-lg"></i></span>							
												<span class="time">Sep 27</span>		
											</span>							
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="starred"><i class="fa fa-star fa-lg"></i></span>
											<span class="from">Jane Doe</span>		
											<span class="detail">Nunc vel lorem volutpat, placerat erat ut, pulvinar mi.</span>		
											<span class="inline-block pull-right">
												<span class="time">Sep 25</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												 <span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">My business</span>		
											<span class="detail">
												<span class="label label-info">Work</span>		
												Phasellus ac feugiat mauris. Interdum et malesuada fames ac ante ipsum primis in faucibus.
											</span>		
											<span class="inline-block pull-right">
												<span class="time">Sep 1</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">John Doe</span>		
											<span class="detail">Suspendisse tristique ullamcorper sapien id pulvinar.</span>
											<span class="inline-block pull-right">								
												<span class="time">Aug 30</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="starred"><i class="fa fa-star fa-lg"></i></span>
											<span class="from">Bill Doe</span>		
											<span class="detail">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor suscipit lobortis.</span>		
											<span class="inline-block pull-right">
												<span class="time">Aug 18</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">My friend</span>		
											<span class="detail">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor suscipit lobortis.</span>		
											<span class="inline-block pull-right">
												<span class="time">Aug 17</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="starred"><i class="fa fa-star fa-lg"></i></span>
											<span class="from">Jane Doe</span>		
											<span class="detail">Nunc vel lorem volutpat, placerat erat ut, pulvinar mi.</span>		
											<span class="inline-block pull-right">
												<span class="time">July 13</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												 <span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">My business</span>		
											<span class="detail">Phasellus ac feugiat mauris. Interdum et malesuada fames ac ante ipsum primis in faucibus.</span>		
											<span class="inline-block pull-right">
												<span class="time">July 13</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												 <span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">John Doe</span>		
											<span class="detail">Suspendisse tristique ullamcorper sapien id pulvinar.</span>		
											<span class="inline-block pull-right">
												<span class="time">July 11</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">Bill Doe</span>		
											<span class="detail">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor suscipit lobortis.</span>		
											<span class="inline-block pull-right">
												<span class="time">July 8</span>		
											</span>
										</li>
										<li class="list-group-item clearfix inbox-item">
											<label class="label-checkbox inline">
												<input type="checkbox" class="chk-item">
												<span class="custom-checkbox"></span>
											</label>
											<span class="not-starred"><i class="fa fa-star-o fa-lg"></i></span>
											<span class="from">My friend</span>		
											<span class="detail">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor suscipit lobortis.</span>		
											<span class="inline-block pull-right">
												<span class="time">July 4</span>		
											</span>
										</li>
									</ul><!-- /list-group -->
									<div class="panel-footer clearfix">
										<div class="pull-left">112 messages</div>
										<div class="pull-right">
											<span class="middle">Page 1 of 8 </span>
											<ul class="pagination middle">
												<li class="disabled"><a href="#"><i class="fa fa-step-backward"></i></a></li>
												<li class="disabled"><a href="#"><i class="fa fa-caret-left large"></i></a></li>
												<li><a href="#"><i class="fa fa-caret-right large"></i></a></li>
												<li><a href="#"><i class="fa fa-step-forward"></i></a></li>
											</ul>
										</div>
									</div>
								</div><!-- /panel -->
							</div><!-- /tab3 -->
						</div><!-- /tab-content -->
					</div><!-- /.col -->
				</div><!-- /.row -->			
			</div><!-- /.padding-md -->
		</div><!-- /main-container -->
	
	



	
	</div><!-- /wrapper -->
<%@ include file="../common/less-js.jsp" %>
<script src="${ctx }/static/js/sockjs-0.3.4.js"></script>
<script src="${ctx }/static/js/stomp.js"></script>
<script src="${ctx }/static/js/template.js"></script>
<link href="${ctx }/static/js/simplemde.min.css" rel="stylesheet">
<script src="${ctx }/static/js/simplemde.min.js"></script>
<script>
	$(function()	{
		$('#friendListToggle').click(function()	{
			$('.chat-wrapper').toggleClass('sidebar-display');
		});
		
		$('.scrollable-div').slimScroll({
			height: '100%',
			size: '30px',
			color: '#000' //滚动条颜色
		});
		
// 		document.ontouchmove = function(e){
// 		   if(disableScroll){
// 			 e.preventDefault();
// 		   } 
// 		}
	});
</script>
<script>
var simplemde = new SimpleMDE({ 
	element: document.getElementById("message"), 
	autofocus: true,
	indentWithTabs: false,
//    	initialValue: "支持Markdown",
   	insertTexts: {
	       horizontalRule: ["", "\n\n-----\n\n"],
	       image: ["![](http://", ")"],
	       link: ["[", "](http://)"],
	       table: ["", "\n\n| Column 1 | Column 2 | Column 3 |\n| -------- | -------- | -------- |\n| Text     | Text      | Text     |\n\n"],
	   },
   	lineWrapping: false,
   	promptURLs: true,
    renderingConfig: {
        singleLineBreaks: false,
        codeSyntaxHighlighting: true,
    },
    shortcuts: {
        drawTable: "Cmd-Alt-T"
    },
    showIcons: ["code", "table"],
//     spellChecker: false,
//     status: false,
//     status: ["autosave", "lines", "words", "cursor"], // Optional usage
//     status: ["autosave", "lines", "words", "cursor", {
//         className: "keystrokes",
//         defaultValue: function(el) {
//             this.keystrokes = 0;
//             el.innerHTML = "0 Keystrokes";
//         },
//         onUpdate: function(el) {
//             el.innerHTML = ++this.keystrokes + " Keystrokes";
//         }
//     }], // Another optional usage, with a custom status bar item that counts keystrokes
    styleSelectedText: false,
    tabSize: 4,
    toolbar: false,
    toolbarTips: false
});



$(function () {
// 	$('#wysihtml5-textarea').wysihtml5();
	var cuname = '${currentUser.username}';
	var stompClient = null; 
	function connect() {
        var socket = new SockJS('${ctx}/ws');
		stompClient = Stomp.over(socket);
// 		stompClient.debug = null;
        stompClient.connect({}, function(frame) {
//             console.log('Connected: ' + frame);
            stompClient.subscribe('/topic/onlineusers', function(mes){//订阅
            	var result = JSON.parse(mes.body);
            	if ( $("#li_"+result.username+"").length == 0 ) {//判断元素是否存在
            		var html = template('onlineuserli',result );
                	$(".friend-list").append(html);
            	}
            });
            stompClient.subscribe('/topic/rmonlineuser', function(mes){//订阅
            	var result = JSON.parse(mes.body);
//             	$("#li_"+result.username+"").remove();
            	$("#li_"+result.username+"").slideUp("slow", function() {
            		$(this).remove();
            		
            	});
            });
            
            stompClient.subscribe("/topic/chat.message/java", function(message) {
            	var json = JSON.parse(message.body);
            	json.right =cuname == json.username ? 'right' : '';//增加一个属性
            	template.config('escape', false);
            	var html = template('chattmp',json);
            	
            	$( $.parseHTML(html) ).appendTo( "#direct-chat-messages" );
//             	$("#direct-chat-messages").append(html );
				$(".scrollable-div").scrollTop($(".chat-message")[0].scrollHeight);
	        });
            
        });
    }

// 	$("#sendbtn").bind("click", function(event) {
// 		var destination = "/app/chat.message/java";
// 		var msg = $('#message').val();
// 		if(msg == ''){
// 			return ;
// 		}
// 		stompClient.send(destination, {}, JSON.stringify({message: msg,currentName:'${currentUser.username}'  }));
// // 		$('#message').val('');
// 		simplemde.value();
// 	});
	
	$( "#chatform" ).submit(function( event ) {
		$('#message').focus();
		event.preventDefault();
		var destination = "/app/chat.message/java";
		var msg = $('#message').val();
		if(msg == ''){
			return ;
		}
// 		$("#direct-chat-messages").append(msg);
		stompClient.send(destination, {}, JSON.stringify({message: msg,currentName:'${currentUser.username}'  }));
		simplemde.value("");
	});
	connect();
	$(".scrollable-div").scrollTop($(".chat-message")[0].scrollHeight);
});
</script>



<script id="chattmp" type="text/html">
							<li class="left clearfix fadeInUp" data-provide="markdown-editable">
								<span class="chat-img pull-left">
									<img src="${ctx }/static/less/img/user.jpg" alt="{{username}}">
								</span>
								<div class="chat-body clearfix">
									<div class="header">
										<a href="${ctx }/space/{{username}}"><strong class="primary-font">{{username}}</strong></a>
										<small class="pull-right text-muted"><i class="fa fa-clock-o"></i>{{nowString}}</small>
									</div>
									<p>
										{{message}}
									</p>
								</div>
							</li>
</script>
<script id="onlineuserli" type="text/html" >
						<li class="bounceInDown" id="li_{{username}}">
							<a href="#" class="clearfix">
								<img src="${ctx }/static/less/img/user.jpg" alt="{{username}}" class="img-circle">
								<div class="friend-name">	
									<strong>{{username}}</strong>
								</div>
							</a>
						</li>

</script>	
  </body>

</html>
