package ru.sbrf.swocm.prototype;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.Mongo;
import com.mongodb.util.JSON;
import org.apache.commons.lang.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.UnknownHostException;

/**
 * @author SBT-Izhikov-NV
 */
public class MongDBProxyServlet extends HttpServlet {
    public static final String HOST = "localhost";
    public static final int PORT = 27017;
    public static final String DB_NAME = "swocm_db";

    private Mongo mongo = null;
    private DB db = null;

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
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        try {
            String collectionName = req.getParameter("cn");
            if (StringUtils.isEmpty(collectionName))
                collectionName = "kpi_planning";

            DBCursor cursor = db.getCollection(collectionName).find();
            resp.getOutputStream().println(JSON.serialize(cursor.toArray()));
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            if (db != null)
                db.requestDone();
        }
    }
}
