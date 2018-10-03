package admin;

import utils.db.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class XuLyLoaiTour extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String xulyloaitour = req.getParameter("actionSubmit");

        if (xulyloaitour.equals("THEM")) {
            String maLoai = req.getParameter("maLoai");
            String tenLoai = req.getParameter("tenLoai");
            int thuTu = Integer.parseInt(req.getParameter("thuTu"));
            int trangThai = Integer.parseInt(req.getParameter("trangThai"));

            String sql = "INSERT INTO loaitour(`maloai`, `tenloai`, `thutu`, `trangthai`) values(?,?,?,?)";
            try {
                PreparedStatement pstm = DatabaseUtil.getConnection().prepareStatement(sql);
                pstm.setString(1, maLoai);
                pstm.setString(2, tenLoai);
                pstm.setInt(3, thuTu);
                pstm.setInt(4, trangThai);
                int i = pstm.executeUpdate();
                if (i == 1) {
                    req.setAttribute("thanhcong", "thêm thành công loại tour với mã loại " + maLoai);
                    req.getRequestDispatcher("index.jsp?display=quanlyloaitour").forward(req, resp);
                } else {
                    req.setAttribute("loi", "Lỗi thêm loại tour vào CSDL, vui lòng thử lại sau! ");
                    req.getRequestDispatcher("index.jsp?display=quanlyloaitour").forward(req, resp);
                }
                DatabaseUtil.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
                req.setAttribute("loi", "Lỗi thêm loại tour vào CSDL, vui lòng thử lại sau! ");
                req.getRequestDispatcher("index.jsp?display=quanlyloaitour").forward(req, resp);
                DatabaseUtil.closeConnection();
            }
        } else if (xulyloaitour.equals("SUA")) {
            String maLoai = req.getParameter("maLoai");
            String tenLoai = req.getParameter("tenLoai");
            int thuTu = Integer.parseInt(req.getParameter("thuTu"));
            int trangThai = Integer.parseInt(req.getParameter("trangThai"));
            int id = Integer.parseInt(req.getParameter("id"));
            String sql = "UPDATE loaitour SET maloai =?, tenloai=?, thutu=? , trangthai =? WHERE id=?";
            try {
                PreparedStatement pstm = DatabaseUtil.getConnection().prepareStatement(sql);
                pstm.setString(1, maLoai);
                pstm.setString(2, tenLoai);
                pstm.setInt(3, thuTu);
                pstm.setInt(4, trangThai);
                pstm.setInt(5, id);
                int i = pstm.executeUpdate();
                if (i == 1) {
                    req.setAttribute("thanhcong", "Sửa thành công loại tour với mã loại " + maLoai);
                    req.getRequestDispatcher("index.jsp?display=quanlyloaitour").forward(req, resp);
                } else {
                    req.setAttribute("loi", "Lỗi Sửa loại tour vào CSDL, vui lòng thử lại sau! ");
                    req.getRequestDispatcher("index.jsp?display=quanlyloaitour").forward(req, resp);
                }
                DatabaseUtil.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
                req.setAttribute("loi", "Lỗi Sửa loại tour vào CSDL, vui lòng thử lại sau! ");
                req.getRequestDispatcher("index.jsp?display=quanlyloaitour").forward(req, resp);
                DatabaseUtil.closeConnection();
            }
        } else if (xulyloaitour.equals("XOA")) {
            int id = Integer.parseInt(req.getParameter("id"));
            String sql = "DELETE FROM loaitour WHERE id = ?";
            try {
                PreparedStatement pstm = DatabaseUtil.getConnection().prepareStatement(sql);
                pstm.setInt(1, id);
                int i = pstm.executeUpdate();
                if (i == 1) {
                    req.setAttribute("thanhcong", "Xóa thành công loại tour.");
                    req.getRequestDispatcher("index.jsp?display=quanlyloaitour").forward(req, resp);
                } else {
                    req.setAttribute("loi", "Lỗi Xóa loại tour, vui lòng thử lại sau! ");
                    req.getRequestDispatcher("index.jsp?display=quanlyloaitour").forward(req, resp);
                }
                DatabaseUtil.closeConnection();
            } catch (SQLException e) {
                e.printStackTrace();
                req.setAttribute("loi", "Lỗi Xóa loại tour, vui lòng thử lại sau! ");
                req.getRequestDispatcher("index.jsp?display=quanlyloaitour").forward(req, resp);
                DatabaseUtil.closeConnection();
            }
        }


    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}