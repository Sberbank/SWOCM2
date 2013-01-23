<%@page session="false" contentType="text/html" pageEncoding="UTF-8" import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.findclients.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>                
<portlet:defineObjects/>
 
						<!-- Start Find Clients Content -->
						<div class="l-find-clients">
							<div class="content-header">
								<h4>Поиск клиентов</h4>								
							</div>
							<div class="b-content b-find-clients">
								<div class="b-rating b-rating-all">
                                    <p class="rating-text">50</p>
								</div>
								<div class="b-rating" style="width: 37%">
                                    <p class="rating-text">22 презентации выслано</p>
								</div>
								<div class="b-find-link">
									<a href="find-clients-form-list.html" class="b-link link-find-start">Отбор потенциальных клиентов</a>
									<div class="find-link-step"></div>
									<a href="find-clients-call-list.html" class="b-link">Холодный обзвон</a>
									<div class="find-link-step"></div>
									<a href="#" class="b-link">Внесение в базу ВСП</a>
								</div>
								<div class="b-find-form-list-call">
									<a href="find-clients-form-list.html" class="b-link b-link-dashed link-find-list-call"><span>Сформировать список обзвона вручную<span></a>
								</div>
								<div class="b-find-product">
									<div class="find-clients-product">
										<div class="find-product-inner">
											<div class="find-product-rating">2/1</div>
											<div class="find-product-content">
												<a href="#" class="b-link">Кредит Доверие</a>
												<p>Рекомендация: 34 звонка</p>											
												<p><a href="#" class="b-link">15 звонков запланировано</a> рекомендуется добавить еще 18.</p>
											</div>
											<a href="#" class="b-button">Добавить звонки</a>
										</div>
									</div>
									<div class="find-clients-product">
										<div class="find-product-inner">
											<div class="find-product-rating">8/1</div>
											<div class="find-product-content">
												<a href="#" class="b-link">Кредит Доверие</a>
												<p>Рекомендация: 34 звонка</p>											
												<p class="text-error">Ни одного звонка не запланировано</p>
											</div>
											<a href="#" class="b-button">Добавить звонки</a>
										</div>
									</div>
									<div class="find-clients-product">
										<div class="find-product-inner">
											<div class="find-product-rating">2/1</div>
											<div class="find-product-content">
												<a href="#" class="b-link">Кредит Доверие</a>
												<p>Рекомендация: 34 звонка</p>											
												<p><a href="#" class="b-link">15 звонков запланировано</a> рекомендуется добавить еще 18.</p>
											</div>
											<a href="#" class="b-button">Добавить звонки</a>
										</div>
									</div>
								</div>
								<h2 class="find-clients-header">Холодные звонки на эту неделю</h2>
								<div class="b-find-client-planning">
									<div class="find-client-planning-header">
										<div class="find-client-planning-th">
											<p>Понедельник</p>
										</div>
										<div class="find-client-planning-th">
											<p>Вторник</p>
										</div>
										<div class="find-client-planning-th">
											<p>Среда</p>
										</div>
										<div class="find-client-planning-th">
											<p>Четверг</p>
										</div>
										<div class="find-client-planning-th find-client-planning-th-last find-client-planning-th-today">
											<p>Пятница</p>
										</div>
									</div>
									<div class="find-client-planning">
										<div class="find-client-planning-td">
											<div class="find-client-planning-inner">
												<div class="find-client-planning-task" style="height: 100px; top: 30px;"></div>
											</div>
										</div>
										<div class="find-client-planning-td">
											<div class="find-client-planning-inner">
												<div class="find-client-planning-task" style="height: 50px; top: 20px;"></div>
											</div>
										</div>
										<div class="find-client-planning-td">
											<div class="find-client-planning-inner">
												<div class="find-client-planning-task" style="height: 50px; top: 10px;"></div>
												<div class="find-client-planning-task" style="height: 50px; top: 80px;"></div>
											</div>
										</div>
										<div class="find-client-planning-td">
											<div class="find-client-planning-inner">
												<div class="find-client-planning-task" style="height: 50px; top: 0px;"></div>
											</div>
										</div>
										<div class="find-client-planning-td">
											<div class="find-client-planning-inner">
												<div class="find-client-planning-now" style="top: 33px;"></div>
												<div class="find-client-planning-task" style="height: 50px; top: 0;"></div>
												<div class="find-client-planning-task" style="height: 50px; top: 130px;"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Find Clients Content -->
