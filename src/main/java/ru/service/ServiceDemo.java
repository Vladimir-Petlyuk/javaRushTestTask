package ru.service;


import ru.model.BookDto;

import java.util.List;

public interface ServiceDemo {
    List<BookDto> getAllBooks();
    Long createBook(String title, String description, String isbn, String author, Integer printYear);
    Long createBook(BookDto book);
    Long updateBook(BookDto book);
    void deleteBook(BookDto book);
    void deleteBook(Long id);
    BookDto findById(Long id);
    List<BookDto> findByName(String name);
    BookDto findByTitle(String title);
    BookDto findByAdress(String adress);


}
