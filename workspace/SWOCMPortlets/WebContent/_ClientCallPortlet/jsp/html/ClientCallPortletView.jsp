<%@page session="false" contentType="text/html" pageEncoding="UTF-8" import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.clientcall.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>                
<portlet:defineObjects/>
<div class="l-content-call"> 
						<!-- Start Call Content -->
						<div class="content-header">
							<a href="/wps/portal/swocm" class="b-link link-icon b-link-back">Назад к списку</a>
						</div>
						<div class="b-call-info">
							<div class="b-call-cancel">
								<a href="/wps/portal/swocm" class="link-icon"></a>
								<p class="call-time">01:01</p>								
							</div>
							<a href="#" class="b-link b-link-dashed">+7 (915) 765-43-21</a>
							<p class="call-info-text">
								<a href="#" class="b-link b-link-header">Технокард ЗАО</a>,<br/>
								Сеть салонов по продаже оргтехники. Ритейл. Микробизнес
							</p>
							<p class="call-info-text">
								<a href="#" class="b-link">Филатова Светлана</a>, бухгалтер;
								<a href="#" class="b-link link-icon link-icon-plus"></a><br/>
								Сеть салонов по продаже оргтехники. Ритейл. Микробизнес
							</p>
							<p class="call-info-text">
								Выручка компании: 50 млн. руб./год<br/>							
								~ 20 сотрудников</p>
							<div class="call-info-footer">
								<div class="call-info-column">
									<strong>Помощник продаж:</strong>									
									<a href="#" class="b-link link-icon link-icon-product"><span>Кредит «Доверие»</span></a>									
								</div>
								<div class="call-info-column">
									<strong>Сопутствующие продукты</strong>
									<a href="#" class="b-link link-icon link-icon-product"></a>
									<a href="#" class="b-link link-icon link-icon-product"></a>										
								</div>
							</div>
						</div>
						<div class="b-call-wrapper">
							<!-- Start Call Dialog -->						
							<div class="b-call-dialog">
								<div class="call-dialog-bg"></div>
								<p>Добрый день, это Александр Никитенков Сбербанк. Могу я поговорить со <strong>Светланой Филатовой</strong>?</p>
								<div class="b-call-dialog-link">
									Да, это Светлана 
									<a href="#" class="b-link link-icon link-icon-cancel"><span>Отмена</span></a>
								</div>
								<p>
									<strong>Светлана</strong>, я бы хотел познакомить вас с <strong>новым кредитным продуктом Сбербанка</strong>, который был специально разработан для Розничных сетей. Он позволяет компании легко увеличить оборотные средства и существенно экономить на выплате процентов. Вам было бы интересно узнать чуточку подробнее?
								</p>
							</div>							
							<!-- End Call Dialog -->
							<!-- Start Call Comments Step 1 -->
							<div class="b-call-comments">
								<div class="b-call-separator">
									<span></span>Комментарий
								</div>
								<div class="call-comments">
									<div class="call-comment-column">
										<div class="call-comment-answer call-comment-answer-no">Ctrl + <strong><u>Н</u>ет</strong></div>
										<p>
											<i>Предложить выслать презентацию.</i> Может быть я все же вышлю вам презентацию, что бы вы смогли посмотреть ее в свободное время?
										</p>
									</div>
									<div class="call-comment-column">
										<div class="call-comment-answer call-comment-answer-yes">Ctrl + <strong><u>Д</u>а</strong></div>
										<p>
											Продукт «Доверие» это совершенно особенный кредитый продукт он отлично подходит розничным сетям и компаниям с большим
										</p>
									</div>
									<div class="call-comment-column call-comment-links">
										<p><a href="#" class="b-link">Отмена</a></p>
										<p><a href="#" class="b-link b-link-double"><span>Выслать презентацию</span></a></p>
									</div>
									<div class="call-comments-bg"></div>
								</div>
							</div>							
							<!-- End Call Comments Step 1 -->
							<!-- Start Call Dialog Step 2 -->
							<div class="b-call-dialog b-call-dialog-add">
								<div class="b-call-dialog-link">
									Интересно 
									<a href="#" class="b-link link-icon link-icon-cancel"><span>Отмена</span></a>
								</div>
								<p>
									Я вышлю вам <strong>небольшую презентацию</strong>. Личный кабинет. ...рассказано о самом продукте и есть <strong>список всех необходимых документов</strong>.
								</p>
							</div>
							<!-- End Call Dialog Step 2 -->
							<!-- Start Call Send Block Step 2 -->
							<div class="b-call-send">
								<form>
									<p class="b-call-send-active">
										<label>e-mail</label>
										<input type="text" value="filatovaa@mail.ru" />
									</p>
									<p>
										<label>sms</label>
										<input type="text" value="+7 (915) 765-43-21" />
									</p>
								</form>
								<div class="b-call-send-link">
									<div class="b-button button-icon">Отправить<i></i></div>
									<a href="#" class="b-link">Отмена</a>									
								</div>
							</div>
							<!-- End Call Send Block Step 2 -->
							<!-- Start Call Comments Step 2 -->
							<div class="b-call-comments">
								<div class="b-call-separator">
									<span></span>Комментарий
								</div>
								<div class="call-comments">
									<div class="call-comment-column call-comment-column-double">										
										<p>
											Предлагаю встретиться и обсудить детали. Когда вам будет удобно?
										</p>
									</div>									
									<div class="call-comment-column call-comment-links">
										<p><a href="#" class="b-link">Отказ</a></p>
										<p><a href="#" class="b-link b-link-double"><span>Встреча</span></a></p>
									</div>
									<div class="call-comments-bg"></div>
								</div>
							</div>							
							<!-- End Call Comments Step 2 -->
							<!-- Start Call Dialog Step 3 -->
							<div class="b-call-dialog b-call-dialog-add">
								<div class="b-call-dialog-link">
									Встреча
									<a href="#" class="b-link link-icon link-icon-cancel"><span>Отмена</span></a>
								</div>
								<p>
									Предлагаю встретиться и обсудить детали. Когда вам будет удобно?
								</p>
								<p><strong>Мое свободное время</strong></p>
								<div class="b-call-my-time">
									<div class="call-time-header">
										<p>Понедельник</p>
										<p>Вторник</p>
										<p>Среда</p>
										<p>Четверг</p>
										<p>Пятница</p>
									</div>
									<div class="call-time-line call-time-line-first">
										<div class="call-time-ceil call-time-monday call-time-inactive">&nbsp;</div>
										<div class="call-time-ceil call-time-tuesday">&nbsp;</div>
										<div class="call-time-ceil call-time-wednesday">&nbsp;</div>
										<div class="call-time-ceil call-time-thursday">&nbsp;</div>
										<div class="call-time-ceil call-time-friday">&nbsp;</div>
									</div>
									<div class="call-time-line">
										<div class="call-time-ceil call-time-monday call-time-inactive">&nbsp;</div>
										<div class="call-time-ceil call-time-tuesday">&nbsp;</div>
										<div class="call-time-ceil call-time-wednesday call-time-ceil-free">&nbsp;</div>
										<div class="call-time-ceil call-time-thursday">&nbsp;</div>
										<div class="call-time-ceil call-time-friday">&nbsp;</div>
									</div>
									<div class="call-time-line">
										<div class="call-time-ceil call-time-monday call-time-inactive">&nbsp;</div>
										<div class="call-time-ceil call-time-tuesday">&nbsp;</div>
										<div class="call-time-ceil call-time-wednesday">&nbsp;</div>
										<div class="call-time-ceil call-time-thursday call-time-ceil-free">&nbsp;</div>
										<div class="call-time-ceil call-time-friday">&nbsp;</div>
									</div>
									<div class="call-time-line">
										<div class="call-time-ceil call-time-monday call-time-inactive">&nbsp;</div>
										<div class="call-time-ceil call-time-tuesday call-time-ceil-free">&nbsp;</div>
										<div class="call-time-ceil call-time-wednesday call-time-active">Технокард?</div>
										<div class="call-time-ceil call-time-thursday">&nbsp;</div>
										<div class="call-time-ceil call-time-friday call-time-ceil-free">&nbsp;</div>
									</div>
									<div class="call-time-line">
										<div class="call-time-ceil call-time-monday call-time-inactive">&nbsp;</div>
										<div class="call-time-ceil call-time-tuesday">&nbsp;</div>
										<div class="call-time-ceil call-time-wednesday">&nbsp;</div>
										<div class="call-time-ceil call-time-thursday call-time-ceil-free">&nbsp;</div>
										<div class="call-time-ceil call-time-friday call-time-ceil-free">&nbsp;</div>
									</div>
									<div class="call-time-line">
										<div class="call-time-ceil call-time-monday call-time-inactive">&nbsp;</div>
										<div class="call-time-ceil call-time-tuesday">&nbsp;</div>
										<div class="call-time-ceil call-time-wednesday">&nbsp;</div>
										<div class="call-time-ceil call-time-thursday">&nbsp;</div>
										<div class="call-time-ceil call-time-friday">&nbsp;</div>
									</div>
								</div>
							</div>
							<!-- End Call Dialog Step 3 -->
							<!-- Start Call Send Block Step 3 -->
							<div class="b-call-send">
								<form>
									<p class="b-call-send-active">
										<label>Адрес</label>
										<input type="text" value="ул. Строителей 3 оф. 43" />
									</p>									
								</form>
								<div class="b-call-send-link">
									<div class="b-button button-icon">Назначить встречу<i></i></div>
									<a href="#" class="b-link">Отмена</a>									
								</div>
							</div>
							<!-- End Call Send Block Step 3 -->
						</div>
						<!-- End Call Content -->
</div>