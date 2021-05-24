$(function() {
	$("div.nolinks ul li").find("a").each(function(){
		var linkText = $(this).text();
		$(this).before(linkText);
		$(this).remove();
	});
});



