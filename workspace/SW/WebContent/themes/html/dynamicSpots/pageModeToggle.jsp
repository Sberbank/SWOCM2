<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../includePortalTaglibs.jspf" %>

<c:set var="privileged_user" value="<%= com.ibm.portal.ac.data.RoleType.PRIVILEGED_USER %>" />
<c:set var="editor" value="<%= com.ibm.portal.ac.data.RoleType.EDITOR %>" />
<c:set var="admin" value="<%= com.ibm.portal.ac.data.RoleType.ADMIN %>" />

<c:if test="${wp.selectionModel.selected.contentNode.contentNodeType != 'LABEL' && (wp.ac[wp.selectionModel.selected.contentNode].hasPermission[privileged_user] || wp.ac[wp.selectionModel.selected.contentNode].hasPermission[editor] || wp.ac[wp.selectionModel.selected.contentNode].hasPermission[admin] || wp.ac[wp.selectionModel.selected].hasPermission[privileged_user] || wp.ac[wp.selectionModel.selected].hasPermission[editor] || wp.ac[wp.selectionModel.selected].hasPermission[admin])}">
<a role="button" id="wpthemeModeToggle" href="javascript:;" class="wpthemeEditControl wpthemeRight wpthemeActionDisabled" title="<portal-fmt:text key="theme_go_to_edit" bundle="nls.Theme"/>" 
  onclick='javascript:if (typeof wptheme != "undefined") wptheme.togglePageMode("<portal-fmt:out><portal-fmt:text key="theme_go_to_edit" bundle="nls.Theme"/></portal-fmt:out>", "<portal-fmt:out><portal-fmt:text key="theme_go_to_view" bundle="nls.Theme"/></portal-fmt:out>", "<portal-fmt:out><portal-fmt:text key="theme.accessView" bundle="nls.commonUI"/></portal-fmt:out>", "<portal-fmt:out><portal-fmt:text key="theme.accessEdit" bundle="nls.commonUI"/></portal-fmt:out>");'
  onmousemove="javascript:if (typeof i$ != 'undefined' && typeof wptheme != 'undefined') { i$.removeClass(this,'wpthemeActionDisabled'); this.onmousemove = null; }">
  <img id="wpthemeModeToggleImg" src="/wps/themeModules/themes/html/dynamicSpots/icons/blank.gif" alt="<portal-fmt:text key="theme_go_to_edit" bundle="nls.Theme"/>" >
  <span class="wpthemeAccess" id="wpthemeModeToggleAltText"><portal-fmt:text key="theme_go_to_edit" bundle="nls.Theme"/></span>
  <span class="wpthemeAccess" id="wpthemeModeToggleAccess"><portal-fmt:text key="theme.accessEdit" bundle="nls.commonUI"/></span>
</a>
</c:if>