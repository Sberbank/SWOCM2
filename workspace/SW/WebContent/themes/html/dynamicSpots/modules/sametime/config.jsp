<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../../../includePortalTaglibs.jspf" %>
<%@ include file="../../../helper.jspf" %>
<%-- begin Sametime Proxy Awareness javascript --%>
<%
{
    //out.println("Inside config.jsp of sametime module"+request.getScheme()+"://"+request.getLocalName()+":"+request.getLocalPort()+"<br>");
	// PERFORMANCE: Check if Sametime Proxy is enabled before writing out the configuration map.
	Map<String,String> ccConfig = (Map<String,String>)pageContext.getAttribute("ccConfig", PageContext.APPLICATION_SCOPE);
	Map<String,String> themeConfig = (Map<String,String>)pageContext.getAttribute("themeConfig", PageContext.REQUEST_SCOPE);
    String portalUrl = request.getScheme()+"://"+request.getLocalName();
	if ( request.getLocalPort() != -1 ) {
	    portalUrl += ":"+request.getLocalPort();
	}
    //out.println("Inside config.jsp of theme module context is:"+themeConfig.get("resources.modules.ibm.contextRoot")+"<br>");
    //out.println("Inside config.jsp complete tunnel.html URI is:"+portalUrl+themeConfig.get("resources.modules.ibm.contextRoot")+"/themes/html/dynamicSpots/modules/sametime/markup/tunnel.html"+"<br>");
	if (ccConfig != null) {
		String sametimeProxyEnabled = ccConfig.get("cc.sametime.proxy.enabled");
        String isPortalAjaxProxy    = "false";

		if(Boolean.parseBoolean(sametimeProxyEnabled)) {
			String sametimeProxyScheme = ccConfig.get("cc.sametime.proxy.scheme"); // e.g. https, https .. can we assume that if scheme is not mentioned that AJAX proxy of Portal will be used to communicate
			String sametimeProxyHost = ccConfig.get("cc.sametime.proxy.host"); // e.g  yourhost
			String sametimeProxyVersion = ccConfig.get("cc.sametime.proxy.version"); // e.g  yourhost
			String sametimeProxyVersionTemp = sametimeProxyVersion;
			String sametimeProxyPort = ccConfig.get("cc.sametime.proxy.port"); // e.g. 9080
			String sametimeProxyUrl851 = ccConfig.get("cc.sametime.proxy.url"); // e.g. yourstproxyhostname:portno
			String tempsametimeProxyPort = "";
			if ( sametimeProxyPort != null || sametimeProxyPort.length() != 0 ) {
			    tempsametimeProxyPort = ":"+sametimeProxyPort;
			}
			String sametimeProxyUrl = "";
		    String isSametimeConnectClient = ccConfig.get("cc.sametime.connect.client");
			// If the proxy address starts with a "/" we assume it is proxied through a external service like IHS.
			// If it does not start with a "/" then we want to use the internal Portal AJAX proxy.
			// For example a sametimeProxyUrl value of "/mystproxy" is assumed to use an external proxy
			// whereas a sametimeProxyUrl value of "sametime.myserver.example.com" would need the 
			// internal Portal AJAX proxy.
			if ( (sametimeProxyVersion != null && sametimeProxyVersion.equals("8.5.2")) || ( sametimeProxyUrl851 == null || sametimeProxyUrl851.length() == 0)  ) { // this is when 8.5.2 version will be used
			    sametimeProxyVersionTemp = "8.5.2";
                sametimeProxyUrl = sametimeProxyScheme + "://" + sametimeProxyHost + tempsametimeProxyPort;
                isPortalAjaxProxy = "false";
			} else { // check if RPE setting is for 8.5.1
			    if ( sametimeProxyUrl851 != null && sametimeProxyUrl851.length() > 0 ) {
				     sametimeProxyVersionTemp = "8.5.1";
				     if ( !sametimeProxyUrl851.startsWith("/"))  {
						// add prefix for Portal AJAX proxy.
						String portalProxyUrl = (String)pageContext.getAttribute("portalProxyUrl",PageContext.REQUEST_SCOPE);
						sametimeProxyUrl = portalProxyUrl + "/http/"+sametimeProxyUrl851;
						isPortalAjaxProxy = "true";
					} else {
						sametimeProxyUrl = "http:"+sametimeProxyUrl851;
						isPortalAjaxProxy = "false";
					}
				} 
            }// end of non-8.5.2 case
            //out.println("Inside config.jsp of sametimemodule sametimeProxyUrl is "+sametimeProxyUrl+": and isSametimeConnectClient is:"+isSametimeConnectClient+"And isPortalAjaxProxy is:"+isPortalAjaxProxy+"<br>");
			pageContext.setAttribute("sametimeProxyUrl", sametimeProxyUrl, PageContext.REQUEST_SCOPE);
			pageContext.setAttribute("isSametimeConnectClient", isSametimeConnectClient, PageContext.REQUEST_SCOPE);
            pageContext.setAttribute("isPortalAjaxProxy", isPortalAjaxProxy, PageContext.REQUEST_SCOPE);
%>
<portal-logic:if loggedIn="yes" >
<script type="text/javascript">
<% if  ( "8.5.2".equals(sametimeProxyVersionTemp) ) {%>
var stproxyConfig = {
	server: "${sametimeProxyUrl}",
	isConnectClient: ${isSametimeConnectClient},
	tokenlogin: true,
    tunnelURI:'<%=portalUrl%>${wp.themeConfig["resources.modules.ibm.contextRoot"]}/themes/html/dynamicSpots/modules/sametime/markup/tunnel.html' // this should be a complete http URL of a resource on Portal Server
 }
<% } %>
<%-- This Is only for 8.5.1 --%>
<% if  ( "8.5.1".equals(sametimeProxyVersionTemp) ) {%>
var stproxyConfig = {
	server: "${sametimeProxyUrl}",
	isConnectClient: ${isSametimeConnectClient},
	disableXDomain: true,
	isPortalAjaxProxy: ${isPortalAjaxProxy},
	plugins: {
		lnmpChat : false,
		lnmpCall : false,
		lnmpMeetingInvite : false,
		lnmpSendAnnouncement : false,
		lnmpBizCard : false,
		lnmpAddToContacts : false,
		lnmpAddContact : false,  
		lnmpAddToContacts : false, 
		lnmpAddSubgroup : false
	}
 }
<% } %>
</script>
<link href="${sametimeProxyUrl}/stwebclient/dojo.blue/sametime/themes/WebClientAll.css" type="text/css" rel="stylesheet"/>
<!--Should not language code be passed here-->
<script type="text/javascript" src="${sametimeProxyUrl}/stbaseapi/baseComps.js"></script> 
<script type="text/javascript" src="${sametimeProxyUrl}/stwebclient/widgetsLight.js"></script>

<%-- used to override some sametime proxy details for WebSphere Portal --%>
<script type="text/javascript" src="${sametimeProxyUrl}/stwebclient/apps/webspherePortal.js"></script>
<script type="text/javascript">
if ( (document.getElementById("logoutlink") != null) || (document.getElementById("logoutlink") != "undefined") ) {
document.getElementById("logoutlink").onclick = function() {
	if(stproxy && stproxy.isLoggedIn){
		stproxy.login.logout(); 
	}
};
}
</script>
</portal-logic:if>
<%
		}
	}
}
%>          
<%-- end Sametime Proxy Awareness JavaScript --%>
