package com.library.service;

import com.library.domain.Admin;
import com.library.domain.Reader;

import java.util.List;

public interface AdminService {

    //登录功能
    Admin findByAdmin(String username, String password);

    //更新个人信息
    void updateAdmin(Admin admin);

    //根据id查找用户
    Admin findById(Integer id);

    List<Admin> findAllAdmin();

    void deleteAdmin(Integer id);

    void saveAdmin(Admin admin);

    List<Reader> findAllReader();

    Reader findByRid(Long id);

    void deleteReader(Long id);

    void updateReader(Reader reader);

    void saveReader(Reader reader);

}
