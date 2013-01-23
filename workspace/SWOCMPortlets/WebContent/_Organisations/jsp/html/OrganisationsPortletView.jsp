<%@page session="false" contentType="text/html" pageEncoding="UTF-8" import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.organisations.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>                
<portlet:defineObjects/>
 
						<!-- Start Organization Content -->
						<div class="l-organization">
							<div class="content-header">
								<h4>Организации</h4>
								<P class="organization-address">
									Территория: <a href="#" class="b-link">Москва, ЮЗАО</a>
								</p>
							</div>
							<div class="b-content b-organization">
								<div class="b-organization-button">
									<a href="#" class="b-button">Добавить организацию</a>
									<a href="index.html#tab-call" class="b-button">Создать список обзвона</a>
								</div>
								<div class="ui-tabs">
									<ul>
										<li><a href="#tabs-1">Клиенты моего ВСП</a></li>
										<li><a href="#tabs-2">Потенциальные клиенты</a></li>										
									</ul>
									<div id="tabs-1">
										<form action="#">
											<div class="b-organization-header">
												<p class="organization-category">
													<span>Район:</span>
													<a href="#" class="b-link link-category-close">Гагаринский</a>
													<a href="#" class="b-link link-category-close">Академический</a>
												</p>
												<p class="organization-category">
													<span>Класс:</span>
													<a href="#" class="b-link">Малый бизнес</a>
													<a href="#" class="b-link link-category-close">Микро-бизнес</a>
												</p>
												<div class="organization-form">
													<P><input type="text" value="Отрасль бизнес или сфера" /></p>
													<p>
														<input type="checkbox" id="selectOrganization" />
														<label for="selectOrganization">Скрыть организации с которыми был контакт за последний месяц</label>
													</p>
												</div>
											</div>
											<div class="organization-table-header">
												<div class="organization-th organization-th-name">Название А — Я</div>
												<div class="organization-th">выручка</div>
												<div class="organization-th">численность</div>
												<div class="organization-th">последний контакт</div>
											</div>
											<div class="b-organization-new">
												<p class="organization-new-header">Новые клиенты</p>
												<div>
													<div class="organization-line">
														<div class="organization-td organization-td-info">
															<input type="checkbox" class="organization-td-check" />
															<p>
																<a href="#" class="b-link">Троллмеха</a>
															</p>
															<p>
																Цифровая печать. Услуги. Микробизнес
															</p>
														</div>
														<div class="organization-td">40 млн</div>
														<div class="organization-td">20</div>
														<div class="organization-td">15 декабря 2012</div>
													</div>
													<div class="organization-line">
														<div class="organization-td organization-td-info">
															<input type="checkbox" class="organization-td-check" />
															<p>
																<a href="#" class="b-link">Троллмеха</a>
															</p>
															<p>
																Цифровая печать. Услуги. Микробизнес
															</p>
														</div>
														<div class="organization-td">40 млн</div>
														<div class="organization-td">20</div>
														<div class="organization-td">15 декабря 2012</div>
													</div>
													<div class="organization-line">
														<div class="organization-td organization-td-info">
															<input type="checkbox" class="organization-td-check" />
															<p>
																<a href="#" class="b-link">Троллмеха</a>
															</p>
															<p>
																Цифровая печать. Услуги. Микробизнес
															</p>
														</div>
														<div class="organization-td">40 млн</div>
														<div class="organization-td">20</div>
														<div class="organization-td">15 декабря 2012</div>
													</div>
												</div>
											</div>
											<div>
												<div class="organization-line">
													<div class="organization-td organization-td-info">
														<input type="checkbox" class="organization-td-check" />
														<p>
															<a href="#" class="b-link">Троллмеха</a>
														</p>
														<p>
															Цифровая печать. Услуги. Микробизнес
														</p>
													</div>
													<div class="organization-td">40 млн</div>
													<div class="organization-td">20</div>
													<div class="organization-td">15 декабря 2012</div>
												</div>
												<div class="organization-line">
													<div class="organization-td organization-td-info">
														<input type="checkbox" class="organization-td-check" />
														<p>
															<a href="#" class="b-link">Троллмеха</a>
														</p>
														<p>
															Цифровая печать. Услуги. Микробизнес
														</p>
													</div>
													<div class="organization-td">40 млн</div>
													<div class="organization-td">20</div>
													<div class="organization-td">15 декабря 2012</div>
												</div>
												<div class="organization-line">
													<div class="organization-td organization-td-info">
														<input type="checkbox" class="organization-td-check" />
														<p>
															<a href="#" class="b-link">Троллмеха</a>
														</p>
														<p>
															Цифровая печать. Услуги. Микробизнес
														</p>
													</div>
													<div class="organization-td">40 млн</div>
													<div class="organization-td">20</div>
													<div class="organization-td">15 декабря 2012</div>
												</div>
											</div>
										</form>
									</div>
									<div id="tabs-2">
										<form action="#">
											<div class="b-organization-header">
												<p class="organization-category">
													<span>Район:</span>
													<a href="#" class="b-link link-category-close">Гагаринский</a>
													<a href="#" class="b-link link-category-close">Академический</a>
												</p>
												<p class="organization-category">
													<span>Класс:</span>
													<a href="#" class="b-link">Малый бизнес</a>
													<a href="#" class="b-link link-category-close">Микро-бизнес</a>
												</p>
												<div class="organization-form">
													<P><input type="text" value="Отрасль бизнес или сфера" /></p>
													<p>
														<input type="checkbox" id="selectOrganization" />
														<label for="selectOrganization">Скрыть организации с которыми был контакт за последний месяц</label>
													</p>
												</div>
											</div>
											<div class="organization-table-header">
												<div class="organization-th organization-th-name">Название А — Я</div>
												<div class="organization-th">выручка</div>
												<div class="organization-th">численность</div>
												<div class="organization-th">последний контакт</div>
											</div>
											<div class="b-organization-new">
												<p class="organization-new-header">Новые клиенты</p>
												<div>
													<div class="organization-line">
														<div class="organization-td organization-td-info">
															<input type="checkbox" class="organization-td-check" />
															<p>
																<a href="#" class="b-link">Троллмеха</a>
															</p>
															<p>
																Цифровая печать. Услуги. Микробизнес
															</p>
														</div>
														<div class="organization-td">40 млн</div>
														<div class="organization-td">20</div>
														<div class="organization-td">15 декабря 2012</div>
													</div>
													<div class="organization-line">
														<div class="organization-td organization-td-info">
															<input type="checkbox" class="organization-td-check" />
															<p>
																<a href="#" class="b-link">Троллмеха</a>
															</p>
															<p>
																Цифровая печать. Услуги. Микробизнес
															</p>
														</div>
														<div class="organization-td">40 млн</div>
														<div class="organization-td">20</div>
														<div class="organization-td">15 декабря 2012</div>
													</div>
													<div class="organization-line">
														<div class="organization-td organization-td-info">
															<input type="checkbox" class="organization-td-check" />
															<p>
																<a href="#" class="b-link">Троллмеха</a>
															</p>
															<p>
																Цифровая печать. Услуги. Микробизнес
															</p>
														</div>
														<div class="organization-td">40 млн</div>
														<div class="organization-td">20</div>
														<div class="organization-td">15 декабря 2012</div>
													</div>
												</div>
											</div>
											<div>
												<div class="organization-line">
													<div class="organization-td organization-td-info">
														<input type="checkbox" class="organization-td-check" />
														<p>
															<a href="#" class="b-link">Троллмеха</a>
														</p>
														<p>
															Цифровая печать. Услуги. Микробизнес
														</p>
													</div>
													<div class="organization-td">40 млн</div>
													<div class="organization-td">20</div>
													<div class="organization-td">15 декабря 2012</div>
												</div>
												<div class="organization-line">
													<div class="organization-td organization-td-info">
														<input type="checkbox" class="organization-td-check" />
														<p>
															<a href="#" class="b-link">Троллмеха</a>
														</p>
														<p>
															Цифровая печать. Услуги. Микробизнес
														</p>
													</div>
													<div class="organization-td">40 млн</div>
													<div class="organization-td">20</div>
													<div class="organization-td">15 декабря 2012</div>
												</div>
												<div class="organization-line">
													<div class="organization-td organization-td-info">
														<input type="checkbox" class="organization-td-check" />
														<p>
															<a href="#" class="b-link">Троллмеха</a>
														</p>
														<p>
															Цифровая печать. Услуги. Микробизнес
														</p>
													</div>
													<div class="organization-td">40 млн</div>
													<div class="organization-td">20</div>
													<div class="organization-td">15 декабря 2012</div>
												</div>
											</div>
										</form>
									</div>								
								</div>
								<div class="b-organization-button">
									<a href="#" class="b-button">Добавить организацию</a>
									<a href="index.html#tab-call" class="b-button">Создать список обзвона</a>
								</div>
							</div>
						</div>
						<!-- End Organization Content -->
