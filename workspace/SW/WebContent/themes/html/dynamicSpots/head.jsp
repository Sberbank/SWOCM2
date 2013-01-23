<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../includePortalTaglibs.jspf" %>
<portal-core:constants/><portal-core:defineObjects/> 

<%@ include file="../helper.jspf" %>

<portal-core:stateBase/>

<title><%=pageContext.getAttribute("pageTitle", PageContext.REQUEST_SCOPE)%></title>

<portal-core:portletsHeadMarkupElements method="xhtml" filter="title"/>
<portal-navigation:urlGeneration navigationNode='<%=(String)pageContext.getAttribute("currentNavNodeID", PageContext.REQUEST_SCOPE)%>'>
    <link id="com.ibm.lotus.NavStateUrl" rel="alternate" href="<%wpsURL.write(escapeXmlWriter);%>"></link>
    <c:set var="currentNavNode" scope="request" value="${wp.selectionModel.selected}" />
    <link 
        rel="bookmark" 
        title='<c:out value="${currentNavNode.title}"/>' 
        href='<%wpsURL.write(escapeXmlWriter);%>' 
        hreflang="<%=pageContext.getAttribute("preferredLocale", PageContext.REQUEST_SCOPE)%>"/>
</portal-navigation:urlGeneration>
<link href="<%=getStaticUrl(pageContext, "portalIcon")%>" rel="shortcut icon" type="image/x-icon" />



<%-- link the color palette style set for the page --%><%
{
	String colorPaletteUrl = (String)pageContext.getAttribute("colorPaletteUrl", PageContext.REQUEST_SCOPE);
	if(colorPaletteUrl != null) {
%><link title="assigned" href="<%=colorPaletteUrl%>" rel="stylesheet" type="text/css" /><%
	}
}
%><%-- link the page's style overrides stored in meta data --%><% 
{
	String pageStyle = (String)pageContext.getAttribute("pageStyle", PageContext.REQUEST_SCOPE);
	if(pageStyle != null) {
%><link id="ibmPageStyleLink" href="<%=pageStyle%>" rel="stylesheet" type="text/css" /><%
	}
}
%>
		<script type="text/javascript" src="/SwStatic/common-resources/lib/jquery.js"></script>
		<script type="text/javascript" src="/SwStatic/common-resources/lib/jquery-ui-1.9.2.custom.min.js"></script>
		<script type="text/javascript" src="/SwStatic/common-resources/lib/jquery.tmpl.js"></script>
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/lib/jquery-ui-1.9.2.custom.min.css" />

		<script type="text/javascript" src="/SwStatic/common-resources/lib/chosen/chosen.jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/lib/chosen/chosen.css" />

		<script type="text/javascript" src="/SwStatic/common-resources/js/ui-custom-elements.js"></script>
		<script type="text/javascript" src="/SwStatic/common-resources/js/popup.js"></script>
		<script type="text/javascript" src="/SwStatic/common-resources/js/main.js"></script>

		<script type="text/javascript" src="/SwStatic/common-resources/js/widget/calendar.js"></script>
		<script type="text/javascript" src="/SwStatic/common-resources/js/widget/calculator.js"></script>		

		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/ui-theme.css" />

		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/popup.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/monitoring.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/main.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/sell.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/study.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/organization.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/lenta.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/call.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/find-clients.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/call-page.css" />

		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/widget/calendar.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/widget/calculator.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/widget/add.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/widget/progress.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/widget/sign-up.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/widget/kri.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/widget/calendar_ext.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/widget/idea.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/widget/rating.css" />
		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/widget/sell.css" />

		<link rel="stylesheet" type="text/css" href="/SwStatic/common-resources/css/custom.css" />
