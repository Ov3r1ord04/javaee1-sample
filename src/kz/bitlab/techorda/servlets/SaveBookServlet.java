package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.Book;
import kz.bitlab.techorda.db.DBConnection;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Author;

import java.io.IOException;

@WebServlet(value = "/save-book")
public class SaveBookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("book_id"));
        String name = request.getParameter("book_name");
        int author_id = Integer.parseInt(request.getParameter("book_author"));
        String genre = request.getParameter("book_genre");
        String price = request.getParameter("book_price");
        String description = request.getParameter("book_description");
        double bookPrice = Double.parseDouble(price);

        Book book = DBConnection.getBook(id);
        Author author = DBConnection.getAuthor(author_id);

        if(book != null && author != null){
            book.setName(name);
            book.setGenre(genre);
            book.setPrice(bookPrice);
            book.setDescription(description);
            book.setAuthor(author);
            DBConnection.updateBook(book);
            response.sendRedirect("/details?book_id="+id);



        }
        else{
            response.sendRedirect("/");
            System.out.println("ITSL");
        }

    }
}
