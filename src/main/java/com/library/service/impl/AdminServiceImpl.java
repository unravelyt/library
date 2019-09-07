package com.library.service.impl;

import com.library.domain.Admin;
import com.library.mapper.AdminMapper;
import com.library.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper mapper;

    @Override
    public Admin findByAdmin(String username, String password) {
        Admin byAdmin = mapper.findByAdmin(username, password);

        return byAdmin;
    }
}