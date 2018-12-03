package main.servlet.admin;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoadFormMail extends base.BaseServlet {
    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("main_type","formmail");
        req.getRequestDispatcher("/admin").forward(req, resp);
    }
}
