<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../../../includePortalTaglibs.jspf" %>
<%@ taglib uri="/WEB-INF/tld/SearchMenuControl.tld" prefix="searchmenu" %>
<portal-core:constants/><portal-core:defineObjects/>
<portal-navigation:urlGeneration allowRelativeURL="true" contentNode="ibm.portal.Search Center" layoutNode="ibm.portal.Search Center Portlet Window" portletParameterType="action">
<portal-navigation:urlParam name="javax.portlet.action" value="newQuery" type="action"/>
<div class="wpthemeSearch wpthemeRight" role="search">
	<form name="searchQueryForm" method="get" action="<%wpsURL.write(out);%>">
		<input type="hidden" value="<searchmenu:currentContentNode/>" name="sourceContentNode">
		<label for="wpthemeSearchBoxInput" class="wpthemeDisplayNone"><portal-fmt:text key="search.theme.searchbox.alttext" bundle="nls.engine"/></label>
		<input class="wpthemeSearchText" type="text" id="wpthemeSearchBoxInput" name="query">
		<input class="wpthemeSearchButton" type="image" src="/wps/themeModules/themes/html/dynamicSpots/icons/blank.gif" title="<portal-fmt:text key="search.theme.searchresultsicon.alttext" bundle="nls.engine"/>" alt="Search">
		<span class="wpthemeAltText"><portal-fmt:text key="search.theme.searchresultsicon.alttext" bundle="nls.engine"/></span>
	</form>		
</div>
</portal-navigation:urlGeneration>
