<%@ page session="false" contentType="text/javascript;charset=ISO-8859-1" buffer="none" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%-- Licensed Materials - Property of IBM, 5724-E76, (C) Copyright IBM Corp. 2010 - All Rights reserved. --%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../../../includePortalTaglibs.jspf" %>
<%@ taglib uri="/WEB-INF/tld/portal-internal.tld" prefix="portal-internal" %><%--
--%><portal-core:constants/><portal-core:defineObjects/>
<%@ page import="java.util.Locale,
com.ibm.portal.identification.Identification,
com.ibm.portal.um.PumaEnvironment,
com.ibm.portal.serialize.SerializationException,
com.ibm.portal.ObjectID,
com.ibm.portal.model.LocalizedContext"
%><%!
private static Boolean isWcmPresent = Boolean.FALSE;
private static com.ibm.portal.um.PumaHome pumaHome;
private static com.ibm.portal.model.PortalLocalizedContextHome localizedContextHome;
private static Identification identification;
public void jspInit() {
	javax.naming.Context ctx = null;
	try	{
		// only perform this JNDI lookup once as this is an expensive call performance wise
		ctx = new javax.naming.InitialContext();
		pumaHome= (com.ibm.portal.um.PumaHome) ctx.lookup(com.ibm.portal.um.PumaHome.JNDI_NAME );
		localizedContextHome = (com.ibm.portal.model.PortalLocalizedContextHome) ctx.lookup(com.ibm.portal.model.PortalLocalizedContextHome.JNDI_NAME);
		javax.naming.Name idName = new javax.naming.CompositeName(Identification.JNDI_NAME);
		identification = (Identification) ctx.lookup(idName);
	} catch ( javax.naming.NamingException ne ) {
		// error has already been created as entry in Portal system logs
		ne.printStackTrace();
	}

	try {
		isWcmPresent = Boolean.valueOf(ctx.lookup("portal:service/wcm/WebContentService") != null);
	}
	catch ( javax.naming.NamingException e ){
		isWcmPresent = Boolean.FALSE;
	}
	
	ServletContext servletCtx = getServletConfig().getServletContext();
	
	servletCtx.setAttribute("isWcmPresent", isWcmPresent);
	servletCtx.setAttribute("xMethodOverrideEnabled", Boolean.toString(com.ibm.wps.services.config.Config.getParameters().getBoolean("x-method-override.enabled", false)));
	servletCtx.setAttribute("systemDefaultLocale", localizedContextHome.getDefaultLocale());
	
	StringBuffer buffer = new StringBuffer();
	java.util.Iterator<Locale> it = localizedContextHome.getSupportedLocales().iterator();
	while (it.hasNext()) {
		Locale current = it.next();
		//The NLS files are setup such that EN is in the base javascript resource file. Including EN in
		//the available locales causes the lookup to fail because it looks in an EN sub-directory. 		
		if (!current.equals(Locale.ENGLISH)) {
			buffer.append(current.toString().replace('_', '-').replace("iw", "he").toLowerCase());
			buffer.append(",");
		}
	}
	buffer.append("ROOT");
	//To comply with Dojo's i18n conventions, all locales must use the dash instead of underscore and must be lower-case.
	servletCtx.setAttribute("availableLocales", buffer.toString());
	
	PumaEnvironment pumaEnvironment = pumaHome.getEnvironment();
	try {
		servletCtx.setAttribute("serializedAllAuthenticatedUsersID", identification.serialize(pumaEnvironment.getVirtualPrincipal(PumaEnvironment.VirtualPrincipalNames.AllAuthenticatedPortalUsers).getObjectID()));
		servletCtx.setAttribute("serializedAnonymousUserID", identification.serialize(pumaEnvironment.getVirtualPrincipal(PumaEnvironment.VirtualPrincipalNames.AnonymousPortalUser).getObjectID()));
	}
	catch(SerializationException e) {
		e.printStackTrace(System.err);
	}
}
%><%--

Create static global variables for configuration.

--%>stripTrailingSlash = function(url) {return url ? url.replace(/\/+$|\/*;[\S\s]*$/g, "") : "";};<%--
--%>createChildPageFunc = function() {com.ibm.pb.contextMenu.sharedActions.createPage(com.ibm.mashups.builder.model.Factory.getRuntimeModel().getCurrentPage().getID(), null, {widgetId: "newPage"});};<%--
--%>if(typeof(ibmCfg) == "undefined"){
ibmCfg = {};
}
i$.merge({<%--
	--%>themeConfig: {<%--
	--%>dndSourceDefinitions: [ {id:"ibmDndColumn", object:"com.ibm.pb.dnd.layout.LayoutColumnSource", orientation: "vertical"}, {id:"ibmDndRow", object:"com.ibm.pb.dnd.layout.LayoutRowSource", orientation: "horizontal"} ],<%--
	--%>autoEditNewPages: <c:out value="${ccConfig['cc.theme.autoEditNewPages']}" default="false"/>,<%--
	--%>alwaysRefreshOnPageSave: true,<%--
	--%>transitions: {}<%--
--%>},<%--
--%>portalConfig:{<%--
	--%>isDebug: true,<%-- IMPORTANT TODO: Remove this line and uncomment next line before we ship
	--%><%--isDebug: <c:out value="${ccConfig['cc.isDebug']}" default="false"/>,--%><%--
	--%>portalContext: "<%=com.ibm.wps.services.config.Config.URI_CONTEXT_PATH%>",<%--
	--%>portalPublicURI: "<%=com.ibm.wps.services.config.Config.URI_CONTEXT_PATH + com.ibm.wps.services.config.Config.URI_SERVLET_PATH_PUBLIC%>",<%--
	--%>portalProtectedURI: "<%=com.ibm.wps.services.config.Config.URI_CONTEXT_PATH + com.ibm.wps.services.config.Config.URI_SERVLET_PATH_PROTECTED%>",<%--
	--%>xMethodOverride: ${xMethodOverrideEnabled},<%--
	--%>isWcmPresent: ${isWcmPresent},<%--
	--%>contentRenderers: {<%--
		--%>feed: "wps.p.Feedspace",<%--
		--%>wcm: "ibm.portal.Web.Content.Viewer.Jsr286"<%--
	--%>}<%--
--%>}},ibmCfg);
