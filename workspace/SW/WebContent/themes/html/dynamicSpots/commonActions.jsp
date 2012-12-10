<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/portal-internal.tld" prefix="portal-internal" %>
<%@ include file="../includePortalTaglibs.jspf" %>
<%@ include file="../helper.jspf" %>
<portal-core:constants/><portal-core:defineObjects/>
<%-- Renders links for Login/Logout and Help that are shown in the banner --%>
<div class="wpthemeRight">
	<ul class="wpthemeCommonActions">
		<portal-logic:if loggedIn="yes">
		<%-- Username is used as a link to 'Edit My Profile' --%>
		<li>	
		<portal-internal:adminlinkinfo name="SELFCARE">
		<portal-navigation:urlGeneration contentNode="<%=wpsContentNode%>" layoutNode="<%= wpsCompositionNode %>" portletWindowState="Normal" themeTemplate="" portletParameterType="render">
		<portal-navigation:urlParam type="render" name="ao" value="thm"/>
		<portal-navigation:urlParam type="render" name="OCN" value="<%= wpsNavigationNodeID %>" />
			<a href="<%wpsURL.write(escapeXmlWriter);%>"><portal-fmt:out escape="json">${wp.user[themeConfig['user.displaynameattribute']]}</portal-fmt:out></a>
	    </portal-navigation:urlGeneration>
	    </portal-internal:adminlinkinfo>
		</li>
		<%-- If impersonation is enabled, a link to impersonate is created --%>
		<% if((Boolean)pageContext.getAttribute("isImpersonationEnabled", PageContext.APPLICATION_SCOPE)) {%>
        <li>
        <portal-logic:if userImpersonated="false">
        <portal-navigation:urlGeneration contentNode="ibm.portal.Impersonation">
            <a href="<%wpsURL.write(escapeXmlWriter);%>"><portal-fmt:text key='link.impersonate' bundle='nls.engine'/></a>
        </portal-navigation:urlGeneration>
        </portal-logic:if>
        </li>
        <% }%> 
		<li>
		<%--
		This creates the Actions context menu for page actions.  We use the
		&#36; HTML entity to encode the $ character so that it won't be interpreted
		as a JSP expression here and will show up as literals.
		--%>
            <span aria-labelledby="wpContextMenu" role="button" aria-haspopup="true" class="wpthemeMenuAnchor wpthemeActionDisabled"
                onclick="javascript:if (typeof wptheme != 'undefined') wptheme.contextMenu.init(this, 'pageAction', {'navID':ibmCfg.portalConfig.currentPageOID});"
                onmousemove="javascript:if (typeof i$ != 'undefined' && typeof wptheme != 'undefined') { i$.removeClass(this,'wpthemeActionDisabled'); this.onmousemove = null; }"
                onkeydown="javascript:if (typeof i$ != 'undefined' && typeof wptheme != 'undefined') {if (event.keyCode ==13) {wptheme.contextMenu.init(this, 'pageAction', {'navID':ibmCfg.portalConfig.currentPageOID});}}">
                <span class="wpthemeUnderlineText wpthemeMenuFocus" tabindex="0" id="wpContextMenu"><portal-fmt:text key='theme_actions' bundle='nls.Theme'/></span>
                <span class="wpthemeMenuRight">
                    <div class="wpthemeMenuBorder">
                        <div class="wpthemeMenuNotchBorder"></div>
                        <!-- define the menu item template inside the "ul" element.  only "css-class", "description", and "title" are handled by the theme's sample javascript. -->
                        <ul class="wpthemeMenuDropDown wpthemeTemplateMenu" role="menu">
                            <li class="&#36;{css-class}" role="menuitem" tabindex="-1"  ><span class="wpthemeMenuText" >&#36;{title}</span></li>
                        </ul>
                    </div>
                    <!-- Template for loading -->
                    <div class="wpthemeMenuLoading wpthemeTemplateLoading"><portal-fmt:text key='shelf_loading' bundle='nls.Shelf'/></div>
                    <!-- Template for submenu -->
                    <div class="wpthemeAnchorSubmenu wpthemeTemplateSubmenu">
                        <div class="wpthemeMenuBorder wpthemeMenuSubmenu">
                            <ul id="&#36;{submenu-id}" class="wpthemeMenuDropDown" role="menu"><li></li></ul>
                        </div>
                    </div>
                </span>
            </span> 
		</li>
		<li>
			<a id="logoutlink" href="<portal-navigation:url command='LogoutUser'/>"><portal-fmt:text key="link.logout" bundle="nls.engine"/></a>
		</li>
		</portal-logic:if>
		<portal-logic:if loggedIn="no">
		<li>
			<portal-internal:adminlinkinfo name="SELFCARE">
			<portal-navigation:urlGeneration allowRelativeURL="true" contentNode="<%=wpsContentNode%>" layoutNode='<%= wpsCompositionNode %>' portletWindowState="Normal" themeTemplate="">
			<portal-navigation:urlParam type="render" name="ao" value="thm"/>
			<portal-navigation:urlParam type="render" name="OCN" value="<%= wpsNavigationNodeID %>" />
				<a href='<% wpsURL.write(escapeXmlWriter); %>'><portal-fmt:text key="link.enrollment" bundle="nls.engine"/></a>
			</portal-navigation:urlGeneration>
			</portal-internal:adminlinkinfo>
		</li>
		<li>
			<portal-navigation:urlGeneration allowRelativeURL="true" keepNavigationalState="false" contentNode="wps.content.root" home="protected" >
				<a href='<% wpsURL.write(escapeXmlWriter); %>' ><portal-fmt:text key="link.login" bundle="nls.engine"/></a>
			</portal-navigation:urlGeneration>
		</li>
		</portal-logic:if>
		<li>
			<span class="wpthemeBranding">
				<img src="${themeConfig['resources.modules.ibm.contextRoot']}/themes/html/dynamicSpots/icons/blank.gif" alt="<portal-fmt:text key="theme.ibmLogo" bundle="nls.commonUI"/>">
				<span class="wpthemeAltText"><portal-fmt:text key="theme.ibmLogo" bundle="nls.commonUI"/></span>
			</span>
		</li>
	</ul>
</div>
