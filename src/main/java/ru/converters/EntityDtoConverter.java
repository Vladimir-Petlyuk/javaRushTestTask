package ru.converters;

import ru.dao.entity.Book;
import ru.model.BookDto;

public class EntityDtoConverter {

    public static Book convert(BookDto bookDto) {
        Book book = new Book();
        if (bookDto.getId() != null)
            book.setId(bookDto.getId());
        if (bookDto.getAuthor() != null)
            book.setAuthor(bookDto.getAuthor());
        if (bookDto.getDateOfCreation() != null)
            book.setDateOfCreation(bookDto.getDateOfCreation());
        if (bookDto.getDescription() != null)
            book.setDescription(bookDto.getDescription());
        if (bookDto.getIsbn() != null)
            book.setIsbn(bookDto.getIsbn());
        if (bookDto.getPrintYear() != null)
            book.setPrintYear(bookDto.getPrintYear());
        if (bookDto.getTitle() != null)
            book.setTitle(bookDto.getTitle());
        if (bookDto.getAdress() != null)
            book.setAdress(bookDto.getAdress());
        if (bookDto.isReadAlready())
            book.setReadAlready(true);
        if (!bookDto.isReadAlready())
            book.setReadAlready(false);
        return book;
    }
    public static BookDto convert(Book book) {
        BookDto bookDto = new BookDto();
        if (book.getId() != null)
            bookDto.setId(book.getId());
        if (book.getAuthor() != null)
            bookDto.setAuthor(book.getAuthor());
        if (book.getDateOfCreation() != null)
            bookDto.setDateOfCreation(book.getDateOfCreation());
        if (book.getDescription() != null)
            bookDto.setDescription(book.getDescription());
        if (book.getIsbn() != null)
            bookDto.setIsbn(book.getIsbn());
        if (book.getPrintYear() != null)
            bookDto.setPrintYear(book.getPrintYear());
        if (book.getTitle() != null)
            bookDto.setTitle(book.getTitle());
        if (book.getAdress() != null)
            bookDto.setAdress(book.getAdress());
        if (book.isReadAlready())
            bookDto.setReadAlready(true);
        if (!book.isReadAlready())
            bookDto.setReadAlready(false);
        return bookDto;
    }
}
