package com.wi.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = {"com.wi.controller","com.wi.exception"})
@EnableWebMvc
public class WebConfig {   // it designs for handels the all-types request
    @Bean
    public ViewResolver viewResolver(){
        return new InternalResourceViewResolver("WEB-INF/view/",".jsp");
    }
}
