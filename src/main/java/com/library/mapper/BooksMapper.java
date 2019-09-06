package com.library.mapper;

import com.library.domain.Books;

import java.util.List;

public interface BooksMapper {

    //按照条件模糊查询 书名和类别
    List<Books> findByCondition(Books book);

    //添加书籍
    void addBook(Books book);

    //更新书籍信息
    void updateBook(Books book);

    //删除书籍
    void deleteBook(Long id);
}
