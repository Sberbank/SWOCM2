<%@page session="false" contentType="text/html" pageEncoding="UTF-8" import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.monitoring.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>                
<portlet:defineObjects/>
 
    <!-- Start Study Content -->
    <div class="l-monitoring">
        <div class="content-header">
            <h4>Мониторинг Клиентской Базы</h4>
        </div>
        <div class="b-content b-monitoring">
            <div class="b-rating monitoring-rate-green" style="width: 75%; left: 25%;">
                <p class="monitoring-rate-text">47</p>
            </div>
            <div class="b-rating monitoring-rate-orange" style="width: 20%; left: 5%;">
                <p class="monitoring-rate-text">12</p>
            </div>
            <div class="b-rating  monitoring-rate-red" style="width: 5%">
                <p class="monitoring-rate-text">3</p>
            </div>
            <div class="monitoring-red">
                <p class="monitoring-header">Красная зона</p>
                <div class="monitoring-info">
                    <div class="monitoring-line">
                        <a href="#" class="b-link">Бушатов, ИП</a>
                        <p class="monitoring-text">
                            <span class="monitoring-text-item inline-block">Задолженность</span>
                            <span class="monitoring-text-item monitoring-price inline-block">12 000 руб.</span>
                            Просрочено на 2 недели
                        </p>
                        <div class="monitoring-call"></div>
                    </div>
                    <div class="monitoring-line">
                        <a href="#" class="b-link">Бушатов, ИП</a>
                        <p class="monitoring-text">
                            <span class="monitoring-text-item inline-block">Задолженность</span>
                            <span class="monitoring-text-item monitoring-price inline-block">112 000 руб.</span>
                            Просрочено на 3 недели
                        </p>
                        <div class="monitoring-call"></div>
                    </div>
                    <div class="monitoring-line">
                        <a href="#" class="b-link">Бушатов, ИП</a>
                        <p class="monitoring-text">
                            <span class="monitoring-text-item inline-block">Задолженность</span>
                            <span class="monitoring-text-item monitoring-price inline-block">1200 руб.</span>
                            Просрочено на 4 недели
                        </p>
                        <div class="monitoring-call"></div>
                    </div>
                </div>
            </div>
            <div class="monitoring-orange">
                <p class="monitoring-header">Оранжевая зона</p>
                <div class="monitoring-info">
                    <div class="monitoring-line">
                        <a href="#" class="b-link">Технокард, ЗАО</a>
                        <p class="monitoring-text">
                            <span class="monitoring-text-item inline-block">Истекает договор</span>
                            <span class="monitoring-text-item monitoring-date inline-block">15 декабря 2012</span>
                            <br/>№123457 РКО Расчетно кассовое обслуживание
                        </p>
                        <div class="monitoring-call"></div>
                    </div>
                    <div class="monitoring-line">
                        <a href="#" class="b-link">Технокард, ЗАО</a>
                        <p class="monitoring-text">
                            <span class="monitoring-text-item inline-block">Истекает договор</span>
                            <span class="monitoring-text-item monitoring-date inline-block">15 декабря 2012</span>
                            <br/>№123457 РКО Расчетно кассовое обслуживание
                        </p>
                        <div class="monitoring-call"></div>
                    </div>
                    <div class="monitoring-line">
                        <a href="#" class="b-link">Технокард, ЗАО</a>
                        <p class="monitoring-text">
                            <span class="monitoring-text-item inline-block">Не поступила оплата</span>
                            <span class="monitoring-text-item monitoring-date inline-block">15 декабря 2012</span>
                            <br/>№123457 РКО Расчетно кассовое обслуживание
                        </p>
                        <div class="monitoring-call"></div>
                    </div>
                </div>
            </div>
            <div class="monitoring-green">
                <p class="monitoring-header">Зеленая зона</p>
                <div class="monitoring-info">
                    <div class="monitoring-line">
                        <a href="#" class="b-link">Технокард, ЗАО</a>
                        <p class="monitoring-text">
                            <span class="monitoring-text-item inline-block">День рождения</span>
                            <span class="monitoring-text-item monitoring-date inline-block">15 декабря 2012</span>
                            <br/><a href="#" class="b-link">Филатова Светлана Владимировна</a>
                        </p>
                        <div class="monitoring-call"></div>
                    </div>
                    <div class="monitoring-line">
                        <a href="#" class="b-link">Технокард, ЗАО</a>
                        <p class="monitoring-text">
                            <span class="monitoring-text-item inline-block">Истекает договор</span>
                            <span class="monitoring-text-item monitoring-date inline-block">15 декабря 2013</span>
                            <br/>№123457 РКО Расчетно кассовое обслуживание
                        </p>
                        <div class="monitoring-call"></div>
                    </div>
                    <div class="monitoring-line">
                        <a href="#" class="b-link">Технокард, ЗАО</a>
                        <p class="monitoring-text">
                            <span class="monitoring-text-item inline-block">Истекает договор</span>
                            <span class="monitoring-text-item monitoring-date inline-block">15 ноября 2013</span>
                            <br/>№123457 РКО Расчетно кассовое обслуживание
                        </p>
                        <div class="monitoring-call"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Organization Content -->
