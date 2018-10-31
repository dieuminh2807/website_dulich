import base.BaseServlet;
import entity.ChiTietTour;
import utils.db.TourDB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class DanhSachTourTheoLoai extends BaseServlet {

    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String maloaitour = req.getParameter("maloaitour");
        List<ChiTietTour> tour = TourDB.getTourListByMaLoai(maloaitour);
        ChiTietTour tenloaitour = TourDB.tenMaLoai(maloaitour);
        req.setAttribute("tenloaitour",tenloaitour);
        req.setAttribute("TourListByMaLoai",tour);
        req.setAttribute("main_right","danhsachtourtheoloai");
        req.getRequestDispatcher("WEB-INF/index.jsp").forward(req, resp);
    }
}
