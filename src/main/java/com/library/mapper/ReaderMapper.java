package com.library.mapper;

import com.library.domain.Reader;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReaderMapper {

    //查询所有用户
    List<Reader> findAll();

    //根据ID查找用户
    Reader fingById(Long id);

    //根据用户名和密码查询用户
    Reader findReader(@Param("username") String username, @Param("password") String password);

    //更新用户
    void updateReader(Reader reader);

    //添加用户
    void addReader(Reader reader);

    //删除用户
    void deleteReader(Long id);

}
