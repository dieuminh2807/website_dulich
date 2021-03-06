import utils.db.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class XuLyDangNhap extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {

            String sql = "select * from user_account where username = ? and pword = ? and role = 0";

            PreparedStatement pt = DatabaseUtil.getConnection().prepareStatement(sql);
            pt.setString(1, username);
            pt.setString(2, password);

            ResultSet rs = pt.executeQuery();
            HttpSession hs = request.getSession();
            if (rs.next()) {
                hs.setAttribute("username",username);
            } else {
                request.setAttribute("loidangnhap", "Nhập sai username hoặc password!");
            }

            DatabaseUtil.closeConnection();
            request.getSession().getAttribute("username");
            request.getRequestDispatcher("index.jsp").forward(request, response);



        } catch (Exception e) {
            e.printStackTrace();
            DatabaseUtil.closeConnection();
        }
    }
}
