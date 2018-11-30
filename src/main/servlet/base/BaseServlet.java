package base;

import entity.ChiTietTour;
import utils.db.TourDB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public abstract class BaseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        List<ChiTietTour> tour = TourDB.AllTour();
        req.setAttribute("tour",tour);
        Map<String,String> listLoaiTour = TourDB.getListMaLoaiTour();
        req.setAttribute("listLoaiTour", listLoaiTour);
        List<ChiTietTour> danhSach1 = TourDB.getTourListByMaLoai("moi");
        List<ChiTietTour> danhSach2 = TourDB.getTourListByMaLoai("hot");
        List<ChiTietTour> danhsach3 = TourDB.getTourListByMaLoai("cokhuyenmai");
        req.setAttribute("tourlist1",danhSach1);
        req.setAttribute("tourlist2",danhSach2);
        req.setAttribute("tourlist3",danhsach3);
        process(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    public abstract void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
}
