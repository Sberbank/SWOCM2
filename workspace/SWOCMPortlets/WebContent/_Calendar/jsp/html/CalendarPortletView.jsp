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
										<div class="w-tack w-tack-planing w-tack-small" style="top: 6px;">
											<p>Оперативка</p>
										</div>
										<div class="w-tack w-tack-cold" style="top: 28px; height: 123px;">
											<p>Холодные звонки 10 шт</p>
										</div>
										<div class="w-tack w-tack-important" style="top: 168px; height: 33px;">
											<p>Встреча с ОДО Лютик. Подписание договора и проч</p>
										</div>
										<div class="w-tack w-tack-etc" style="top: 218px; height: 33px;">
											<p>Обед</p>
										</div>
										<div class="w-tack w-tack-red w-tack-not-approved" style="top: 268px; height: 83px;">
											<p>Встреча с ИП  Фроловым В.Н.</p>
										</div>
										<div class="w-tack w-tack-cold" style="top: 317px; height: 60px; left: 60px; right: 8px;">
											<p>Холодные звонки 15 шт</p>
										</div>
										<div class="w-tack w-tack-warm w-tack-overflow" style="top: 393px;">
											<p>Подготовить раздаточный материал</p>
										</div>
										<div class="w-tack w-tack-warm" style="top:  428px;">
											<p>Контроль платежей</p>
										</div>
										<div class="w-tack w-tack-planing" style="top:  463px;">
											<p>План на завтра</p>
										</div>
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
