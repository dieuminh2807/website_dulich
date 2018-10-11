import entity.ChiTietTour;
import utils.db.TourDB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class IndexServlet extends BaseServlet {

    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<ChiTietTour>  danhSach1 = TourDB.getTourListByMaLoai("moi");
        List<ChiTietTour> danhSach2 = TourDB.getTourListByMaLoai("nhieunguoidi");
        List<ChiTietTour> danhsach3 = TourDB.getTourListByMaLoai("cokhuyenmai");
        req.setAttribute("tourlist1",danhSach1);
        req.setAttribute("tourlist2",danhSach2);
        req.setAttribute("tourlist3",danhsach3);



        Map<String,String> listLoaiTour = TourDB.getListMaLoaiTour();
        req.setAttribute("listLoaiTour", listLoaiTour);

        req.getRequestDispatcher("WEB-INF/index.jsp").forward(req, resp);


    }
}
