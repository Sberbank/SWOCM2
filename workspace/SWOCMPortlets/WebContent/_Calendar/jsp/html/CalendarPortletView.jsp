<%@page session="false" contentType="text/html" pageEncoding="UTF-8" import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.calendar.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>                
<portlet:defineObjects/>

<script id="calendarTemplate" type="text/x-jquery-tmpl">
	<div class="
		w-tack
		priority\${data.priority}
		start\${startHour(data.start)}h_\${startMinutes(data.start)}m
		duration\${durationHour(data.start, data.end)}h_\${durationMinutes(data.start, data.end)}m
		\${intersection(data.start, data.end)}
		w-tack-small
		{{if !\$item.data.data.accepted}}
			w-tack-not-approved
		{{/if}}
	">
		<p>\${data.name}</p>
	</div>
</script>
<script type="text/javascript">
	var prevEnd = null;
	var prevStart = null
	var intersection = 0;
	var fullIntersection = 0;
	
	var f = new function(){
		function n2s(n) {
			if (n < 10)
				return "0" + n;
			return "" + n;
		}
	
		function getMinutes(d) {
			var min = d.getMinutes();
			min -= min%15;
			return min;
		}
		
		function month(m) {
			switch (m) {
				case 0: return "Январь";
				case 1: return "Февраль";
				case 2: return "Март";
				case 3: return "Апрель";
				case 4: return "Май";
				case 5: return "Июнь";
				case 6: return "Июль";
				case 7: return "Август";
				case 8: return "Сентябрь";
				case 9: return "Октябрь";
				case 10: return "Ноябрь";
				case 11: return "Декабрь";
			}

			return "";
		};

		this.startHour = function (start) {
			var date = new Date(start);
			return n2s(date.getHours());
		};
	
		this.startMinutes = function (start) {
			var minutes = getMinutes(new Date(start));
			return n2s(minutes);
		};
	
		this.durationHour = function (start, end) {
			var dstart = new Date(start);
			var dend = new Date(end);
	
			var minutes = dend.getHours()*60 + getMinutes(dend) - (dstart.getHours()*60 + getMinutes(dstart));
			return Math.floor(minutes/60) + "";
		};
	
		this.durationMinutes = function (start, end) {
			var dstart = new Date(start);
			var dend = new Date(end);
	
			var minutes = dend.getHours()*60 + getMinutes(dend) - (dstart.getHours()*60 + getMinutes(dstart));
			minutes %= 60;
			minutes -= minutes%15;
			return n2s(minutes);
		};
		
		this.format = function (_d) {
			var d = new Date(_d);
			return n2s(d.getDate()) + "." + n2s(d.getMonth()+1) + "." + d.getFullYear();
		};
		
		this.dateStr = function (d) {
			return n2s(d.getDate()) + " " + month(d.getMonth());
		};

		this.dayStr = function (d) {
           	var today = new Date();
           	today.setHours(0, 0, 0, 0);
           	if (d.getYear() == today.getYear() &&
           		d.getMonth() == today.getMonth() &&
           		d.getDate() == today.getDate())
           		return "Сегодня";
           		
           	d = new Date(d);
           	d.setHours(0, 0, 0, 0);

			var diff = today.getTime() - d.getTime();
			if (Math.abs(diff) <= 24*60*60*1000) {
				return (diff > 0) ? "Вчера" : "Завтра";
			} else if (Math.abs(diff) <= 2*24*60*60*1000) {
				return (diff > 0) ? "Позавчера" : "Послезавтра";
			}

			return "";
		};
		
		this.intersection = function (_start, _end) {
			var d = new Date(_start);
			if (prevEnd == null) {
				prevStart = new Date(_start);
				prevEnd = new Date(_end);
				return intersection;
			}

			if ((d.getHours() < prevEnd.getHours()) || 
				(d.getHours() == prevEnd.getHours() && d.getMinutes > prevEnd.getMinutes())
				) {
				++intersection;
				var _class = "intersection" + intersection;

				if (prevStart.getHours() == d.getHours() &&
					prevStart.getMinutes() == d.getMinutes()) {
					fullIntersection++;
					_class += " moveBottom" + fullIntersection;
				} else {
					fullIntersection = 0;
				}

				return _class;
			} else {
				intersection = 0;
			}

			prevEnd = new Date(_end);
			prevStart = new Date(_start);

			return "";
		}
	};

	var d = new Date();
	function loadTasks(d) {
		intersection = 0;
		prevEnd = prevStart = null;
		$.ajax({
        	type: "POST",
            url: '${renderRequest.contextPath}/MongoDBProxyServlet',
            dataType: "json",
            data: { cn : 'calendar', date: f.format(d) },
            success: function(data) {
				$("#w-calednar-header").html("<p>" + f.dateStr(d) + "</p><span>" + f.dayStr(d) + "&nbsp;</span>");
				var dayStr = f.dayStr(d);
				if (dayStr != "")
					dayStr += ", ";

				$("#w-calednar-footer").html(dayStr + "<span>" + f.dateStr(d) + "</span>");

				var height = $("#w-timeline").height();
				var root = $("#filler");
				root.css("bottom", height);
				root.animate({
					bottom: 0
				}, 600, function(){
					$("#meetingsList").empty();
	            	for (var i=0; i<data.length; i++) {
	                	$('#calendarTemplate')
	                		.tmpl({
	                			data: data[i],
	                			startHour: f.startHour,
	                			startMinutes: f.startMinutes,
	                			durationHour: f.durationHour,
	                			durationMinutes: f.durationMinutes,
	                			intersection: f.intersection
	                		}).appendTo("#meetingsList");
               		}

               		root.animate({ bottom : height}, 600);
				});
            },
            error: function() {
            	alert('error');
            }
        });
	}

	$(document).ready(function () {
		loadTasks(d);
	
		$("#w-prev-arr").click(function(){
			d.setDate(d.getDate()-1);
			loadTasks(d);
		});
		
		$("#w-next-arr").click(function(){
			d.setDate(d.getDate()+1);
			loadTasks(d);
		});
	});
</script>
                        <div class="widget-block widget-calendar">
							<div class="w-content">
								<div class="w-icon-collapse"></div>
								<div id="w-calednar-header" class="w-header">
									<p>4 декабря</p>
									<span>сегодня</span>
								</div>
								<div id="w-timeline" class="w-timeline">
									<div id="filler" 
											style="
												background-color: white;
												position: absolute;
												top: 0px;
												left: 0px;
												right: 0px;
												z-index: 10;"></div>
									<div id="w-hour-block" class="w-hour-block">
										<div class="w-hour"><p>9:00</p></div>
										<div class="w-hour"><p>10:00</p></div>
										<div class="w-hour"><p>11:00</p></div>
										<div class="w-hour"><p>12:00</p></div>
										<div class="w-hour"><p>13:00</p></div>
										<div class="w-hour"><p>14:00</p></div>
										<div class="w-hour"><p>15:00</p></div>
										<div class="w-hour"><p>16:00</p></div>
										<div class="w-hour"><p>17:00</p></div>
										<div class="w-hour"><p>18:00</p></div>
										<div class="w-hour"><p>19:00</p></div>
									</div>
									<div class="w-today-indicator">
										<div class="w-time">10:24</div>
										<div class="w-today-bg"></div>
										<div class="w-today-right"></div>
									</div>
									<div id="meetingsList" class="w-tasks-block">
									</div>
								</div>
							</div>
							<div class="w-footer">
								<div id="w-prev-arr" class="w-prev">&#8592;</div>
								<p id="w-calednar-footer" class="w-today">Сегодня, <span>4 декабря</span></p>
								<div id="w-next-arr" class="w-next">&#8594;</div>
							</div>
						</div>
						<!-- End Calendar Widget-->
