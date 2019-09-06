package com.library.mapper;

import com.library.domain.Classes;

import java.util.List;

public interface ClassesMapper {

    //查询类别
    List<Classes> findAllClass();

    //添加类别
    void addClass(Classes classes);

    //删除类别
    void deleteClass(Integer id);


}
