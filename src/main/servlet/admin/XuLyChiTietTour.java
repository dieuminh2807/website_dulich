package admin;

import utils.db.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class XuLyChiTietTour extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String xulychitiettour = req.getParameter("actionSubmit");

        if (xulychitiettour.equals("THEM")) {
            String loaiTour = req.getParameter("loaiTour");
            String maTour = req.getParameter("maTour");
            String tenTour = req.getParameter("tenTour");
            String giaVe = req.getParameter("giaVe");
            String thoiDiem = req.getParameter("thoiDiem");
            String Den = req.getParameter("Den");
            int soNgay = Integer.parseInt(req.getParameter("soNgay"));


            String sql = "INSERT INTO chitiettour(`loaitour`,`matour`,`tentour`,`giave`,`diadiemdi`,`diadiemden`,`songaytour`) values(?,?,?,?,?,?,?)";
            try {
                PreparedStatement pstm = DatabaseUtil.getConnection().prepareStatement(sql);
                pstm.setString(1, loaiTour);
                pstm.setString(2, maTour);
                pstm.setString(3, tenTour);
                pstm.setString(4, giaVe);
                pstm.setString(5, thoiDiem);
                pstm.setString(6, Den);
                pstm.setInt(7, soNgay);
                int i = pstm.executeUpdate();
                if (i == 1) {
                    req.setAttribute("thanhcong", "thêm thành công chi tiet tour với mã tour " + maTour);
                    req.getRequestDispatcher("index.jsp?display=quanlychitiettour").forward(req, resp);
                } else {
                    req.setAttribute("loi", "Lỗi thêm chi tiet tour vào CSDL, vui lòng thử lại sau! ");
                    req.getRequestDispatcher("index.jsp?display=quanlychitiettour").forward(req, resp);
                }
                DatabaseUtil.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
                req.setAttribute("loi", "Lỗi thêm chi tiet tour vào CSDL, vui lòng thử lại sau! ");
                req.getRequestDispatcher("index.jsp?display=quanlychitiettour").forward(req, resp);
                DatabaseUtil.closeConnection();
            }
        } else if (xulychitiettour.equals("SUA")) {
            String loaiTour = req.getParameter("loaiTour");
            String maTour = req.getParameter("maTour");
            String tenTour = req.getParameter("tenTour");
            String giaVe = req.getParameter("giaVe");
            String thoiDiem = req.getParameter("thoiDiem");
            String Den = req.getParameter("Den");
            int soNgay = Integer.parseInt(req.getParameter("soNgay"));

            String sql = "UPDATE chitiettour SET loaiTour =?, maTour=?, tenTour=? , giaVe =?,thoiDiem=? ,Den=? ,soNgay=? , WHERE id=?";
            try {
                PreparedStatement pstm = DatabaseUtil.getConnection().prepareStatement(sql);
                pstm.setString(1, loaiTour);
                pstm.setString(2, maTour);
                pstm.setString(3, tenTour);
                pstm.setString(4, giaVe);
                pstm.setString(5, thoiDiem);
                pstm.setString(6, Den);
                pstm.setInt(7, soNgay);
                int i = pstm.executeUpdate();
                if (i == 1) {
                    req.setAttribute("thanhcong", "Sửa thành công chi tiet tour với mã tour " + maTour);
                    req.getRequestDispatcher("index.jsp?display=quanlychitiettour").forward(req, resp);
                } else {
                    req.setAttribute("loi", "Lỗi Sửa chi tiet tour, vui lòng thử lại sau! ");
                    req.getRequestDispatcher("index.jsp?display=quanlychitiettour").forward(req, resp);
                }
                DatabaseUtil.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
                req.setAttribute("loi", "Lỗi Sửa chi tiet tour vào CSDL, vui lòng thử lại sau! ");
                req.getRequestDispatcher("index.jsp?display=quanlychitiettour").forward(req, resp);
                DatabaseUtil.closeConnection();
            }
        } else if (xulychitiettour.equals("XOA")) {
            int id = Integer.parseInt(req.getParameter("id"));
            String sql = "DELETE FROM chitiettour WHERE id = ?";
            try {
                PreparedStatement pstm = DatabaseUtil.getConnection().prepareStatement(sql);
                pstm.setInt(1, id);
                int i = pstm.executeUpdate();
                if (i == 1) {
                    req.setAttribute("thanhcong", "Xóa thành công chi tiet tour.");
                    req.getRequestDispatcher("index.jsp?display=quanlychitiettour").forward(req, resp);
                } else {
                    req.setAttribute("loi", "Lỗi Xóa chi tiet tour, vui lòng thử lại sau! ");
                    req.getRequestDispatcher("index.jsp?display=quanlychitiettour").forward(req, resp);
                }
                DatabaseUtil.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
                req.setAttribute("loi", "Lỗi Xóa chi tiet tour, vui lòng thử lại sau! ");
                req.getRequestDispatcher("index.jsp?display=quanlychitiettour").forward(req, resp);
                DatabaseUtil.closeConnection();
            }
        }


    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}