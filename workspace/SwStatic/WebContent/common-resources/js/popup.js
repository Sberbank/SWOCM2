initPopup = function() {
	var closeIcon = $('.popup-icon-close'),
		overlay = $('.b-overlay'),
		popup = $('.b-popup'),
		body = $('body');
	
	function popupHide() {		
		body.unbind('click.popupHide')
			.unbind('keydown.popupHide')
			.removeClass('ui-overlay popup-is-visible');
	};
	
	body.click(function() {
		if (!body.hasClass('popup-is-visible')) {
			setTimeout(function () {
				body.addClass('popup-is-visible');
				body.bind('click.popupHide', function(e) {	
					var that = $(e.target);
					if (that.hasClass('popup-icon-close') || !that.parents().hasClass('b-popup')) {
						popupHide();
					}
				});	
				
				body.bind('keydown.popupHide', function(e) {	
					if (e.which == 27) {
						popupHide();
					}
				});
			}, 200);
		}
	});	

};

$(document).ready(function() {	
	initPopup();
});