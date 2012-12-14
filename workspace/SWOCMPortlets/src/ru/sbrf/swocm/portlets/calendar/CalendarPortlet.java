package ru.sbrf.swocm.portlets.calendar;

import java.io.*;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.portlet.*;

import com.mongodb.DB;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;

/**
 * A sample portlet based on GenericPortlet
 */
public class CalendarPortlet extends GenericPortlet {
    public static final String HOST = "localhost";
    public static final int PORT = 27017;
    public static final String DB_NAME = "swocm_db";

    private Mongo mongo = null;
    private DB db = null;

	public static final String JSP_FOLDER    = "/_Calendar/jsp/";    // JSP folder name

	public static final String VIEW_JSP      = "CalendarPortletView";         // JSP file name to be rendered on the view mode

	/**
	 * @see javax.portlet.Portlet#init()
	 */
	public void init() throws PortletException{
		super.init();
        try {
            mongo = new Mongo(HOST, PORT);
            db = mongo.getDB(DB_NAME);
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        }
	}

	/**
	 * Serve up the <code>view</code> mode.
	 * 
	 * @see javax.portlet.GenericPortlet#doView(javax.portlet.RenderRequest, javax.portlet.RenderResponse)
	 */
	public void doView(RenderRequest request, RenderResponse response) throws PortletException, IOException {
		// Set the MIME type for the render response
		response.setContentType(request.getResponseContentType());

		try {
			Date today = new SimpleDateFormat("dd.MM.yyyy HH:mm").parse("13.12.2012 00:00");

	        DBCursor cursor = db.getCollection("calendar").find();
	        List<Meeting> meetings = new ArrayList<Meeting>();
	        while(cursor.hasNext()) {
	        	DBObject obj = cursor.next();
	        	Date start = (Date) obj.get("start");
	        	if (start.after(today)) {
	        		meetings.add(
        				new Meeting(
    						(String)obj.get("name"),
    						(String)obj.get("description"),
    						(Date)obj.get("start"),
    						(Date)obj.get("end"),
    						((Double)obj.get("priority")).intValue()
        				));
	        	}
	        }

	        System.out.println("meetings = " + meetings);
	        request.setAttribute("meetings", meetings);
	    } catch(Exception e){
	    	e.printStackTrace();
	    } finally {
	        if (db != null)
	            db.requestDone();
	    }


		// Invoke the JSP to render
		PortletRequestDispatcher rd = getPortletContext().getRequestDispatcher(getJspFilePath(request, VIEW_JSP));
		rd.include(request,response);
	}

	/**
	 * Process an action request.
	 * 
	 * @see javax.portlet.Portlet#processAction(javax.portlet.ActionRequest, javax.portlet.ActionResponse)
	 */
	public void processAction(ActionRequest request, ActionResponse response) throws PortletException, java.io.IOException {
	}

	/**
	 * Returns JSP file path.
	 * 
	 * @param request Render request
	 * @param jspFile JSP file name
	 * @return JSP file path
	 */
	private static String getJspFilePath(RenderRequest request, String jspFile) {
		String markup = request.getProperty("wps.markup");
		if( markup == null )
			markup = getMarkup(request.getResponseContentType());
		return JSP_FOLDER + markup + "/" + jspFile + "." + getJspExtension(markup);
	}

	/**
	 * Convert MIME type to markup name.
	 * 
	 * @param contentType MIME type
	 * @return Markup name
	 */
	private static String getMarkup(String contentType) {
		if( "text/vnd.wap.wml".equals(contentType) )
			return "wml";
        else
            return "html";
	}

	/**
	 * Returns the file extension for the JSP file
	 * 
	 * @param markupName Markup name
	 * @return JSP extension
	 */
	private static String getJspExtension(String markupName) {
		return "jsp";
	}

}
