package admin;

import utils.db.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class XyLyDangNhapAdmin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {

            String sql = "select * from admin where username = ? and pword = ?";

            PreparedStatement pt = DatabaseUtil.getConnection().prepareStatement(sql);

            pt.setString(1, username);
            pt.setString(2, password);

            ResultSet rs = pt.executeQuery();
            HttpSession hs = request.getSession();
            if (rs.next()) {
                hs.setAttribute("userAdmin",username);
            } else {
                request.setAttribute("loidangnhap", "Nhập sai username hoặc password!");
            }
            request.getRequestDispatcher("index.jsp").forward(request, response);
            DatabaseUtil.closeConnection();
        } catch (Exception e) {
            e.printStackTrace();
            DatabaseUtil.closeConnection();
        }
    }
}
