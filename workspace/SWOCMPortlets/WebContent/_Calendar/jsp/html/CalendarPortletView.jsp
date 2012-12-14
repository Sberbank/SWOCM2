<%@page session="false" contentType="text/html" pageEncoding="UTF-8" import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.calendar.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>                
<portlet:defineObjects/>
 

						<!-- Start Calendar Widget -->
                        <div class="widget-block widget-calendar">
							<div class="w-content">
								<div class="w-icon-collapse"></div>
								<div class="w-header">
									<p>4 декабря</p>
									<span>сегодня</span>
								</div>
								<div class="w-timeline">
									<div class="w-hour-block">
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
									<div class="w-tasks-block">
										<%  List<Meeting> meetings = (List<Meeting>)request.getAttribute("meetings"); 
										   	Meeting previous = null;
											int intersection = 0;
											for (int i=0; i<meetings.size(); i++) { 
												Meeting meeting = meetings.get(i);

												if (previous != null) {
													Date end = previous.getEnd();
													Date start = meeting.getStart();
													if ((end.getHours() > start.getHours()) || 
														(end.getHours() == start.getHours() &&
															end.getMinutes() > start.getMinutes())) {
														intersection = Math.min(3, intersection+1);
													} else {
														intersection = 0;
													}
												}
										%>
										<div class="
											w-tack
											priority<%=meeting.getPriority()%>
											start<%=meeting.getStartHour()%>h_<%=meeting.getStartMinutes()%>m
											duration<%=meeting.getDurationHour()%>h_<%=meeting.getDurationMinutes()%>m
											w-tack-small
											<% if (intersection > 0) { %>
											intersection<%=intersection%>
											<% } %>"
											>
											<p><%=meeting.getName()%></p>
										</div>
										<%
												previous = meeting; 
											} 
										%>
									</div>
								</div>
							</div>
							<div class="w-footer">
								<div class="w-prev">&#8592;</div>
								<p class="w-today">Сегодня, <span>4 декабря</span></p>
								<div class="w-next">&#8594;</div>
							</div>
						</div>
						<!-- End Calendar Widget-->
