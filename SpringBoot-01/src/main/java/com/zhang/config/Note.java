package com.zhang.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

//import java.util.Locale;
////如果你想diy一个定制化的功能，只要写一个这样的组件，然后椒江交给spring boot，spring boot就会帮我们自动装配
//@Configuration
//public class Note implements WebMvcConfigurer {
//    //ViewResolver 实现了视图解析器的接口类，我们就可以把他直接看成视图解析器
//    @Bean
//    public ViewResolver myViewResolver(){
//        return new MyViewResolver();
//    }
//
//    //定义了一个自己的视图解析器myViewResolver
//    public static class MyViewResolver implements ViewResolver{
//
//        @Override
//        public View resolveViewName(String s, Locale locale) throws Exception {
//            return null;
//        }
//    }
//}
