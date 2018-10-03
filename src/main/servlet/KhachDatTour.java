import entity.ChiTietTour;
import utils.db.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class KhachDatTour extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String matour = req.getParameter("matour");
        Connection con = DatabaseUtil.getConnection();
        ChiTietTour chiTietTour = new ChiTietTour();
        try {
            PreparedStatement pstm = con.prepareStatement("Select * From tour Where matour = ?");
            pstm.setString(1,matour);
            ResultSet rs = pstm.executeQuery();

            if(rs.next()){
                String maTourdb =  rs.getString("matour");
                String maloaiTour =  rs.getString("maloaitour");
                String tenloaiTour =  rs.getString("tenloaitour");
                String tenTour =  rs.getString("tentour");
                Integer giave =  rs.getInt("giave");
                String thoigian  =  rs.getString("thoigian");
                String khoihanh =  rs.getString("khoihanh");
                String phuongtien =  rs.getString("phuongtien");
                String khachsan =  rs.getString("khachsan");
                String lichtrinh =  rs.getString("lichtrinh");

                chiTietTour.setMaTourdb(maTourdb);
                chiTietTour.setMaloaiTour(maloaiTour);
                chiTietTour.setTenloaiTour(tenloaiTour);
                chiTietTour.setTenTour(tenTour);
                chiTietTour.setGiave(giave);
                chiTietTour.setThoigian(thoigian);
                chiTietTour.setKhoihanh(khoihanh);
                chiTietTour.setPhuongtien(phuongtien);
                chiTietTour.setKhachsan(khachsan);
                chiTietTour.setLichtrinh(lichtrinh);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("chiTietTourData", chiTietTour);

        req.setAttribute("main_right", "dattour");

        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
