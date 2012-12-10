<%@page session="false" contentType="text/html" pageEncoding="UTF-8" import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.kpi.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>                
<portlet:defineObjects/>

						<!-- Start KRI Widget -->
							<div class="widget-block widget-kri">
								<div class="w-header">KPI за Декабрь</div>
								<div class="w-content">									
									<div class="w-kri-item">
										<p class="w-kri-text">Мой</p>
										<div class="w-kri-all" style="width: 75%;">
											<div class="w-kri-now" style="width: 10%;"></div>
											<p class="w-kri-number w-kri-number-big">75%</p>
										</div>										
									</div>
									<div class="w-kri-item">
										<p class="w-kri-text">ВСП</p>
										<div class="w-kri-all" style="width: 67%;">
											<div class="w-kri-now" style="width: 10%;"></div>
											<p class="w-kri-number">67%</p>
										</div>										
									</div>
								</div>
							</div>
						<!-- End KRI Widget -->
