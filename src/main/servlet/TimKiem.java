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
        String tunhap = req.getParameter("tukhachnhap");
        List<ChiTietTour> result = TourDB.searchTour(tunhap);
        if (result.size() > 0) {
            req.setAttribute("searchResult", result);
        }
        req.setAttribute("main_right", "timkiem");
        req.getRequestDispatcher("WEB-INF/index.jsp").forward(req, resp);
    }
}
