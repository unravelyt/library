package com.library.controller;

import com.github.pagehelper.PageInfo;
import com.library.domain.Books;
import com.library.domain.Classes;
import com.library.domain.Reader;
import com.library.domain.Record;
import com.library.service.AdminService;
import com.library.service.BookService;
import com.library.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/reader")
public class ReaderController {

    @Autowired
    private RecordService recordService;

    @Autowired
    private BookService bookService;

    @Autowired
    private AdminService adminService;


    @RequestMapping("/backBook")
    public String backBook(Long id){
        Record record = recordService.findByRecordId(id);
        if (record.getBack_date() == null){
            //还书的时候增加借阅记录次数
            Long reader_id = record.getReader_id();
            Reader reader = adminService.findByRid(reader_id);
            Integer borrow = reader.getBorrow();
            borrow = borrow+1;
            reader.setBorrow(borrow);
            adminService.updateReader(reader);
            //馆存书籍书名加一
            Long book_id = record.getBook_id();
            Books book = bookService.findById(book_id);
            Integer rest_number = book.getRest_number();
            book.setRest_number(rest_number+1);
            bookService.updateBook(book);
            //借书记录加上归还时间
            record.setBack_date(new Date());
            recordService.update(record);
            return "success";
        }else {
            return "bookback";
        }

    }

    //续借
    @RequestMapping("/renewBook")
    public String renewBook(Long id){
        //只需在借书记录上把借书时间改为当前即可
        Record record = recordService.findByRecordId(id);
        record.setLend_date(new Date());
        recordService.update(record);
        return "success";
    }

    @RequestMapping("/back")
    public ModelAndView retrun(Long rid,int pageNum, int pageSize) {
        List<Record> recordList = recordService.findByUserId(rid,pageNum,pageSize);
        for (Record record : recordList) {
            Date back_date = record.getBack_date();
            Date lend_date = record.getLend_date();
            if (back_date ==null) {
                back_date = new Date();
            }
            Long due =  (back_date.getTime() - lend_date.getTime())/(1000*3600*24)-90;
            record.setDue(due);
        }
        PageInfo recordInfo = new PageInfo(recordList);
        ModelAndView mv = new ModelAndView();
        mv.addObject("recordList", recordInfo);
        mv.setViewName("record-rlist");
        return mv;
    }


    @RequestMapping("/borrow")
    public String updateReader(Long bid, Long rid) {
        Record record = new Record();
        record.setLend_date(new Date());
        record.setReader_id(rid);
        record.setBook_id(bid);
        recordService.saveRecord(record);
        Books b = bookService.findById(bid);
        Integer rest_number = b.getRest_number();
        if (rest_number >0){
            int rn = rest_number-1;
            b.setRest_number(rn);
            bookService.updateBook(b);
            return "success";
        }else {
            return "nobook";
        }

    }

    @RequestMapping("/findAll")
    public ModelAndView findAllBooks(@RequestParam(required = true, name = "pageNum", defaultValue = "1")int pageNum, @RequestParam(required = true, name = "pageSize", defaultValue = "5")int pageSize) {
        List<Books> booklist = bookService.findAllBooks(pageNum, pageSize);
        PageInfo pageInfo = new PageInfo(booklist);
        ModelAndView mv = new ModelAndView();
        mv.addObject("bookList", pageInfo);
        mv.setViewName("book-rlist");
        return mv;
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
        mv.setViewName("book-rlist");
        return mv;
    }

    @RequestMapping("/findById")
    public ModelAndView findById(Long id){
        Books book = bookService.findById(id);
        List<Classes> classlist = bookService.findAllClass();
        ModelAndView mv = new ModelAndView();
        mv.addObject("sqlclass", classlist);
        mv.addObject("sqlbook", book);
        mv.setViewName("book-detail");
        return mv;
    }


}
