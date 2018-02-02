package ru;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import ru.service.BookService;

public class Main {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(SpringConfig.class);
        BookService service = context.getBean(BookService.class);
        for (int i = 0; i < 21; i++)
            service.createBook("Вий", "Книга про зло", "918563247", "Николай Гоголь", 1850);
    }
}
