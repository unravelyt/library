package com.library.service;

import com.library.domain.Admin;

public interface AdminService {

    //登录功能
    Admin findByAdmin(String username, String password);

    //更新个人信息
    void updateAdmin(Admin admin);

    //根据id查找用户
    Admin findById(Integer id);

}
