package com.library.service;

import com.library.domain.Admin;

public interface AdminService {

    //登录功能
    Admin findByAdmin(String username, String password);

    void updateAdmin(Admin admin);

}
