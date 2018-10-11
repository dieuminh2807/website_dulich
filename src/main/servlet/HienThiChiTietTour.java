import entity.ChiTietTour;
import utils.db.DatabaseUtil;
import utils.db.TourDB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class HienThiChiTietTour extends BaseServlet {
    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String matour = req.getParameter("matour");
        ChiTietTour ct = TourDB.hienThiCCT(matour);

            req.setAttribute("chiTietTourData", ct);

            req.setAttribute("main_right", "chitiettour");

            req.getRequestDispatcher("WEB-INF/index.jsp").forward(req,resp);

    }
}
