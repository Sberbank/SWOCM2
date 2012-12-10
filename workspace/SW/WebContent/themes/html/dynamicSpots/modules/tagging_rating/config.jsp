<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="javax.ccpp.ProfileFactory, javax.ccpp.Profile, javax.ccpp.Attribute, com.ibm.portal.cp.tagging.Constants" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../../../includePortalTaglibs.jspf" %>
<%@ include file="../../../helper.jspf" %>
<%
{
	// PERFORMANCE: Check if Tagging or Rating are enabled before writing out the cp configuration map.
	Map<String,Object> cpConfig = (Map<String,Object>)pageContext.getAttribute("cpConfig", PageContext.REQUEST_SCOPE);
	if((Boolean)cpConfig.get("isTaggingEnabled") || (Boolean)cpConfig.get("isRatingEnabled")) {
%>
	var ibmPortalCPConfig=<json:object value='<%=cpConfig%>' />;
<%
	}
	else {
%>
	var ibmPortalCPConfig=null;
<%
	}
}
%>
