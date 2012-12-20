package ru.sbrf.swocm.prototype;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoOptions;
import com.mongodb.util.JSON;
import org.apache.commons.lang.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.UnknownHostException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author SBT-Izhikov-NV
 */
public class MongoDBProxyServlet extends HttpServlet {
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
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json; charset=UTF-8");

        try {
            String collectionName = req.getParameter("cn");
            if (StringUtils.isEmpty(collectionName))
                collectionName = "calendar";

            DBCursor cursor = getCursor(collectionName, req);
	        resp.getWriter().write(JSON.serialize(cursor.toArray()));
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ParseException e) {
            throw new RuntimeException(e);
		} finally {
            if (db != null)
                db.requestDone();
        }
    }

	private DBCursor getCursor(String name, HttpServletRequest req) throws ParseException {
		if (name.equals("calendar")) {
			Date d = format.parse(req.getParameter("date"));
			Date nextD = (Date) d.clone();
			nextD.setDate(nextD.getDate()+1);

			BasicDBObject condition = new BasicDBObject("$lte", nextD);
			condition.put("$gte", d);

			BasicDBObject query = new BasicDBObject("start", condition);

			return db.getCollection(name).find(query);
		}

		return db.getCollection(name).find();
	}
}
