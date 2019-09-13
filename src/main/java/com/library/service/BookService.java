package com.library.service;

import com.library.domain.Books;
import com.library.domain.Classes;

import java.util.List;

public interface BookService {

    List<Books> findAllBooks(int pageNum, int pageSize);

    void deleteBook(Long id);

    void updateBook(Books book);

    void saveBook(Books book);

    List<Books> findBookByCondition(Books book,int pageNum, int pageSize);

    Books findById(Long id);

    public List<Classes> findAllClass();



}
