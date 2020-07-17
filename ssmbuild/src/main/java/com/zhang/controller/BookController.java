package com.zhang.controller;

import com.zhang.pojo.Books;
import com.zhang.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.xml.ws.RequestWrapper;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    //controller 调 service 层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //查询全部的书籍，并且返回到一个书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }
    @RequestMapping("/toAddBook")
    public String toAddpaper(){
        return "addBook";
    }
    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println("111");
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("books",books);
        return "updateBook";
    }
@RequestMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println("wojinlaile");
        System.out.println("updateBook=>"+books);
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    //查询书籍
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        Books books = bookService.queryBookByName(queryBookName);
        List<Books> list = new ArrayList<Books>();
        list.add(books);
        if(books==null){
            list = bookService.queryAllBook();
            model.addAttribute("error","没查到");
        }
        model.addAttribute("list",list);
        return "allBook";
    }

}
