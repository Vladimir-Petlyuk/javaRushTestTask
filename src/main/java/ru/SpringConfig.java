package ru;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ComponentScan("ru")
@ImportResource({ "classpath:/app-context.xml" })
public class SpringConfig {
}
