package ru.sbrf.swocm.portlets.as;

import java.io.IOException;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.Mongo;

public class AcceptMeetingServlet extends HttpServlet {
    public static final String HOST = "localhost";
    public static final int PORT = 27017;
    public static final String DB_NAME = "swocm_db";

    private Mongo mongo = null;
    private DB db = null;
    
    private SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");

    @Override
    public void init() throws ServletException {
        try {
            mongo = new Mongo(HOST, PORT);
            db = mongo.getDB(DB_NAME);
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
    	System.out.println("AcceptMeetingServlet.service()");
		String name = req.getParameter("name");
		Integer startH = Integer.valueOf(req.getParameter("startH"));
		Integer startM = Integer.valueOf(req.getParameter("startM"));
		Integer duration = Integer.valueOf(req.getParameter("duration"));

		DBCollection coll = db.getCollection("calendar");

		DBObject meeting = new BasicDBObject();
		meeting.put("name", name);
		meeting.put("description", "");
		meeting.put("priority", 2);
		meeting.put("accepted", true);

		Date start = new Date();
		start.setHours(startH);
		start.setMinutes(startM);

		meeting.put("start", start);

		Date end = (Date) start.clone();
		end.setMinutes(end.getMinutes() + duration);

		meeting.put("end", end);
		
		System.out.println("meeting = " + meeting);
		coll.insert(meeting);
	}
}