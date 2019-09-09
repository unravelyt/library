package com.library.mapper;

import com.library.domain.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminMapper {

    //查询所有管理员
    List<Admin> findAll();

    //根据用户名查询
    Admin findByAdmin(@Param("username") String username, @Param("password") String password);
    //Admin findByCondition(Admin admin);

    //更新管理员信息
    void updateAdmin(Admin admin);

    //添加管理员
    void addAdmin(Admin admin);

    //删除管理员
    void deleteAdmin(Integer id);

    Admin findById(Integer id);

}
