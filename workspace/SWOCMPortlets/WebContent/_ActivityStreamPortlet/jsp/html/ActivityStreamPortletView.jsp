<%@page 
	session="false" 
	contentType="text/html"
	pageEncoding="UTF-8"
	import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.as.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>
<portlet:defineObjects/>
						<!-- Start Lenta Content -->
						<div class="content-header">
							<h4>Лента активности сегодня</h4>
							<ul class="lenta-nav">
								<li class="lenta-nav-item lenta-nav-item-active"><p>Все</p><span>&nbsp;</span></li>				
								<li class="lenta-nav-item"><p>Задачи</p><span>&nbsp;</span></li>	
								<li class="lenta-nav-item"><p>Звонки</p><span>&nbsp;</span></li>	
								<li class="lenta-nav-item"><p>Встречи</p><span>&nbsp;</span></li>	
								<li class="lenta-nav-item"><p>Общение</p><span>&nbsp;</span></li>	
								<li class="lenta-nav-item"><p>Документы</p><span>&nbsp;</span></li>	
							</ul>
						</div>
						<div class="wrapper-lenta-tasks">
							<!-- Start Lenta Task-->
							<div class="b-lenta-task lenta-task-important">
								<div class="lenta-task-header">
									<p>Никитенков А.С.</p>
									<h4>Встреча с ИП Фроловым В.Н.</h4>
								</div>
								<div class="lenta-task-content">
									<p>
										Заполнение заявки в АС по Кредиту <a href="#">Доверие</a>, со всеми документами
									</p>
								</div>
								<div class="lenta-task-footer">
									<div class="b-button b-button-select">
										Принять
										<span class="select-list-icon">&nbsp;</span>
									</div>
									<div class="b-button">Занят</div>
									<div class="b-icon icon-talk">&nbsp;</div>
								</div>
							</div>
							<!-- End Lenta Task-->
							<!-- Start Lenta Task-->
							<div class="b-lenta-task lenta-task-important lenta-task-text-hide">
								<div class="lenta-task-header">
									<p>Герман Греф</p>
									<h4>Концепция «Офис будущего</h4>
								</div>
								<div class="lenta-task-content">
									<p>
										Уважаемые коллеги!
									</p>
									<p>
										Приглашаю Вас принять участие в разработке концепции «Офиса будущего».
									</p>
									<p>
										В следующем году мы планируем открыть в Москве «<a href="#">Офис будущего</a>».
									</p>
									<p>
										Каким может быть офис Сбербанка, например, через 5 лет? Какие услуги будет предоставлять банк? В какой форме?  Для чего люди будут приходить в банк, если у каждого будет возможность дистанционно управлять своими средствами с помощью интернет - банка и мобильного банка?
									</p>
									<p>
										Давайте строить будущее вместе! Присылайте свои идеи! Все сотрудники, чьи идеи найдут воплощение в проекте «Офиса будущего» получат денежное вознаграждение.
									</p>
									<p>
										Приз за лучшую идею концепции офиса будущего – 1 000 000 рублей.
									</p>
									<p>
										<i>Герман Греф</i>
									</p>
									<div class="lenta-task-content-hide"></div>
								</div>
								<div class="b-link-add">
									<a href="#" class="b-link b-link-dashed">Текст полностью</a>
								</div>
								<div class="lenta-task-footer lenta-task-footer-add">
									<a href="#" class="b-link link-icon link-icon-cancel"><span>Отмена</span></a>
									<textarea>
										Я думаю, что офис будущего это большие демонстрационные стенды того что можно приобрести с помощью банка, например в кредит
									</textarea>
									<div class="b-button">Отправить</div>
								</div>
								<div class="lenta-task-footer">								
									<div class="b-button b-button-select">
										Предложить идею
										<span class="select-list-icon">&nbsp;</span>
									</div>
								</div>
							</div>
							<!-- End Lenta Task-->
							<!-- Start Lenta Task, when full text visible -->
							<div class="b-lenta-task lenta-task-important">
								<div class="lenta-task-header">
									<p>Герман Греф</p>
									<h4>Концепция «Офис будущего</h4>
								</div>
								<div class="lenta-task-content">
									<p>
										Уважаемые коллеги!
									</p>
									<p>
										Приглашаю Вас принять участие в разработке концепции «<a href="#">Офис будущего</a>».
									</p>
									<p>
										В следующем году мы планируем открыть в Москве «Офис будущего».
									</p>
									<p>
										Каким может быть офис Сбербанка, например, через 5 лет? Какие услуги будет предоставлять банк? В какой форме?  Для чего люди будут приходить в банк, если у каждого будет возможность дистанционно управлять своими средствами с помощью интернет - банка и мобильного банка?
									</p>
									<p>
										Давайте строить будущее вместе! Присылайте свои идеи! Все сотрудники, чьи идеи найдут воплощение в проекте «Офиса будущего» получат денежное вознаграждение.
									</p>
									<p>
										Приз за лучшую идею концепции офиса будущего – 1 000 000 рублей.
									</p>
									<p>
										<i>Герман Греф</i>
									</p>
									<div class="lenta-task-content-hide"></div>
								</div>
								<div class="b-link-add">
									<span class="b-link-add-text">Текст полностью</span>
								</div>
								<div class="lenta-task-footer lenta-task-footer-add">
									<a href="#" class="b-link link-icon link-icon-cancel"><span>Отмена</span></a>
									<textarea>
										Я думаю, что офис будущего это большие демонстрационные стенды того что можно приобрести с помощью банка, например в кредит
									</textarea>
									<div class="b-button">Отправить</div>
								</div>
								<div class="lenta-task-footer">								
									<div class="b-button b-button-select">
										Предложить идею
										<span class="select-list-icon">&nbsp;</span>
									</div>
								</div>
							</div>
							<!-- End Lenta Task-->
							<!-- Start Lenta Task, when textarea is visible-->
							<div class="b-lenta-task lenta-task-important lenta-task-answer">
								<div class="lenta-task-header">
									<p>Герман Греф</p>
									<h4>Концепция «Офис будущего</h4>
								</div>
								<div class="lenta-task-content">
									<p>
										Уважаемые коллеги!
									</p>
									<p>
										Приглашаю Вас принять участие в разработке концепции «<a href="#">Офис будущего</a>».
									</p>
									<p>
										В следующем году мы планируем открыть в Москве «Офис будущего».
									</p>
									<p>
										Каким может быть офис Сбербанка, например, через 5 лет? Какие услуги будет предоставлять банк? В какой форме?  Для чего люди будут приходить в банк, если у каждого будет возможность дистанционно управлять своими средствами с помощью интернет - банка и мобильного банка?
									</p>
									<p>
										Давайте строить будущее вместе! Присылайте свои идеи! Все сотрудники, чьи идеи найдут воплощение в проекте «Офиса будущего» получат денежное вознаграждение.
									</p>
									<p>
										Приз за лучшую идею концепции офиса будущего – 1 000 000 рублей.
									</p>
									<p>
										<i>Герман Греф</i>
									</p>
									<div class="lenta-task-content-hide"></div>
								</div>
								<div class="b-link-add">
									<span class="b-link-add-text">Текст полностью</span>
								</div>
								<div class="lenta-task-footer lenta-task-footer-add">
									<a href="#" class="b-link link-icon link-icon-cancel"><span>Отмена</span></a>
									<div class="b-textarea">
										<textarea>Я думаю, что офис будущего это большие демонстрационные стенды того что можно приобрести с помощью банка, например в кредит</textarea>
									</div>
									<div class="b-button">Отправить</div>
								</div>
								<div class="lenta-task-footer">								
									<div class="b-button b-button-select">
										Предложить идею
										<span class="select-list-icon">&nbsp;</span>
									</div>
								</div>
							</div>
							<!-- End Lenta Task -->
							<!-- Start Lenta Task Document-->
							<div class="b-lenta-task lenta-task-document">
								<div class="lenta-task-header">
									<p>Никитенков А.С.</p>
									<h4>О продлении срока действия кредитных договоров для малого бизнеса</h4>
								</div>
								<div class="lenta-task-footer">
									<div class="b-button">Ознакомился</div>
								</div>
							</div>
							<!-- End Lenta Task Document-->
							<!-- Start Lenta Task Call List-->
							<div class="b-lenta-task lenta-task-call lenta-task-call-info">
								<div class="lenta-task-call-info-header">Кредит Доверие с 21 окт</div>
								<div class="lenta-call-content">
									<div class="lenta-call-list lenta-call-list-active">									
										<div class="lenta-call-number">
											<a href="#" class="b-link b-link-dashed">+7 (915) 765-43-21</a>
										</div>
										<p class="lenta-call-header">
											<strong>Край раздолий ЗАО</strong>, Филипп Эдмундович
										</p>
										<p class="lenta-call-text">
											Задолженность за август
										</p>
										<a href="/wps/portal/swocm/calls" class="lenta-call-icon"></a>
									</div>
									<div class="lenta-call-list">									
										<p class="lenta-call-header">
											<strong>Планета цветов ОАО</strong>, Крупчик Алиса
										</p>
										<p class="lenta-call-text">
											Погашение задложенности
										</p>
										<a href="/wps/portal/swocm/calls" class="lenta-call-icon"></a>
									</div>
									<div class="lenta-call-list">									
										<p class="lenta-call-header">
											<strong>Альфавиза</strong>, Анна Владимировна Кожевникова
										</p>
										<p class="lenta-call-text">
											Выслать КП
										</p>
										<a href="/wps/portal/swocm/calls" class="lenta-call-icon"></a>
									</div>
								</div>
								<div class="lenta-task-footer">
									<div class="b-button">Добавить звонок</div>
								</div>
							</div>
							<!-- End Lenta Task Call List-->
							<!-- Start Lenta Task Default-->
							<div class="b-lenta-task b-lenta-task-item">
								<div class="lenta-task-header">
									<h4>Подготовить раздаточные материалы к выезду</h4>
								</div>
								<div class="lenta-task-content">
									<p>
										Совместно с Впичалькина А.А.
									</p>
								</div>
								<div class="lenta-task-footer">
									<div class="b-button">Готово</div>
								</div>
							</div>
							<!-- End Lenta Task Default -->
							<!-- Start Lenta Task Call List-->
							<div class="b-lenta-task lenta-task-call">
								<div class="lenta-call-content">
									<div class="lenta-call-list">									
										<p class="lenta-call-header">
											<strong>Край раздолий ЗАО</strong>, Филипп Эдмундович
										</p>
										<p class="lenta-call-text">
											Задолженность за август
										</p>
										<a href="/wps/portal/swocm/calls" class="lenta-call-icon"></a>
									</div>
									<div class="lenta-call-list">									
										<p class="lenta-call-header">
											<strong>Планета цветов ОАО</strong>, Крупчик Алиса
										</p>
										<p class="lenta-call-text">
											Погашение задложенности
										</p>
										<a href="/wps/portal/swocm/calls" class="lenta-call-icon"></a>
									</div>
									<div class="lenta-call-list">									
										<p class="lenta-call-header">
											<strong>Альфавиза</strong>, Анна Владимировна Кожевникова
										</p>
										<p class="lenta-call-text">
											Выслать КП
										</p>
										<a href="/wps/portal/swocm/calls" class="lenta-call-icon"></a>
									</div>
								</div>
								<div class="lenta-task-footer">
									<div class="b-button">Добавить звонок</div>
								</div>
							</div>
							<!-- End Lenta Task Call List-->							
						</div>
						<div class="content-footer">
							<p class="lenta-done-header">Сделано за сегодня</p>
							<div class="b-lenta-done">
								<!-- Start Lenta Task Document-->
								<div class="b-lenta-task lenta-task-document">
									<div class="lenta-task-header">
										<p>Никитенков А.С.</p>
										<h4>О продлении срока действия кредитных договоров для малого бизнеса</h4>
									</div>
									<div class="lenta-task-footer">
										<div class="b-button">Ознакомился</div>
									</div>
								</div>
								<!-- End Lenta Task Document-->
								<!-- Start Lenta Task Call List-->
								<div class="b-lenta-task lenta-task-call">
									<div class="lenta-call-content">
										<div class="lenta-call-list">									
											<p class="lenta-call-header">
												<strong>Край раздолий ЗАО</strong>, Филипп Эдмундович
											</p>
											<p class="lenta-call-text">
												Задолженность за август
											</p>											
											<div class="lenta-call-icon">Отказ</div>
										</div>
										<div class="lenta-call-list">									
											<p class="lenta-call-header">
												<strong>Планета цветов ОАО</strong>, Крупчик Алиса
											</p>
											<p class="lenta-call-text">
												Погашение задложенности
											</p>
											<div class="lenta-call-icon">Отказ</div>
										</div>
										<div class="lenta-call-list">									
											<p class="lenta-call-header">
												<strong>Альфавиза</strong>, Анна Владимировна Кожевникова
											</p>
											<p class="lenta-call-text">
												Выслать КП
											</p>
											<div class="lenta-call-icon">Отказ</div>
										</div>
									</div>
									<div class="lenta-task-footer">
										<div class="b-button">Добавить звонок</div>
									</div>
								</div>
								<!-- End Lenta Task Call List-->			
							</div>
							<div class="lenta-done-day">
								<P><a href="#" class="b-link"><strong>21 октября</strong> &mdash; Вчера</a></p>
								<p><a href="#" class="b-link"><strong>20 октября</strong></a></p>
							</div>
						</div>
						<!-- End Lenta Content -->