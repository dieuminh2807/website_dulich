import utils.db.TourDB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

public abstract class BaseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String,String> listLoaiTour = TourDB.getListMaLoaiTour();
        req.setAttribute("listLoaiTour", listLoaiTour);
        process(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    public abstract void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
}
