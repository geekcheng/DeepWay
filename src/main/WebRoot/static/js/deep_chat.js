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
    styleSelectedText: false,
    tabSize: 4,
    toolbar: false,
    toolbarTips: false
});



$(function () {
	$('#friendListToggle').click(function()	{
		$('.chat-wrapper').toggleClass('sidebar-display');
	});
	
	$('.scrollable-div').slimScroll({
		height: '100%',
		size: '30px',
		color: '#000' //滚动条颜色
	});
	
//		document.ontouchmove = function(e){
//		   if(disableScroll){
//			 e.preventDefault();
//		   } 
//		}	
	
	
	
//	var cuname = '${currentUser.username}';
	var stompClient = null; 
	function connect() {
        var socket = new SockJS(ctx+'/ws');
		stompClient = Stomp.over(socket);
//		stompClient.debug = null;
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

	$( "#chatform" ).submit(function( event ) {
		$('#message').focus();
		event.preventDefault();
		var destination = "/app/chat.message/java";
		var msg = $('#message').val();
		if(msg == ''){
			return ;
		}
// 		$("#direct-chat-messages").append(msg);
		stompClient.send(destination, {}, JSON.stringify({message: msg,currentName:cuname  }));
		simplemde.value("");
	});
	connect();
	$(".scrollable-div").scrollTop($(".chat-message")[0].scrollHeight);
});



