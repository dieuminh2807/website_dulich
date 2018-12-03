package admin;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class GuiMailChoKhach extends base.BaseServlet {

    @Override
    public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();

        String to = req.getParameter("to");
        String subject = req.getParameter("subject");
        String message =  req.getParameter("message");
        String user = req.getParameter("user");
        String pass = req.getParameter("pass");
        GuiMailDB.send(to,subject, message, user, pass);
        req.getRequestDispatcher("/admin").forward(req, resp);
    }
}
