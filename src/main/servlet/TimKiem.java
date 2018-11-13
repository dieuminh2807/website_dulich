import base.BaseServlet;
import entity.ChiTietTour;
import utils.db.TourDB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class TimKiem extends BaseServlet {
    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if("nangcao".equals(action)) {
            String diemdenSearch = req.getParameter("diemdenSearch");
            String phuongtienSearch = req.getParameter("phuongtienSearch");
            String giaSearch = req.getParameter("giaSearch");

            List<ChiTietTour> resultNC = TourDB.searchTourNangCao(diemdenSearch,phuongtienSearch,giaSearch);
            if (resultNC.size() > 0) {
                req.setAttribute("searchResultNC", resultNC);
            }
            req.setAttribute("main_right", "timkiemNC");
            req.getRequestDispatcher("WEB-INF/index.jsp").forward(req, resp);
            } else {
            String tunhap = req.getParameter("tukhachnhap");
            List<ChiTietTour> result = TourDB.searchTour(tunhap);
            if (result.size() > 0) {
                req.setAttribute("searchResult", result);
            }
            req.setAttribute("main_right", "timkiem");
            req.getRequestDispatcher("WEB-INF/index.jsp").forward(req, resp);
        }
    }
}

