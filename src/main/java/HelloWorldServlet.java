
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.swing.*;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType ("text/html");
        String name = request.getParameter("name");
        PrintWriter out = response.getWriter();
        String cust = name == (null) || name.isEmpty()?"World":name;
        out.printf("<h1>Hello %s</h1>", cust);
        out.println("Hello, world");
        out.println("Hey there");
    }
}