package kz.bitlab.techorda.db;

import java.util.ArrayList;

public class DBManager {

    private static final ArrayList<Book> books = new ArrayList<>();
    private static int id = 5;
    static{
        books.add(
                new Book(1,
                        "Harry Potter and Phisolophy stone",
                        "Fantasy",
                        "Asan ALikh",
                        5000,
                        "Harry Potter survives after Volendemort attack"
                )
        );

        books.add(
                new Book(2,
                        "Magia Utra",
                        "Samorazvitie",
                        "Alisher Manatbek",
                        3000,
                        "Kak pervy chas dnya opredelyayet vash uspeh"
                )
        );

        books.add(
                new Book(3,
                        "Atomic habbits",
                        "Samorazvitie",
                        "Elnar alskjasl;dfkj",
                        5000,
                        "Sozdat horoshye privichki i izbavitsa ot plohih"
                )
        );

        books.add(
                new Book(4,
                        "Dumai i Bogatei",
                        "Samorazvitie",
                        "Kuanish Almas",
                        5000,
                        "Myshlenie bogatovo cheloveka"
                )
        );

    }

    public static ArrayList<Book> getBooks(){
        return books;
    }

    public static void addBook(Book book){
        book.setId(id);
        books.add(book);
        id++;
    }

    public static Book getBook(int id){
        return books.stream().filter(book -> book.getId() == id).findFirst().orElse(null);
    }

    public static void updateBook(Book kitap){
        for(int i = 0; i < books.size(); i++){
            if(books.get(i).getId() == kitap.getId()){
                books.set(i, kitap);
                break;
            }
        }
    }

    public static void deleteBook(int id){
        for(int i = 0; i < books.size(); i++){
            if(books.get(i).getId() == id){
                books.remove(i);
                break;
            }
        }


    }
}
