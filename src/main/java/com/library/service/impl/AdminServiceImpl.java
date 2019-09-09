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
        return mapper.findByAdmin(username, password);
    }

    @Override
    public void updateAdmin(Admin admin) {
        mapper.updateAdmin(admin);
    }

    @Override
    public Admin findById(Integer id) {
        return mapper.findById(id);
    }


}
