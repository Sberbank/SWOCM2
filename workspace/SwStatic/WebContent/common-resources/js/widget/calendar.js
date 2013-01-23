if (!main) var main = {};

main.widget = function() {
	var t = this;
    t.element = $('.widget-calendar');
}

$(document).ready(function() {
    var widgetCalendar = $('.widget-calendar'),
		iconCollapse = $('.w-icon-collapse'),
		mainContent = $('.l-content > div'),
		isPageLenta = mainContent.hasClass('l-lenta'),
		layoutBody = $('.l-body'),
		widgetCalendarWidth;
		
		if (isPageLenta) {
			widgetCalendar.addClass('widget-calendar-lenta');
		} else {
			widgetCalendar.addClass('widget-calendar-default');
		}
		
	function setOverflow() {
		if (!isPageLenta) {
			var mainWidth = $(window).width();		
				widgetCalendarWidth = layoutBody.width() * 0.06;
				widgetCalendarWidth = (mainWidth  - 1440) > -1 ? widgetCalendarWidth + (mainWidth  - 1440) : widgetCalendarWidth;				

			if (widgetCalendarWidth < 150) {
				widgetCalendar.addClass('widget-calendar-mini');
			} else {
				widgetCalendar.removeClass('widget-calendar-mini');
			}		
			
			
			if (mainWidth > 1030) {
					$('body').addClass('ui-overflow-x');
				} else {
					$('body').removeClass('ui-overflow-x');
				}
				
			if (mainWidth > 1700) {
				isPageLenta = true;
			}	else {
				isPageLenta = false;
				//widgetCalendar.css({'width': widgetCalendarWidth});
			}
		}
	}	
	
	iconCollapse.click(function() {
		if (!isPageLenta) {	
			if (widgetCalendar.hasClass('widget-calendar-mini')) {
				widgetCalendar.removeClass('widget-calendar-mini')
								.css({'left': widgetCalendarWidth, 'width': '100%'});
			} else {
				if (widgetCalendarWidth < 150) {
					widgetCalendar.addClass('widget-calendar-mini');
				} else {
					widgetCalendar.removeClass('widget-calendar-mini');
				}			
				widgetCalendar.css({'width': widgetCalendarWidth, 'left': '100%'});		
			}
		}
	});
	
	/*widgetCalendar.hover(function(){
		if (!isPageLenta) {		
			widgetCalendar.stop().removeClass('widget-calendar-mini')
						.css({width: '100%'})
						.animate({left: widgetCalendarWidth}, 2000);						
		}
	}, function() {
		if (!isPageLenta) {			
			if (widgetCalendarWidth < 150) {
				widgetCalendar.addClass('widget-calendar-mini');
			} else {
				widgetCalendar.removeClass('widget-calendar-mini');
			}			
			widgetCalendar.stop().css({left: '100%'})
						.animate({width: widgetCalendarWidth}, 2000);			
		}
	});*/
	
	function initCalendar() {
		setOverflow();
	}
	
	$(window).bind('resize', function () {
		setOverflow();
	});
	
	initCalendar();
});
