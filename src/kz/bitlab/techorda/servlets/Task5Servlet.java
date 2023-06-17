package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/task5")
public class Task5Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            out.print("<form action = 'todo-task5' method = 'get'>");
            out.print("<input type = 'text' name = 'user_fullname'> Full Name <br><br>");
            out.print("<input type = 'number' name = 'user_age'> Age <br> <br>");
            out.print("Gender: <br><br>");
            out.print("<input type = 'radio' name = 'user_gender' value = 'm'> male<br>");
            out.print("<input type = 'radio' name = 'user_gender' value = 'f'> female<br><br>");
            out.print("<button>Send</button>");
            out.print("</form>");




    }
}
