<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%@
taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v7.0/portal-core" prefix="portal-core" %><%@
taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v7.0/portal-logic" prefix="portal-logic" %><%@
taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v7.0/portal-fmt" prefix="portal-fmt" %><%@
taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v7.0/portal-navigation" prefix="portal-navigation" %><%@ 
taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v7.0/json" prefix="json" %><%@  
taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v7.0/resolver" prefix="r" %><%@ 
taglib uri="/WEB-INF/tld/portal-internal.tld" prefix="portal-internal" %><%@
taglib uri="/WEB-INF/tld/people.tld" prefix="pa" %>
<portal-core:constants/><portal-core:defineObjects/>
<%@ include file="../../../helper.jspf" %>
(function(){
    ibmCfg.controllers = {<%-- controllers initialized in com.ibm.themes.PageBuilder2.init 
    --%>rendering: null,<%--
    --%>navigation: null,<%--
    --%>dnd: null<%--
--%>};
    ibmCfg.userName = "<portal-fmt:out escape="json">${wp.user[ccConfig['cc.enabler.user.displaynameattribute']]}</portal-fmt:out>";
    i$.merge({<%--
    --%>themeUniqueName: "<%
        String uniqueName = ((Theme)pageContext.getAttribute("currentThemeObj", PageContext.REQUEST_SCOPE)).getObjectID().getUniqueName();
        if(uniqueName == null){
            uniqueName = (String) pageContext.getAttribute("currentThemeID", PageContext.REQUEST_SCOPE);
        }
        if(uniqueName != null) {
            out.write(uniqueName);
        }
    %>",<%--
    --%>skinRootURI: stripTrailingSlash("<%=getStaticUrl(pageContext, "skinRootURI")%>"),<%--
    --%>themeRootURI: stripTrailingSlash("<%=getStaticUrl(pageContext, "themeRootURI")%>"),<%--
    --%>commonResourcesRootURI: stripTrailingSlash("<%=getStaticUrl(pageContext, "commonResourcesRootURI")%>"),<%--
	--%>themeWebDAVBaseURI:  "<%=pageContext.getAttribute("themeWebDAVBaseURI", PageContext.REQUEST_SCOPE)%>",<%--
    --%>isRTL: false,<%--
    --%><%
        if((Boolean)pageContext.getAttribute("isRTL", PageContext.REQUEST_SCOPE)) {
        %>isRTL: true,<%
        }
        %>isPageRenderModeCSA: <%=pageContext.getAttribute("isPageRenderModeCSA", PageContext.REQUEST_SCOPE)%>,<%--
    --%>navHiddenMetadata: <json:array value='<%=(java.util.List)pageContext.getAttribute("navHiddenMetadata", PageContext.APPLICATION_SCOPE)%>'/>,<%--
    --%>layoutHiddenMetadata: ["com.ibm.portal.layoutnode.localname"],<%--
    --%>portletOverridePageTitle: "<portal-fmt:out escape="json"><%=pageContext.getAttribute("pageTitle", PageContext.REQUEST_SCOPE)%></portal-fmt:out>",<%--
    --%>currentContentNodeOID: "<%=pageContext.getAttribute("currentContentNodeID", PageContext.REQUEST_SCOPE)%>",<%--
    --%>contextMenus: {}<%--
--%>},ibmCfg.themeConfig);
    var portalContext = "<%=pageContext.getAttribute("portalContext", PageContext.APPLICATION_SCOPE)%>",<%--
    --%>contextRegExp = new RegExp("^" + portalContext),<%--
    --%>locale = "<%=pageContext.getAttribute("preferredLocale", PageContext.REQUEST_SCOPE)%>",<%--
    --%>formattedLocale = locale.replace(/_/, "-").replace(/iw/, "he").toLowerCase(),<%--
    --%>contentHandlerURI = "<%=pageContext.getAttribute("contentHandlerURI", PageContext.REQUEST_SCOPE)%>",<%--
    --%>contentHandlerURIPublic = "<%=pageContext.getAttribute("contentHandlerURIPublic", PageContext.REQUEST_SCOPE)%>";

    i$.merge({<%--
    --%>portalURI: "${portalRoot}",<%--
    --%>locale: locale,<%--
    --%><portal-logic:if loggedIn="no"><%--
    --%>contentHandlerURI: contentHandlerURIPublic,<%--
    --%></portal-logic:if><%--
    --%><portal-logic:if loggedIn="yes"><%--
    --%>contentHandlerURI: contentHandlerURI,<%--
    --%></portal-logic:if><%--
    --%>themeRootURI:  "<%=pageContext.getAttribute("themeWebAppBaseURI", PageContext.REQUEST_SCOPE)%>",<%--
    --%>parentPageID: "${wp.identification[wp.navigationModel.parent[currentNavNode]]}",<%--
    --%>currentPageOID: "<%=pageContext.getAttribute("currentNavNodeID", PageContext.REQUEST_SCOPE)%>",<%--
    --%>bootstrapState: "<portal-fmt:xmlOut xml="${wp.currentState.xmlSource}" escape="json" />",<%--
    --%>inManagedPages: "<%=com.ibm.wps.services.config.Config.getParameters().getBoolean("managed.pages")%>"==="true",<%--
    --%>currentUser: "${wp.user}",<%--
    --%>currentUserOID: "${wp.identification[wp.user.objectID]}",<%--
    --%>isUserLoggedIn: <%=pageContext.getAttribute("isAuthenticated", PageContext.REQUEST_SCOPE)%>,<%--
    --%><%
        {
            Map<String, Object> dirMD = (Map<String, Object>)pageContext.getAttribute("dirMD", PageContext.REQUEST_SCOPE);
            %><%--
        --%>aggregatedStyle: "<%=pageContext.getAttribute("colorPalette", PageContext.REQUEST_SCOPE)%>",  <%-- style metadata for this page, updated dynamically on CSA page switches --%><%--
        --%>wcmPageMetadata: {<%--
            --%>contentRoot: "<%=dirMD.get("com.ibm.portal.wcm.contentroot")%>",<%--
            --%>sharingScope: "<%=dirMD.get("param.sharing.scope")%>"<%--
        --%>}<%
        }
        %><%--
--%>},ibmCfg.portalConfig);<%--
--%>})();

<%-- set ibmPortalConfig and ibmConfig objects to ibmCfg objects for legacy support --%>
ibmPortalConfig = ibmCfg.portalConfig;
