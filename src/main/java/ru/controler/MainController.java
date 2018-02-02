package ru.controler;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.model.BookDto;
import ru.service.BookService;

import java.util.List;

@Controller
public class MainController {

    @Autowired
    private BookService service;

    private static final Logger logger = Logger.getLogger(MainController.class);
    private static final int MAX_ROWS_PER_PAGE = 10;

    @RequestMapping("createBook")
    public ModelAndView createBook(@ModelAttribute BookDto book) {
        logger.info("Creating User. Data: " + book);
        return new ModelAndView("createBook", "book", book);
    }

    @RequestMapping("editBook")
    public ModelAndView editBook(@RequestParam Long id, @ModelAttribute BookDto book) {
        logger.info("Updating the User for the Id " + id);
        book = service.findById(id);
        service.updateBook(book);
        return new ModelAndView("updateBook", "book", book);
    }

    @RequestMapping("openBook")
    public void openBook(@RequestBody BookDto book) {
        book = service.findById(book.getId());
        logger.info("Saving the User. Data : " + book);
        book.setReadAlready(true);
        service.updateBook(book);
    }

    @RequestMapping("saveBook")
    public ModelAndView saveBook(@ModelAttribute BookDto book) {
        logger.info("Saving the User. Data : " + book);
        if (book.getId() == null) { // if user id is 0 then creating user other updating user
            service.createBook(book);
        } else {
            book.setReadAlready(false);
            service.updateBook(book);
        }
        return new ModelAndView("redirect:/");
    }

    @RequestMapping("deleteBook")
    public ModelAndView deleteBook(@RequestParam Long id) {
        logger.info("Deleting the User. Id : " + id);
        service.deleteBook(id);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = {"getAllBooks"})
    public ModelAndView getAllBooks() {
        logger.info("Getting all Books.");
        List<BookDto> booksList = service.getAllBooks();
        return new ModelAndView("allBooks", "booksList", booksList);
    }

    @RequestMapping("searchBook")
    public ModelAndView searchUser(@RequestParam("searchName") String searchName) {
        logger.info("Searching the User. User Names: " + searchName);
        List<BookDto> booksList = service.findByName(searchName);
        return new ModelAndView("allBooks", "booksList", booksList);
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView listOfBooks(@RequestParam(required = false) Integer page) {
        logger.info("Getting all Books.");
        ModelAndView modelAndView = new ModelAndView("allBooks");

        List<BookDto> booksList = service.getAllBooks();
        System.out.println(booksList);
        logger.info("Getting all Books." + booksList);
        PagedListHolder<BookDto> pagedListHolder = new PagedListHolder<>(booksList);
        pagedListHolder.setPageSize(MAX_ROWS_PER_PAGE);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            page = 1;
        }
        modelAndView.addObject("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            modelAndView.addObject("booksList", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            modelAndView.addObject("booksList", pagedListHolder.getPageList());
        }
        return modelAndView;
    }


}
