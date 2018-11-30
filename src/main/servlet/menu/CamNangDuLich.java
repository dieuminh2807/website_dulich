package menu;

import base.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CamNangDuLich extends BaseServlet {
    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("main_right","camnangdulich");
        req.getRequestDispatcher("../WEB-INF/index.jsp").forward(req, resp);
    }
}
