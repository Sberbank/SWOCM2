<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="javax.ccpp.ProfileFactory, javax.ccpp.Profile, javax.ccpp.Attribute, com.ibm.portal.cp.tagging.Constants" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../../../helper.jspf" %>

<link rel="schema.PORTAL_CP" href="http://www.ibm.com/xmlns/prod/websphere/portal/v7.0/portal-contextual-portal"/>
<% 
final Profile clientProfile = ProfileFactory.getInstance().newProfile(request);
final Attribute attribute = clientProfile.getAttribute("Vendor");
final boolean isIE;
if (attribute != null) {
	final String vendor =  attribute.toString();
	isIE = "Microsoft".equals(vendor);
} else {
	isIE = false;
}
%><c:if test="${cpConfig.isTaggingEnabled && cpConfig.operations.canViewTags}"><% 
if(isIE){ 
%><link rel="search" title="<portal-fmt:text bundle='com.ibm.wps.cp.tagging.xml.opensearch.resources.TaggingSearch' key='short-name'/>" href='<%=getStaticUrl(pageContext, "tosPublic")%>' type="application/opensearchdescription+xml"/><% 
} else { 
%><link rel="search" title="<portal-fmt:text bundle='com.ibm.wps.cp.tagging.xml.opensearch.resources.TaggingSearch' key='short-name'/>" href='<%=getStaticUrl(pageContext, "tosDefault")%>' type="application/opensearchdescription+xml"/><% 
}%></c:if>
