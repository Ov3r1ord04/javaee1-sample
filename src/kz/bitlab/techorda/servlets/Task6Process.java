package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/task6-process")
public class Task6Process extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        String name = req.getParameter("full_name");
        int point = Integer.parseInt(req.getParameter("points"));

        PrintWriter out = resp.getWriter();

        String mark = "F";

        if(point >= 90){
            mark = "A";
        }
        else if(point >= 75){
            mark = "B";
        }
        else if(point >= 60){
            mark = "C";
        }
        else if(point >= 50){
            mark = "D";
        }




        out.print("<h1>" + name + " GOT '" + mark + "' FROM EXAM</h1>");



    }


}
