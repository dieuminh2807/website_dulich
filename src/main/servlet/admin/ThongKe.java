package admin;

import base.BaseServlet;
import utils.db.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

public class ThongKe extends BaseServlet {
    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, Integer> soLanDat = ThongKeDB.Solandat();
        req.setAttribute("soLanDat",soLanDat);
        req.setAttribute("main_type","thongke");
        req.getRequestDispatcher("/admin").forward(req,resp);
    }
}
