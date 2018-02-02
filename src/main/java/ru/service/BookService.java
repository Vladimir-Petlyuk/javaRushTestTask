package ru.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.dao.BookDao;
import ru.model.BookDto;
import java.util.List;

@Service
public class BookService implements ServiceDemo {

    @Autowired
    private BookDao bookDao;


    @Override
    public List<BookDto> getAllBooks() {
        return bookDao.findAll();
    }

    @Override
    public Long createBook(String title, String description, String isbn, String author, Integer printYear) {
        BookDto book = new BookDto(title,description,author,isbn,printYear);
        return bookDao.create(book);
    }

    @Override
    public Long createBook(BookDto book) {
        return bookDao.create(book);
    }

    @Override
    public Long updateBook(BookDto book) {
        return bookDao.update(book);
    }

    @Override
    public void deleteBook(BookDto book) {
        bookDao.remove(book);
    }

    @Override
    public void deleteBook(Long id) {
        bookDao.remove(bookDao.findById(id));
    }

    @Override
    public BookDto findById(Long id) {
        return bookDao.findById(id);
    }

    @Override
    public List<BookDto> findByName(String name) {
      return  bookDao.findByAll(name);
    }

    @Override
    public BookDto findByTitle(String title) {
        return bookDao.findByTitle(title).get(0);
    }

    @Override
    public BookDto findByAdress(String adress) {
        return bookDao.findByAdress(adress);
    }

}

