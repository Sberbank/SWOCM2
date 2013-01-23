<%@page session="false" contentType="text/html" pageEncoding="UTF-8" import="java.util.*,javax.portlet.*,ru.sbrf.swocm.portlets.study.study.*" %>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet"%>                
<portlet:defineObjects/>

<!-- Start Study Content -->
<div class="l-study">
	<div class="content-header">
		<h4>Мой прогресс обучения</h4>
	</div>
	<div class="b-content b-study">
		<div class="b-rating study-rating" style="width: 37%">
                              <p class="rating-text">37%</p>
		</div>
		<div class="b-collapse collapse-show">
			<h3 class="collapse-header"><span>Ведение переговоров</span></h3>
			<div class="study-progress">
				<div class="study-progress-bg">&nbsp;</div>
				<div class="study-progress-current" style="width: 25%;">
					<p class="study-progress-text">25%</p>
				</div>
			</div>
			<div class="collapse-inner">
				<ol class="study-list">
					<li class="study-list-item">
						<a href="#" class="b-link">Стандарты Сбербанка по ведению переговоров</a>
						<p>Внутренние курсы. Сертификационная подготовка.</p>
						<div class="study-list-button">
							<p>в процессе</p>
						</div>
					</li>
					<li class="study-list-item">
						<a href="#" class="b-link">Стандарты Сбербанка по ведению переговоров</a>
						<p>Внутренние курсы. Сертификационная подготовка.</p>
						<div class="study-list-button">
							<a href="#" class="b-button">Начать</a>
						</div>
					</li>
				</ol>
			</div>
		</div>
		<div class="b-collapse collapse-show">
			<h3 class="collapse-header"><span>Сертификация по банковским продуктам</span></h3>
			<div class="study-progress">
				<div class="study-progress-bg">&nbsp;</div>
				<div class="study-progress-current" style="width: 32%;">
					<p class="study-progress-text">32%</p>
				</div>
			</div>
			<div class="collapse-inner">
				<ol class="study-list">
					<li class="study-list-item">
						<a href="#" class="b-link">Стандарты Сбербанка по ведению переговоров</a>
						<p>Внутренние курсы. Сертификационная подготовка.</p>
						<div class="study-list-button">
							<p class="study-accepted">Аттестован!</p>
						</div>
					</li>
					<li class="study-list-item">
						<a href="#" class="b-link">Стандарты Сбербанка по ведению переговоров</a>
						<p>Внутренние курсы. Сертификационная подготовка.</p>
						<div class="study-list-button">
							<a href="#" class="b-button">Начать</a>
						</div>
					</li>
				</ol>
			</div>
		</div>		
		<div class="b-collapse">
			<h3 class="collapse-header"><span>Эффектная презентация</span></h3>
			<div class="study-progress">
				<div class="study-progress-bg">&nbsp;</div>
				<div class="study-progress-current" style="width: 57%;">
					<p class="study-progress-text">57%</p>
				</div>
			</div>
			<div class="collapse-inner">
				<ol class="study-list">
					<li class="study-list-item">
						<a href="#" class="b-link">Стандарты Сбербанка по ведению переговоров</a>
						<p>Внутренние курсы. Сертификационная подготовка.</p>
						<div class="study-list-button">
							<p>Аттестован!</p>
						</div>
					</li>
					<li class="study-list-item">
						<a href="#" class="b-link">Стандарты Сбербанка по ведению переговоров</a>
						<p>Внутренние курсы. Сертификационная подготовка.</p>
						<div class="study-list-button">
							<a href="#" class="b-button">Начать</a>
						</div>
					</li>
				</ol>
			</div>
		</div>		
	</div>
</div>
<!-- End Organization Content -->