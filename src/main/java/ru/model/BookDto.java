package ru.model;


import java.time.LocalDateTime;
import java.util.Objects;

public class BookDto {

    private Long id;
    private LocalDateTime dateOfCreation = LocalDateTime.now();
    private String title;
    private String description;
    private String author;
    private String isbn;
    private Integer printYear;
    private boolean readAlready;
    private String adress;

    public BookDto() {
    }

    public BookDto(String title, String description, String author, String isbn, Integer printYear) {
        this.title = title;
        this.description = description;
        this.author = author;
        this.isbn = isbn;
        this.printYear = printYear;
    }

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
        BookDto bookDto = (BookDto) o;
        return readAlready == bookDto.readAlready &&
                Objects.equals(id, bookDto.id) &&
                Objects.equals(dateOfCreation, bookDto.dateOfCreation) &&
                Objects.equals(title, bookDto.title) &&
                Objects.equals(description, bookDto.description) &&
                Objects.equals(author, bookDto.author) &&
                Objects.equals(isbn, bookDto.isbn) &&
                Objects.equals(printYear, bookDto.printYear) &&
                Objects.equals(adress, bookDto.adress);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, dateOfCreation, title, description, author, isbn, printYear, readAlready, adress);
    }

    @Override
    public String toString() {
        return "BookDto{" +
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