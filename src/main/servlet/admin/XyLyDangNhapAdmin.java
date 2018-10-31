package admin;

import base.BaseServlet;
import utils.db.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class XyLyDangNhapAdmin extends BaseServlet {

    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        try {
            String sql = "select * from admin where username = ? and pword = ?";
            PreparedStatement pt = DatabaseUtil.getConnection().prepareStatement(sql);
            pt.setString(1, username);
            pt.setString(2, password);

            ResultSet rs = pt.executeQuery();
            HttpSession hs = req.getSession();
            if (rs.next()) {
                hs.setAttribute("username",username);
            } else {
                req.setAttribute("loidangnhap", "Nhập sai tên đăng nhập hoặc mật khấu!");
            }

            DatabaseUtil.closeConnection();
        } catch (Exception e) {
            e.printStackTrace();
            DatabaseUtil.closeConnection();
            req.setAttribute("loidangnhap", "Lỗi hệ thống!");
        }

        req.getRequestDispatcher("/admin").forward(req, resp);
    }
}
