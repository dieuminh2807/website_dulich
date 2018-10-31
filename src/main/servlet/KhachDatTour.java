import base.BaseServlet;
import entity.ChiTietTour;
import utils.db.TourDB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class KhachDatTour extends BaseServlet {
    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String matour = req.getParameter("matour");
        ChiTietTour chiTietTour = TourDB.hienThiCCT(matour);

        req.setAttribute("chiTietTourData", chiTietTour);

        req.setAttribute("main_right", "dattour");

        req.getRequestDispatcher("WEB-INF/index.jsp").forward(req,resp);
    }
}
