<%@page session="false" contentType="text/html" pageEncoding="UTF-8" import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.addwidget.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>                
<portlet:defineObjects/>
 

						<!-- Start Add Widget-->
                        <div class="widget-block widget-add">
                            <div class="w-content">
                                <div class="w-add-item">
                                    <div class="w-add-header">Результативность за неделю</div>
                                    <div class="w-add-content">
                                        <div class="w-add-line">
                                            <p>Звонки</p>
                                            <div class="w-add-result-line" style="width: 70%; background: #00d5ff;">&nbsp;</div>
                                            <div class="w-add-result-number">70</div>
                                        </div>
                                        <div class="w-add-line">
                                            <p>Интерес</p>
                                            <div class="w-add-result-line" style="width: 30%; background: #00c553;">&nbsp;</div>
                                            <div class="w-add-result-number">30</div>
                                        </div>
                                        <div class="w-add-line">
                                            <p>Встречи</p>
                                            <div class="w-add-result-line" style="width: 12%; background: #ffb000;">&nbsp;</div>
                                            <div class="w-add-result-number">12</div>
                                        </div>
                                        <div class="w-add-line">
                                            <p>Продажи</p>
                                            <div class="w-add-result-line" style="width: 5%; background: #f00;">&nbsp;</div>
                                            <div class="w-add-result-number">5</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="w-footer">
                                <div class="b-button button-icon button-icon-add">Добавить виджет</div>									
                            </div>								
                        </div>
                        <div class="widget-block widget-add-hover"></div>
						<!-- End Add Widget-->
