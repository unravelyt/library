package com.library.service.impl;

import com.github.pagehelper.PageHelper;
import com.library.domain.Books;
import com.library.domain.Classes;
import com.library.mapper.BooksMapper;
import com.library.mapper.ClassesMapper;
import com.library.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BooksMapper booksMapper;

    @Autowired
    private ClassesMapper classesMapper;

    @Override
    public List<Books> findAllBooks(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return booksMapper.findAllBooks();
    }

    @Override
    public void deleteBook(Long id) {
        booksMapper.deleteBook(id);
    }

    @Override
    public void updateBook(Books book) {
        booksMapper.updateBook(book);
    }

    @Override
    public void saveBook(Books book) {
        booksMapper.addBook(book);
    }

    @Override
    public List<Books> findBookByCondition(Books books,int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return booksMapper.findByCondition(books);
    }

    @Override
    public Books findById(Long id) {
        return booksMapper.findById(id);
    }

    @Override
    public List<Classes> findAllClass(){
        return classesMapper.findAllClass();
    }
}
