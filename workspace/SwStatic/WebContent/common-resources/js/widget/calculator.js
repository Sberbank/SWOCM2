function initCalculator() {
	var iconCollapse = $('.w-sell-calculator-icon'),
		productLine = $('.calculator-plan-line'),
		productCell = $('.calculator-plan-cell'),
		targetReal = $('.calculator-target-real'),
		targetFuture = $('.calculator-target-future'),
		targetAll = $('.calculator-target'),
		productInfo = [];
	
	iconCollapse.click(function() {
		$('body').addClass('ui-overlay');		
	});
	
	function recalculation() {
		var length = productInfo.length,
			plan = 0,
			value = 0,
			all = 0;
			
		for (var i = 0; i < length; i++) {
			plan = plan + (productInfo[i].plan * productInfo[i].value);
			value = value + (productInfo[i].value * productInfo[i].max);
			all = all + (productInfo[i].all * productInfo[i].value);
		}
		
		if (!targetReal.hasClass('init-calculator')) {
			var planWidth = plan/value * 100;			
			targetReal.css('width', planWidth+'%');
			$('.calculator-result').text(plan);
			targetReal.addClass('init-calculator');
		}
			
		var	futureWidth = all/value * 100,
			future = all - plan;			
			future = future < 1 ? '' : future+' Руб.';		
		
		targetFuture.css('width', futureWidth+'%');		
		targetAll.text(future);
	}
	
	function redrawSlider(parent, index) {
		var that = parent,
			index = index,
			max = productInfo[index].max,
			plan = productInfo[index].plan,
			future = parseInt(that.attr('future-number')),
			slider = that.find('.calculator-plan-slider'),		
			all = plan + future;
			
			for (var i = 0; i < max; i++) {
				var el = that.find('.calculator-plan-cell').eq(i);
				if (i >= plan && i < all) {
					el.addClass('calculator-plan-future');
				} else {
					el.removeClass('calculator-plan-future');
				}
			}
			
		future = future > 0 ? '+'+future : '';
		slider.find('p').text(future);	
		
		productInfo[index].all = all;		
		recalculation();		
	}
	
	function initSlider() {
		productLine.each(function(index) {
			var that = $(this),
				max = parseInt(that.attr('max-number')),
				plan = parseInt(that.attr('plan-number')),
				future = parseInt(that.attr('future-number')),
				value = parseInt(that.attr('value')),
				all,
				width = 100/max,
				className = '',
				html = [],
				info = {};
				
				all = plan + future;
				all = all == plan ? 0 : all;
				sliderLeft = all * width;
				
				info.max = max;
				info.plan = plan;
				info.all = all;
				info.value = value;				
				productInfo.push(info);
				
				for (var i = 0; i < max; i++) {				
					if (i < plan) {
						className = ' calculator-plan-real';
					} else if (i >= plan && i < all) {
						className = ' calculator-plan-future';
					} else {
						className = '';
					}					
					html.push('<div class="calculator-plan-cell'+ className +'" style="width: '+ width +'%"></div>');
				}			
				that.append(html.join(''));	
				
				that.find('.calculator-plan-slider').slider({
							range: "max",
							value: all,
							min: 0,
							max: max,
							slide: function( event, ui ) {
								var current = ui.value - plan;									
								if (current < 0) {
									return false;
								}										
								parent = $(this).parent('.calculator-plan-line');									
								parent.attr('future-number', current);						
								redrawSlider(parent, index);								
							}
						});
						
				that.find('.calculator-plan-slider').find('a').css('left', sliderLeft+'%').prepend('<p>+'+future+'</p>');				
		});	
	}	
	
	initSlider();
	recalculation();
}

$(document).ready(function() {	
	initCalculator();	
});