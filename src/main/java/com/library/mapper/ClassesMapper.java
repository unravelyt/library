package com.library.mapper;

import com.library.domain.Classes;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClassesMapper {

    //查询类别
    List<Classes> findAllClass();

    //添加类别
    void addClass(Classes classes);

    //删除类别
    void deleteClass(Integer id);


}
