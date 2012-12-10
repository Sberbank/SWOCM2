$(document).ready(function() {	
	var headerInput = $('.header-input'),
		leftMenu = $('.left').find('div'),
		body = $('body'),
		wrapper = $('.wrapper'),
		center = $('.center'),
		menuLi = $('.menu').find('li'),
		lentaBlock = $('.lenta-block'),
		containerButton = $('.container-button'), 
		widgetAdd = $('.widget-add'),
		tableCollapse = $('.table-collapse'),
		issueProposal = $('.issue-proposal'),
		callStep2 = $('.call-step2'), 
		callStep3 = $('.call-step3'),
		leftProposal = $('.left-proposal'),
		innCheck = $('.inn-check'),
		proposalInput = $('.proposal-input'),
		proposalCheck2 = $('.proposal-input2'),
		proposalInputStep3 = $('.proposal-input-step3'),
		proposalInputStep34 = $('.proposal-input-step3-4'),
		proposalInputStep39 = $('.proposal-input-step3-9'),
		lentaProposalStep4 = $('.lenta-proposal-step4'),
		proposalStep1 = $('.proposal-step1'),
		issueStep3 = $('.issue-step3'),
		issueStep4 = $('.issue-step4'),
		buttonStep1 = $('.button-step1'),		
		callLink = $('.call-link'),
		showStep = $('.show-step'),
		linkLenta = $('.link-lenta'),
		lentaProposalStep2 = $('.lenta-proposal-step2'),
		lentaProposalStep4 = $('.lenta-proposal-step4'),
		linkClient = $('.link-client'),
		linkMeeting = $('.link-meeting'),
		callReset = $('.call-reset'),
		step = 1,
		organizationCard = $('.organization-card'),
		backToList = $('.back-to-list'), 
		callRequest = $('.call-request');
	
	headerInput.focus(function() {
		var el = $(this), 
			val = el.val(),
			text = el.attr('text');
		
		if (val == text) {		
			el.css('color', '#1E3E18').val('');
		} 
	});	
	
	headerInput.blur(function() {
		var el = $(this), 
			val = el.val(),
			text = el.attr('text');

		if (val == '') {		
			el.css('color', '#a5a5a5').val(text);
		} 
	});
	
	leftMenu.click(function() {
		var that = $(this), thatClass;
		
		body.removeClass('core');
		menuLi.eq(0).click();
		$('.meeting-final').hide();
		
		if (!(that.hasClass('active') || that.hasClass('reset'))) {
			thatClass =  that.attr('class');
			leftMenu.removeClass('active');
			that.addClass('active');
			wrapper.attr('class', 'wrapper ' + thatClass);		
		}
		
		lentaProposalStep2.hide();
		lentaProposalStep4.hide();
		
		if (body.hasClass('body-step2') && wrapper.hasClass('lenta')) {
			setTimeout(function() {
				lentaProposalStep2.slideDown('slow');	
			},800);
		}
		
		if (body.hasClass('body-step4') && wrapper.hasClass('lenta')) {
			setTimeout(function() {
				lentaProposalStep4.slideDown('slow');	
			},800);
		}
		
		if (proposalStep1.css('display') == 'block') {
			validateInn();
		}
	});
	
	menuLi.click(function() {
		var that = $(this), blockClass;
		
		if (!that.hasClass('active')) {
			menuLi.removeClass('active');
			that.addClass('active');
			
			blockClass =  that.attr('attr');
			
			center.attr('class', 'center ' + blockClass);
		}
	});
	
	containerButton.click(function() {
		leftMenu.eq(0).click();
		menuLi.eq(2).click();
	});
	
	widgetAdd.click(function() {
		var that = $(this),
			blockClass = that.attr('attr');
		that.addClass('active');
		
		console.log(blockClass);
		$('.'+blockClass+'').addClass('active');
		
		
	}); 
	
	callStep2.click(function() {
		wrapper.addClass('step2');
	});
	
	callStep3.click(function() {
		wrapper.addClass('step3');
	});
	
	callRequest.click(function() {
		leftMenu.eq(0).click();
		menuLi.eq(0).click();
		body.scrollTop(0);
		wrapper.addClass('proposal');
		body.addClass('proposal-start');
	});
	
	tableCollapse.click(function() {
		wrapper.toggleClass('client-collapse');
	});
	
	issueProposal.click(function() {
		body.addClass('wrapper-proposal');
		leftMenu.eq(5).click();
	});
	
	leftProposal.click(function() {
		body.removeClass('proposal-start');
	});
	
	proposalInput.keypress(function() {
		validateStep(4);
		validateInn();
	});
	
	proposalCheck2.keypress(function (evt) {  
		 var theEvent = evt || window.event;
		  var key = theEvent.keyCode || theEvent.which;
		  key = String.fromCharCode( key );
		  var regex = /[0-9]|\./, 
				value = proposalCheck2.val(),
				len = value.length;
		  if( !regex.test(key) || len > 12) {
			theEvent.returnValue = false;
			if(theEvent.preventDefault) theEvent.preventDefault();
		  }
		  
		  if (len == 12) {
			setCheck();
		  }
	});
		
	proposalInputStep34.keypress(function (evt) {  
		 checkNumber(evt);
	});
	
	proposalInputStep39.keypress(function (evt) {  
		 checkNumber(evt);
	});
	
	buttonStep1.click(function() {
		buttonStep1.removeClass('active');
		var that = $(this);
		if (that.hasClass('button-step3')) {
			body.attr('class', 'wrapper-proposal body-step4');
		} else {
			body.addClass('body-step2');
		}
	});
	
	issueStep3.click(function() {
		body.attr('class', 'wrapper-proposal body-step3');
		leftMenu.eq(5).click();
		validateStep(9);
	});
	
	proposalInputStep3.keypress(function() {
		validateStep(9, true);
	}); 
	
	issueStep4.click(function() {
		lentaProposalStep4.slideUp('slow', function() {
			$('.meeting-final').slideDown('slow');
		});
		
	});
	
	showStep.click(function() {
		if (step == 3 ) {
			step = 1;
		} else {
			step = step + 1;
		}
		
		body.attr('class', 'body-client client-step' + step +'');
		
	});
	
	linkClient.click(function() {
		leftMenu.eq(3).click();
	});
	
	callLink.click(function() {
		leftMenu.eq(1).click();
		body.addClass('activeCall');
	});
	
	callReset.click(function() {
		body.removeClass('activeCall');
	});
	
	linkLenta.click(function() {
		leftMenu.eq(0).click();
	});
	
	linkMeeting.click(function() {
		leftMenu.eq(3).click();
		body.removeClass('body-step4');
	});
	
	organizationCard.click(function() {
		leftMenu.eq(3).click();
		body.addClass('core');
	});
	
	backToList.click(function() {
		leftMenu.eq(2).click();
		body.removeClass('core');
	});
	
	function validateInn() {
		var val = proposalCheck2.val();
		if (val.length > 11) {
			setCheck();
		}
	}
	
	function checkNumber(evt) {
		var theEvent = evt || window.event;
		  var key = theEvent.keyCode || theEvent.which;
		  key = String.fromCharCode( key );
		  var regex = /[0-9]|\./;
		  if( !regex.test(key)) {
			theEvent.returnValue = false;
			if(theEvent.preventDefault) theEvent.preventDefault();
		  }
	}
	
	function setDate() {	
		var d = new Date(),
			day = d.getDate(),			
			date = day +' ноября',
			yesterday = day - 1,
			pre = yesterday - 1;
		
		$('.today').text(date);
		$('.yesterday').text(yesterday +' ноября');
		$('.pre-yesterday').text(pre+' ноября');
	}
	
	setDate();
	
	function setCheck() {
		innCheck.text('Проверяем').show();
		setTimeout(function() {
			innCheck.text('В стоп-листе не значится').addClass('true');
			validateStep(4);		
		},800);
	}
	
	function validateStep(length, check) {
		if (innCheck.hasClass('true') || check) {
			var validate = true, val;
			for (var i=0; i < length; i++) {
				if (check) {
					val = proposalInputStep3.eq(i).val();
				} else {
					val = proposalInput.eq(i).val();
				}
				if (val == '') {
					validate = false;
				}
			}
			if (validate) {
				buttonStep1.addClass('active');				
			}
		}
	}
});