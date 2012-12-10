<%@ page session="false" buffer="none" %>
<%@ include file="./includePortalTaglibs.jspf" %>
<table class="layoutRow" cellpadding="0" cellspacing="0">
	<tr>
<%
    boolean hasChildren = false;
%>
        <portal-skin:layoutNodeLoop var="currentLayoutNode">
            <%
              hasChildren = true;
              String columnWidth = (String)currentLayoutNode.getMetrics().getValue(com.ibm.portal.content.CompositionMetrics.WIDTH);
            %>

		<td valign="top" <% if (columnWidth != null){
								out.print ("width=\"");
								out.print (columnWidth);
								out.print ("\"");
							} %>>
            <portal-skin:layoutNodeRender/>
		</td>

        </portal-skin:layoutNodeLoop>
        <%                                                                                                                        
        if (!hasChildren) {%>
            <td width="100%">&nbsp;</td>
        <%}%>
	</tr>
</table>
