var notification_show = false;

$(document).ready(function() {
	//Notificações
	
	$("#notification-all").click(function(e) {
		$("#notification-div").css('display', notification_show ? 'none' : 'block');
		notification_show = !notification_show;
		e.stopPropagation();
	});		
	$("#notification-div").click(function(e) {
		e.stopPropagation();
	});
	$(document).click(function(e){
		$("#notification-div").css('display', 'none');
		notification_show = false;
	});	
});