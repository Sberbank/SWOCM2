<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%-- Licensed Materials - Property of IBM, 5724-E76, (C) Copyright IBM Corp. 2001, 2004, 2006, 2010 - All Rights reserved. --%> 
<%--
NOTE: This file is a fallback minimal theme intended for use only to recover from a severe portal error.
It renders the minimum required to navigate to administration and try to fix the problem. This theme does not
include all portal functionality and should not be used as the basis for a production theme.
--%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c-rt" %> 
<%@ include file="./includePortalTaglibs.jspf" %>
<%@ taglib uri="/WEB-INF/tld/portal-internal.tld" prefix="portal-internal" %> 
<%@ taglib uri="/WEB-INF/tld/people.tld" prefix="pa" %> 
<%@ taglib uri="/WEB-INF/tld/menu.tld" prefix="menu" %> 
<%@ taglib uri="/WEB-INF/tld/themepolicy.tld" prefix="themepolicy" %> <%-- themepolicy - use until merged into portal.tld --%> 
<%@ taglib uri="/WEB-INF/tld/theme.tld" prefix="theme" %> <%-- theme extensions - use until merged into portal.tld --%> 
<portal-core:constants/><portal-core:defineObjects/><portal-internal:adminNavHelper/><themepolicy:initthemepolicy/><jsp:useBean id="themePolicy" class="com.ibm.portal.theme.policy.ThemePolicyBean" scope="page"/><% themePolicy.setValuesMap(portalThemePolicyMap);%> 
<html><%-- include file="./head.jspf" --%> 
<head><title><portal-fmt:text key="title" bundle="nls.engine"/></title><portal-core:stateBase/><style>body, html {
width: 100%;
margin: 0;
padding: 0;
}
body {
font-family: Verdana, Arial, Helvetica, sans-serif;
font-size: x-small;
background-color: ${colors.set1Background};
color: ${colors.set1Text1};
margin: 0px;
padding: 0px;
}
.clearing {clear: both; }
.layoutRow {width: 100%; }
.layoutColumn {width: 100%; }
#FLYParent {min-width: 1000px;}
#mainContent {padding: 5px;}
.themeHeader {
border-bottom: 1px solid;
margin: 0px;
width:100%;
padding: 0px;
clear: both;
}
<%--===================================================
BANNER
===================================================--%> 
.banner {
color: ${colors.set2Text1};
background: ${colors.set2BackgroundImage};
background-color: ${colors.set2Background};
margin: 0px;
width:100%;
padding: 1px;
}
<%--===================================================
TOOLBAR
===================================================--%> 
.toolbar {
float: right;
color: ${colors.set2Text1};
background-color: transparent;
margin-right: 5px;
}
<%--===================================================
SIDE NAVIGATION
===================================================--%> 
.wpsSideNav{
font-size: x-small;
border: 1px solid ${colors.set8BorderTop};
border-right: 1px solid ${colors.set8BorderRight};
text-decoration: none;
white-space:nowrap;
background-color:${colors.set8Background};
margin-top:0px;
margin-left: 0px;
padding-left: .5em;
}
.wpsSideNav li{
display:inline;
list-style: none;
}
.wpsNavItem{
text-decoration: none;
padding: 3px 3px;
display:block;
white-space:nowrap;
color:${colors.set8Text1} !important;
}
.wpsNavItem a {
display: inline;
}
.selected{
color: ${colors.set9Text1} !important;
background: ${colors.set9BackgroundImage};
background-position:bottom;
background-color: ${colors.set9Background};
text-decoration: none;
padding:3px 3px;
display:block;
cursor:default;
white-space:nowrap;
}
.selected a {
background-image:none;
background-color:transparent;
display: inline;
cursor: pointer;
text-decoration: none;
}
.wpsNavLevel1{
color: ${colors.set8Text2} !important;
font-size: small;
}
.selected .wpsNavLevel1{
color: ${colors.set9Text1} !important;
}
.wpsNavLevel2 wpsNavLevel3 wpsNavLevel4 wpsNavLevel5 wpsNavLevel6 wpsNavLevel7 wpsNavLevel7{
text-indent:24px;
}
</style></head><body><div id="FLYParent"><div class="themeHeader"><%-- include file="./banner.jspf" --%> 
<div class="banner"><div style="float:left"><portal-fmt:text key="title" bundle="nls.engine"/></div><div class="toolbar"><%-- logout button --%> 
<portal-logic:if loggedIn="yes"><a id="portalLogoutLink" tabIndex="7" class="toolbarLink" href='<portal-navigation:url command="LogoutUser"/>'><portal-fmt:text key="link.logout" bundle="nls.engine"/></a></portal-logic:if><%-- Login button --%> 
<portal-logic:if loggedIn="no"><portal-navigation:urlGeneration contentNode="wps.Login"><a tabIndex="7" class="toolbarLink" href='<% wpsURL.write(escapeXmlWriter); %>'><portal-fmt:text key="link.login" bundle="nls.engine"/></a></portal-navigation:urlGeneration></portal-logic:if></div><div class="clearing"></div><div><portal-fmt:text key="theme.fallback.info" bundle="nls.engine"/></div></div><%-- include file="./topNav.jspf" --%> 
</div><table style="width:100%; height:100%;" cellpadding="0px" cellspacing="0px"><tr><td valign="top"><%-- include file="./sideNav.jspf" --%> 
<portal-navigation:navigation startLevel="1"><% int previousNavLevel=0;%> 
<portal-navigation:navigationLoop><%--
basic logic required:
if node is selected give selected style
if node has children, show expand/collapse
if node is unselectable(label), don't render anchor
if node is external url, open in new window
if navlevel changed, open/close uls as needed.
--%> 
<% 
boolean isNodeSelected=wpsSelectionModel.isNodeSelected(wpsNavNode);
String rowCssClass=isNodeSelected ? "wpsNavItem selected" : "wpsNavItem";
boolean nodeHasChildren=wpsNavModel.hasChildren(wpsNavNode);
boolean isExpanded=((Boolean)((com.ibm.portal.state.StateModel)wpsNavModel).getState(wpsNavNode, com.ibm.portal.state.StateType.EXPANSION)).booleanValue() ;
boolean openInNewWindow=com.ibm.portal.content.ContentNodeType.EXTERNALURL.equals(wpsNavNode.getContentNode().getContentNodeType());
boolean isLabel=com.ibm.portal.content.ContentNodeType.LABEL.equals(wpsNavNode.getContentNode().getContentNodeType());
int currentNavLevel=wpsNavLevel.intValue();
%> 
<%-- ****************** open/close nav levels ****************** --%> 
<c-rt:choose><%-- new unordered list is created when current nav level is higher than previous nav level--%> 
<c-rt:when test="<%=currentNavLevel > previousNavLevel%>"><% for(int i=currentNavLevel; i > previousNavLevel; i--){%> 
<ul <% if(previousNavLevel==0){%> class="wpsSideNav"<%}%> ><%} %></c-rt:when><%-- unordered list is closed and list item that the list is placed inside is also closed--%> 
<c-rt:when test="<%=currentNavLevel < previousNavLevel %>"><% for(int i=currentNavLevel; i < previousNavLevel; i++){%></ul></li><%} %></c-rt:when></c-rt:choose><li <% if (isNodeSelected) { %>id="portalSelectedNode" <% } %> ><span class="<%=rowCssClass%>"><%-- ****************** render expand/collapse ****************** --%> 
<c-rt:choose><c-rt:when test="<%=nodeHasChildren && isExpanded %>"><a style="text-decoration:none" href='<portal-navigation:navigationUrl type="collapse"/>'>-</a></c-rt:when><c-rt:when test="<%=nodeHasChildren && !isExpanded %>"><a style="text-decoration:none" href='<portal-navigation:navigationUrl type="expand"/>'>+</a></c-rt:when><c-rt:otherwise><img alt="" src="<%=wpsBaseURL%>/images/dot.gif" /></c-rt:otherwise></c-rt:choose><%-- ****************** render node ****************** --%> 
<c-rt:choose><c-rt:when test="<%=isLabel%>"><span class="wpsNavLevel<%=wpsNavLevel%>"><portal-fmt:title/></span></c-rt:when><c-rt:otherwise><a class="<%=rowCssClass%> wpsNavLevel<%=wpsNavLevel%>" href="<portal-navigation:navigationUrl type="launch"/>" <% if (openInNewWindow) {%>target="_blank"<% } %> ><portal-fmt:title/></a></c-rt:otherwise></c-rt:choose></span><%-- the list item is closed if the node does not have children or it is not expanded --%> 
<c-rt:if test="<%=(!nodeHasChildren || !isExpanded)%>"></li></c-rt:if><%previousNavLevel=currentNavLevel;%> 
</portal-navigation:navigationLoop><%-- When no more nodes are left to be processed by the nav loop, it exits but leaves the
lists and list items open, there is a check to see if there is more than one level, if true,
the lists and list items are closed. There is a </ul> tag after the for loop to close the initial
list that is opened. This initial <ul> is created when a side nav page is created --%> 
<c-rt:if test="<%=previousNavLevel > 0 %>"><% for(int i=previousNavLevel; i > 1; i--){%></ul></li><%} %></ul></c-rt:if></portal-navigation:navigation><%-- end side navigation--%> 
</td><td width="100%" height="100%" valign="top"><a name="wpsMainContent"></a><%-- Call the portal engine command to render the portlets for this page --%> 
<div id="mainContent"><portal-core:screenRender/></div></td></tr></table><%--@ include file="./footer.jspf" --%> 
<%--@ include file="./flyout.jspf" --%> 
</div></body></html>
