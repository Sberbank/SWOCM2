<%@ page session="false" buffer="none" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../includePortalTaglibs.jspf" %>
<portal-core:constants/><portal-core:defineObjects/>

<c:set var="selectionPathLength" value="${fn:length(wp.selectionModel.selectionPath)}" />

<c:choose>
    <c:when test="${empty param.levelsDisplayed}">
        <c:set var="endLevel" value="${selectionPathLength}" />
    </c:when>
    <c:otherwise>
        <c:set var="endLevel" value="${param.startLevel + (param.levelsDisplayed-1)}"/>
    </c:otherwise>
</c:choose>
                    <c:forEach var="node" items="${wp.navigationModel.children[wp.selectionModel.selectionPath[0]]}" varStatus="status" step="1">
                        <c:set var="nodeID" value="${node.objectID.uniqueName}"/>
                        <c:if test="${wp.selectionModel[node] != null}">
                            <c:if test="${nodeID == 'swocm.index'}">
                                <c:set var="isIndexPage" value="true" />
                            </c:if>
                        </c:if>
                    </c:forEach>

                    <c:set var="selectedNode" value=""/>
                    <c:forEach var="node" items="${wp.navigationModel.children[wp.selectionModel.selectionPath[1]]}" varStatus="status" step="1">
                        <c:set var="nodeID" value="${node.objectID.uniqueName}"/>
                        <c:if test="${wp.selectionModel[node] != null}">
                            <c:set var="selectedNode" value="${node.objectID.uniqueName}"/>
                        </c:if>
                    </c:forEach>


					<div class="l-nav">
						<div class="nav-item nav-item-lenta <c:if test="${isIndexPage && (selectedNode=='swocm.calls'||selectedNode=='')}">nav-active</c:if>"
                            onclick="location.href='/wps/myportal/swocm';">
                            <p class="nav-text">Лента</p>
                        </div>

                        <c:if test="${selectedNode=='swocm.calls'}">
                            <div class="nav-item nav-item-call nav-active">
                                <p class="nav-text">4:21</p>
                            </div>
                        </c:if>

						<div class="b-nav-process">
							<div class="nav-item nav-item-study <c:if test="${selectedNode=='swocm.study'}">nav-active</c:if>" onclick="location.href='/wps/myportal/swocm/study';">
								<p class="nav-text">Учеба</p>
								<div class="b-nav-indicator">
									<div class="nav-indicator-bg">&nbsp;</div>
									<div class="nav-indicator-current" style="width: 37%;">
										<p class="nav-indicator-text">37%</p>
									</div>
								</div>
							</div>
							<div class="nav-item nav-item-clients <c:if test="${selectedNode=='swocm.findclients'}">nav-active</c:if>" onclick="location.href='/wps/myportal/swocm/findclients';">
								<p class="nav-text">Поиск клиентов</p>
								<div class="b-nav-indicator b-nav-indicator-number">
									<div class="nav-indicator-bg">
										<p class="nav-indicator-all">50</p>
									</div>
									<div class="nav-indicator-current" style="width: 50%;">
										<p class="nav-indicator-text">22</p>
									</div>
								</div>
							</div>
							<div class="nav-item nav-item-sell <c:if test="${selectedNode=='swocm.sell'}">nav-active</c:if>" onclick="location.href='/wps/myportal/swocm/sell';">
								<p class="nav-text">Продажи</p>
								<div class="b-nav-indicator b-nav-indicator-number">
									<div class="nav-indicator-bg">
										<p class="nav-indicator-all">12</p>
									</div>
									<div class="nav-indicator-current" style="width: 25%;">
										<p class="nav-indicator-text nav-indicator-text-small">4</p>
									</div>
								</div>
							</div>
							<div class="nav-item nav-item-monitoring <c:if test="${selectedNode=='swocm.monitoring'}">nav-active</c:if>" onclick="location.href='/wps/myportal/swocm/monitoring';">
								<p class="nav-text">Мониторинг</p>
								<div class="b-nav-monitoring">
									<div class="nav-monitoring-item nav-monitoring-green nav-monitoring-first" style="width: 49%;"><p>47</p></div>
									<div class="nav-monitoring-item nav-monitoring-yellow" style="width: 36%;"><p>12</p></div>
									<div class="nav-monitoring-item nav-monitoring-red  nav-monitoring-last" style="width: 14%;"><p>3</p></div>
								</div>
							</div>
						</div>						
						<div class="nav-item nav-item-organisation <c:if test="${selectedNode=='swocm.organisations'}">nav-active</c:if>" onclick="location.href='/wps/myportal/swocm/organisations';"><p class="nav-text">Организации</p></div>
						<div class="nav-item nav-item-product <c:if test="${selectedNode=='swocm.products'}">nav-active</c:if>" onclick="location.href='/wps/myportal/swocm/products';"><p class="nav-text">Продукты</p></div>
						<div class="nav-item nav-item-calendar <c:if test="${selectedNode=='swocm.calendar'}">nav-active</c:if>" onclick="location.href='/wps/myportal/swocm/calendar';"><p class="nav-text">Календарь</p></div>
						<div class="nav-item nav-item-my-client <c:if test="${selectedNode=='swocm.myclients'}">nav-active</c:if>" onclick="location.href='/wps/myportal/swocm/myclients';"><p class="nav-text">Мои клиенты</p></div>
						<div class="nav-item nav-item-documents <c:if test="${selectedNode=='swocm.documents'}">nav-active</c:if>" onclick="location.href='/wps/myportal/swocm/documents';"><p class="nav-text">Документы</p></div>
						<div class="nav-item nav-item-reposts <c:if test="${selectedNode=='swocm.reports'}">nav-active</c:if>" onclick="location.href='/wps/myportal/swocm/reports';"><p class="nav-text">Отчеты</p></div>
						<div class="nav-item nav-item-add"><p class="nav-text">&nbsp;</p></div>
					</div>

<%--
<c:if test="${param.startLevel == 1}">
			<div class="left">
				<div class="lenta active"></div>
				<div class="call"></div>
				<div class="orgatization"></div>
				<div class="clients"></div>
				<div class="plan-sell reset"></div>
				<div class="left-proposal"></div>
				<div class="left-add reset"></div>
			</div>
    <div class="left">
        <% 
            java.util.Map<String, String> class2id = new java.util.HashMap<String, String>();
            class2id.put("swocm.feed", "lenta");
            class2id.put("swocm.calls", "call");
            class2id.put("swocm.organisactions", "organization");
            class2id.put("swocm.myclients", "clients");
            class2id.put("swocm.mysales", "plan-sell reset");
            class2id.put("swocm.plans", "left-proposal");
            class2id.put("swocm.applications", "left-add reset");
        %>
        <c:forEach var="node" items="${wp.navigationModel.children[wp.selectionModel.selectionPath[1]]}" varStatus="status" step="1">
            <c:set var="nodeID" value="${node.objectID.uniqueName}"/>
            <c:if test="${!node.metadata['com.ibm.portal.Hidden']}">
                <%
                    System.out.println(pageContext.getAttribute("nodeID"));
                    java.lang.reflect.Method[] methods = pageContext.getAttribute("nodeID").getClass().getMethods();
                    for(int i=0; i<methods.length; i++)
                        System.out.println(methods[i]);
                    System.out.println("==================");

                    String _clazz = "lenta";
                    if (class2id.containsKey(pageContext.getAttribute("nodeID"))) {
                        _clazz = class2id.get(pageContext.getAttribute("nodeID"));
                    }
                %>
                <a href="?uri=nm:oid:${wp.identification[node]}">
                    <div class="<%=_clazz%> <c:if test="${wp.selectionModel[node] != null}"> active</c:if>"></div>
                </a>
            </c:if>
        </c:forEach>
    </div>
</c:if>
<c:if test="${param.startLevel != 1}">
    <c:forEach var="node" items="${wp.selectionModel.selectionPath}" varStatus="status" begin="${param.startLevel}" end="${endLevel}" step="1">
        <c:set var="level" value="${param.startLevel + (status.count-1)}"/> 
        <c:if test="${(selectionPathLength > level) && wp.navigationModel.hasChildren[wp.selectionModel.selectionPath[level]]}">
            <nav class="${param.rootClass} wpthemeNavContainer${level}">
                <ul class="wpthemeNavList">
                <c:forEach var="node" items="${wp.navigationModel.children[wp.selectionModel.selectionPath[level]]}">
                    <c:set var="nodeID" value="${wp.identification[node]}"/>
                    <c:if test="${!node.metadata['com.ibm.portal.Hidden']}">
                        <li class="wpthemeNavListItem wpthemeLeft<c:if test="${wp.selectionModel[node] != null}"> wpthemeSelected</c:if>">
                            <a href="?uri=nm:oid:${nodeID}"><c:choose><c:when test="${wp.selectionModel[node] != null}"><strong><span lang="${node.title.xmlLocale}" dir="${node.title.direction}"><c:out value="${node.title}"/><c:if test="${wp.identification[wp.selectionModel.selected] == nodeID}"><span class="wpthemeAccess"> <portal-fmt:text key="currently_selected" bundle="nls.Theme"/></span></c:if></span></strong></c:when><c:otherwise><span lang="${node.title.xmlLocale}" dir="${node.title.direction}"><c:out value="${node.title}"/></span></c:otherwise></c:choose></a>
                        </li>
                    </c:if>
                </c:forEach>
                </ul>	
            </nav>
        </c:if>
    </c:forEach>
</c:if>
--%>
