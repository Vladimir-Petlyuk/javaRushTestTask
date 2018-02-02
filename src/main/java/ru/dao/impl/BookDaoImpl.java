package ru.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import ru.dao.BookDao;
import ru.dao.entity.Book;
import ru.model.BookDto;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

import static ru.converters.EntityDtoConverter.convert;

@Repository
@Transactional
public class BookDaoImpl implements BookDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional(readOnly = true)
    public List<BookDto> findByAuthor(String author) {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Book.class);
        if (author.trim().contains(" ")) {
            criteria.add(Restrictions.like("author", "%" + author.split(" ")[0] + "%"));
        } else
            criteria.add(Restrictions.like("author", "%" + author.trim() + "%"));
        criteria.addOrder(Order.asc("title")).list();
        List books = criteria.list();
        List<BookDto> result = new ArrayList<>(books.size());
        for (Object book : books) {
            result.add(convert((Book) book));
        }
        return result;
    }

    @Override
    @Transactional(readOnly = true)
    public List<BookDto> findByTitle(String title) {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Book.class).add(Restrictions.like("title", "%" + title.trim() + "%"));
        criteria.addOrder(Order.asc("title")).list();
        List books = criteria.list();
        List<BookDto> result = new ArrayList<>(books.size());
        for (Object book : books) {
            result.add(convert((Book) book));
        }
        return result;
    }

    @Override
    public BookDto findByAdress(String adress) {
        List books = sessionFactory.getCurrentSession().createQuery("select i from Book i where i.adress=:adress").setParameter("adress", adress.trim()).list();
        if (books.isEmpty()) {
            return null;
        } else {
            return convert((Book) books.get(0));
        }
    }

    @Override
    @Transactional(readOnly = true)
    public BookDto findByISBN(String isbn) {
        List books = sessionFactory.getCurrentSession().createQuery("select i from Book i where i.isbn=:isbn").setParameter("isbn", isbn.trim()).list();
        if (books.isEmpty()) {
            return null;
        } else {
            return convert((Book) books.get(0));
        }
    }

    @Override
    public List<BookDto> findByPrintYear(int printYear) {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Book.class).add(Restrictions.eq("printYear", printYear));
        criteria.addOrder(Order.asc("title")).list();
        List books = criteria.list();
        List<BookDto> result = new ArrayList<>(books.size());
        for (Object book : books) {
            result.add(convert((Book) book));
        }
        return result;
    }

    @Override
    @Transactional(readOnly = true)
    public List<BookDto> findAll() {
        List books = sessionFactory.getCurrentSession().createCriteria(Book.class).addOrder(Order.asc("title")).list();
        List<BookDto> result = new ArrayList<>(books.size());
        for (Object book : books) {
            result.add(convert((Book) book));
        }
        return result;
    }

    @Override
    @Transactional(readOnly = true)
    public BookDto findById(Long id) {
        return convert((Book) sessionFactory.getCurrentSession().load(Book.class, id));
    }

    @Override
    @Transactional(readOnly = true)
    public List<BookDto> findByAll(String name) {
        List<BookDto> result = new ArrayList<>();
        if (name.trim().matches("[\\d]+") && name.length() != 4) {
            result.add(findByISBN(name));
        }
        if (name.trim().matches("[\\d]+") && name.length() == 4) {
            result.addAll(findByPrintYear(Integer.parseInt(name)));
        } else {
            result.addAll(findByAuthor(name));
            result.addAll(findByTitle(name));
        }

        return result;

    }


    @Override
    public Long create(BookDto bookDto) {
        Book book = convert(bookDto);
        sessionFactory.getCurrentSession().save(book);
        return book.getId();
    }

    @Override
    public Long update(BookDto bookDto) {
        Book book = convert(bookDto);
        sessionFactory.getCurrentSession().update(book);
        return book.getId();
    }

    @Override
    public void remove(BookDto bookDto) {
        Book book = convert(bookDto);
        sessionFactory.getCurrentSession().delete(book);
    }
}

