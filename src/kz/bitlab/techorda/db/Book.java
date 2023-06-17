package kz.bitlab.techorda.db;

public class Book {

    private int id;
    private String name;
    private String genre;
    private String author;
    private double price;

    private String description;
    public Book(){

    }

    public Book(int id, String name, String genre, String author, double price) {
        this.id = id;
        this.name = name;
        this.genre = genre;
        this.author = author;
        this.price = price;
    }

    public Book(int id, String name, String genre, String author, double price, String description) {
        this.id = id;
        this.name = name;
        this.genre = genre;
        this.author = author;
        this.price = price;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
