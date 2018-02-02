package ru.dao.entity;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Objects;

/**
 * Created by Владимир on 04.06.2017.
 */
@Entity
@Table(name = "BOOK")
public class Book {
    @Id
    @Column(name = "ID", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "DATEOFCREATION", nullable = false)
    private LocalDateTime dateOfCreation = LocalDateTime.now();
    @Column(name = "TITLE", nullable = false, length = 100)
    private String title;
    @Column(name = "DESCRIPTION")
    private String description;
    @Column(name = "AUTHOR", nullable = false)
    private String author;
    @Column(name = "ISBN", nullable = false, length = 20)
    private String isbn;
    @Column(name = "PRINTYEAR")
    private Integer printYear;
    @Column(name = "READALREADY")
    private boolean readAlready;
    @Column(name = "ADRESS")
    private String adress;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getDateOfCreation() {
        return dateOfCreation;
    }

    public void setDateOfCreation(LocalDateTime dateOfCreation) {
        this.dateOfCreation = dateOfCreation;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public Integer getPrintYear() {
        return printYear;
    }

    public void setPrintYear(Integer printYear) {
        this.printYear = printYear;
    }

    public boolean isReadAlready() {
        return readAlready;
    }

    public void setReadAlready(boolean readAlready) {
        this.readAlready = readAlready;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Book book = (Book) o;
        return readAlready == book.readAlready &&
                Objects.equals(id, book.id) &&
                Objects.equals(dateOfCreation, book.dateOfCreation) &&
                Objects.equals(title, book.title) &&
                Objects.equals(description, book.description) &&
                Objects.equals(author, book.author) &&
                Objects.equals(isbn, book.isbn) &&
                Objects.equals(printYear, book.printYear) &&
                Objects.equals(adress, book.adress);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, dateOfCreation, title, description, author, isbn, printYear, readAlready, adress);
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", dateOfCreation=" + dateOfCreation +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", author='" + author + '\'' +
                ", isbn='" + isbn + '\'' +
                ", printYear=" + printYear +
                ", readAlready=" + readAlready +
                ", adress='" + adress + '\'' +
                '}';
    }
}
