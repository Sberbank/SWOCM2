<%@ page session="false" buffer="none" %>
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
<%--
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
--%>
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
