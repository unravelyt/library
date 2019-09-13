package com.library.controller;

import com.github.pagehelper.PageInfo;
import com.library.domain.Books;
import com.library.domain.Classes;
import com.library.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    private BookService bookService;

    @RequestMapping("/findAll")
    public ModelAndView findAllBooks(@RequestParam(required = true, name = "pageNum", defaultValue = "1")int pageNum, @RequestParam(required = true, name = "pageSize", defaultValue = "5")int pageSize) {
        List<Books> booklist = bookService.findAllBooks(pageNum, pageSize);
        PageInfo pageInfo = new PageInfo(booklist);
        ModelAndView mv = new ModelAndView();
        mv.addObject("bookList", pageInfo);
        mv.setViewName("book-list");
        return mv;
    }

    @RequestMapping("/deleteBook")
    public String deleteBook(Long id) {
        bookService.deleteBook(id);
        return "redirect:/book/findAll?pageNum=1&pageSize=5";
    }

    @RequestMapping("/findById")
    public ModelAndView findById(Long id){
        Books book = bookService.findById(id);
        List<Classes> classlist = bookService.findAllClass();
        ModelAndView mv = new ModelAndView();
        mv.addObject("sqlclass", classlist);
        mv.addObject("sqlbook", book);
        mv.setViewName("book-edit");
        return mv;

    }

    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        bookService.updateBook(books);
        return "success";
    }

    @RequestMapping("/saveBook")
    public String saveBook(Books books) {
        bookService.saveBook(books);
        return "redirect:/book/findAll?pageNum=1&pageSize=5";
    }

    @RequestMapping("/findByCondition")
    public ModelAndView findByCondition(Books books, int pageNum, int pageSize) {
        if (books.getName().equals("")){
            books.setName(null);
        }
        if (books.getAuthor().equals("")){
            books.setAuthor(null);
        }
        if (books.getISBN().equals("")) {
            books.setISBN(null);
        }

        List<Books> booklist = bookService.findBookByCondition(books,pageNum,pageSize);
        PageInfo pageInfo = new PageInfo(booklist);
        ModelAndView mv = new ModelAndView();
        mv.addObject("bookList",pageInfo);
        mv.setViewName("book-list");
        return mv;
    }

    @RequestMapping("/findClass")
    public ModelAndView findAllClass() {
        List<Classes> classlist = bookService.findAllClass();
        ModelAndView mv = new ModelAndView();
        mv.addObject("sqlclass", classlist);
        mv.setViewName("book-save");
        return mv;
    }
}
