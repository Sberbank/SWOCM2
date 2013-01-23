<%@page session="false" contentType="text/html" pageEncoding="UTF-8" import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.sell.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>                
<portlet:defineObjects/>

						<!-- Start Sell Content -->
						<div class="l-sell">
							<div class="content-header">
								<h4>Мои продажи</h4>								
							</div>
							<div class="b-content b-sell">
								<div class="b-rating b-rating-all">
                                    <p class="rating-text">12</p>
								</div>
								<div class="b-rating" style="width: 25%">
                                    <p class="rating-text">4</p>
								</div>
								<!-- Start Sell Tabs  -->
								<div class="ui-tabs">
									<ul>
										<li><a href="#tabs-sell-product">По продуктам</a></li>
										<li><a href="#tabs-sell-clients">По клиентам</a></li>
									</ul>
									<!-- Start Sell Tab Product Content  -->
									<div id="tabs-sell-product">
										<div class="b-collapse collapse-show">
											<h3 class="collapse-header">
												<span>Кредит «Доверие»</span>
												<i><b>1/1</b> - план выполнен</i>
											</h3>											
											<div class="collapse-inner">
												<div class="sell-collapse-title">
													<div class="sell-collapse-title-header">
														<h5>Активность по продаже</h5>
														<a href="#" class="b-link b-link-dashed"><span>Холодные звонки, 24 в очереди</span></a>
													</div>				
												</div>
												<div class="b-sell-slider">
													<div class="b-sell-header">
														<p>Интерес</p>
														<p>Презентация</p>
														<p>Встреча</p>
														<p>Заявка</p>
														<p>Договор</p>
														<p>Сделка</p>
													</div>
													<div class="b-sell-slider-all">
														<div class="sell-slider-item sell-slider-item-first"></div>
														<div class="sell-slider-item sell-slider-item-select"></div>
														<div class="sell-slider-item sell-slider-item-select"></div>
														<div class="sell-slider-item sell-slider-item-select"></div>
														<div class="sell-slider-item sell-slider-item-select"></div>
														<div class="sell-slider-item sell-slider-item-last"></div>
													</div>
													<div class="sell-slider-indicator sell-slider-indicator-left" style="left: 16%;"></div>
													<div class="sell-slider-indicator sell-slider-indicator-right" style="right: 17%;"></div>
													<a href="#" class="b-link b-link-dashed link-sell-all">Выбрать всё</a>
												</div>
												<div class="sell-client-info">
													<div class="b-collapse sell-collapse-inner collapse-show">
														<h3 class="collapse-header">
															<span>Технокард ЗАО</span>
															<small class="sell-header-phone">+916 34 567-32-34</small>
														</h3>											
														<div class="collapse-inner">
															<p>
																Сеть салонов по продаже оргтехники. Ритейл. Микробизнес <a href="#" class="b-link">Филатова Светлана Юрьевна</a>, бухгалтер
															</p>
															<p class="sell-text-last-contact">
																Последний контакт был 2 дня назад. <a href="#" class="b-link">Выслать презентацию</a>
															</p>
														</div>
														<div class="sell-client-info-inner">
															<div class="sell-client-info-line">
																<div class="sell-client-info-item sell-client-info-done sell-client-info-first"></div>
																<div class="sell-client-info-item sell-client-info-done"></div>
																<div class="sell-client-info-item sell-client-info-active"></div>
																<div class="sell-client-info-item"></div>
																<div class="sell-client-info-item"></div>
																<div class="sell-client-info-item sell-client-info-last"></div>
															</div>
															<div class="sell-client-info-header">
																<p>Интерес</p>
																<p>Презентация</p>
																<p><a href="#" class="b-link">Встреча</a></p>
																<p>Заявка</p>
																<p>Договор</p>
																<p>Сделка</p>
															</div>
															<div class="sell-client-icon sell-client-icon-call"></div>
														</div>
														<div class="collapse-inner">
															<div class="sell-other-products">
																<i>Другие продажи</i>
																<a href="#" class="b-link">Зарплатный проект</a>
                                                                <div class="sell-other-product-line">
                                                                    <div class="sell-other-product-done" style="width: 37%;"></div>
                                                                </div>
															</div>
															<a href="#" class="b-link">Карточка клиента</a>
														</div>
													</div>													
												</div>
												<div class="sell-client-info">
													<div class="b-collapse sell-collapse-inner">
														<h3 class="collapse-header">
															<span>Технокард ЗАО</span>
															<small class="sell-header-phone">+916 34 567-32-34</small>
														</h3>											
														<div class="collapse-inner">
															<p>
																Сеть салонов по продаже оргтехники. Ритейл. Микробизнес <a href="#" class="b-link">Филатова Светлана Юрьевна</a>, бухгалтер
															</p>
															<p class="sell-text-last-contact">
																Последний контакт был 2 дня назад. <a href="#" class="b-link">Выслать презентацию</a>
															</p>
														</div>
														<div class="sell-client-info-inner">
															<div class="sell-client-info-line">
																<div class="sell-client-info-item sell-client-info-done sell-client-info-first"></div>
																<div class="sell-client-info-item sell-client-info-done"></div>
																<div class="sell-client-info-item sell-client-info-active"></div>
																<div class="sell-client-info-item"></div>
																<div class="sell-client-info-item"></div>
																<div class="sell-client-info-item sell-client-info-last"></div>
															</div>
															<div class="sell-client-info-header">
																<p>Интерес</p>
																<p>Презентация</p>
																<p><a href="#" class="b-link">Встреча</a></p>
																<p>Заявка</p>
																<p>
                                                                    Договор<br/>12 октября
                                                                </p>
																<p>Сделка</p>
															</div>
															<div class="sell-client-icon sell-client-icon-call"></div>
														</div>
                                                        <div class="collapse-inner">
                                                            <div class="sell-other-products">
                                                                <i>Другие продажи</i>
                                                                <a href="#" class="b-link">Зарплатный проект</a>
                                                                <div class="sell-other-product-line">
                                                                    <div class="sell-other-product-done" style="width: 37%;"></div>
                                                                </div>
                                                            </div>
                                                            <a href="#" class="b-link">Карточка клиента</a>
                                                        </div>
													</div>													
												</div>
												<a href="#" class="b-link b-link-dashed link-sell-all-cansel"><span>Показать отказы</span></a>
											</div>
										</div>
										<div class="b-collapse">
											<h3 class="collapse-header">
												<span>Расчетный счет/ЕДБО</span>
												<i><b>1/1</b> - план выполнен</i>
											</h3>											
											<div class="collapse-inner">
												
											</div>
										</div>
										<div class="b-collapse">
											<h3 class="collapse-header">
												<span>Клиент-Сбербанк</span>
												<i><b>1/1</b> - план выполнен</i>
											</h3>											
											<div class="collapse-inner">
												
											</div>
										</div>
									</div>
									<!-- End Sell Tab Product Content  -->
									<!-- Start Sell Tab Client Content  -->
									<div id="tabs-sell-clients">
										<div class="organization-table-header">
											<div class="organization-th organization-th-name">Название А — Я</div>											
											<div class="organization-th">последний контакт</div>
											<div class="organization-th">Количество продуктов</div>
										</div>
                                        <div class="organization-td-line">
                                            <div class="sell-client-info">
                                                <h3>
                                                    <a href="#" class="b-link b-link-dashed"><span>Альфавиза</span></a>
                                                    <i class="inline-block">Вчера, 21 октября</i>
                                                </h3>
                                                <div class="sell-client-icon sell-client-icon-call"></div>
                                                <div class="b-sell-client-tab">
                                                    <p class="sell-client-tab-header">Расчетный счет / ЕДБО</p>
                                                    <div class="sell-client-info-inner">
                                                        <div class="sell-client-info-line">
                                                            <div class="sell-client-info-item sell-client-info-done sell-client-info-first"></div>
                                                            <div class="sell-client-info-item sell-client-info-done"></div>
                                                            <div class="sell-client-info-item sell-client-info-done "></div>
                                                            <div class="sell-client-info-item sell-client-info-done"></div>
                                                            <div class="sell-client-info-item sell-client-info-done"></div>
                                                            <div class="sell-client-info-item sell-client-info-active sell-client-info-last"></div>
                                                        </div>
                                                        <div class="sell-client-info-header">
                                                            <p>Интерес</p>
                                                            <p>Презентация</p>
                                                            <p>Встреча</p>
                                                            <p>Заявка</p>
                                                            <p>Договор</p>
                                                            <p><a href="#" class="b-link">Сделка!</a></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                         </div>
									</div>
									<!-- End Sell Tab Client Content  -->
								</div>
								<!-- End Sell Content -->
							</div>