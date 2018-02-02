package ru.dao;

import ru.model.BookDto;
import java.util.List;

public interface BookDao extends GenericDao<BookDto> {
    List<BookDto> findByTitle(String title);
    BookDto findByAdress(String adress);
    List<BookDto> findByAuthor(String author);
    BookDto findByISBN(String isbn);
    List<BookDto> findByPrintYear(int printYear);

}
