import utils.db.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;


public class XuLyDangKy extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullname = req.getParameter("fullname");
        String user = req.getParameter("username");
        String pass = req.getParameter("password");
        String phone = req.getParameter("phone");
        String adress = req.getParameter("adress");
        String email = req.getParameter("email");
        try {
            String sql = "insert into user_account(username,pword,address,email,phone,fullname)value(?,?,?,?,?,?)";

            PreparedStatement ps = DatabaseUtil.getConnection().prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, adress);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, fullname);

            Integer rs = ps.executeUpdate();

            if(rs == 1) {
                req.setAttribute("dangnhapthanhcong", "Bạn đã đăng ký thành công!");
                req.getSession().setAttribute("username", user );

            } else {
                req.setAttribute("loidangky", "Hệ thống đang có lỗi, vui lòng thử lại sau!");

            }
            DatabaseUtil.closeConnection();

        }
        catch (Exception e){
            e.printStackTrace();
            DatabaseUtil.closeConnection();
            req.setAttribute("loidangky", "Hệ thống đang có lỗi, vui lòng thử lại sau!");
        }

        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
