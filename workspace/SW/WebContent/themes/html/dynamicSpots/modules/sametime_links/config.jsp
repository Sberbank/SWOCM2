<%@ page session="false" buffer="none" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="/WEB-INF/tld/people.tld" prefix="pa" %>
<%@ include file="../../../includePortalTaglibs.jspf" %>
<%@ taglib uri="/WEB-INF/tld/menu.tld" prefix="menu" %>
<portal-logic:if loggedIn="yes">
<pa:peopleinit/>
<pa:peopleend/>
<menu:menuinit/>
</portal-logic:if>
