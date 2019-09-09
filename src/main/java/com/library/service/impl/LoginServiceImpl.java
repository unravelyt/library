package com.library.service.impl;

import com.library.domain.Admin;
import com.library.domain.Reader;
import com.library.mapper.AdminMapper;
import com.library.mapper.ReaderMapper;
import com.library.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private AdminMapper adminMapper;
    @Autowired
    private ReaderMapper readerMapper;

    @Override
    public Admin findAdmin(String username, String password) {
        return adminMapper.findByAdmin(username,password);
    }

    @Override
    public Reader findReader(String username, String password) {
        return readerMapper.findReader(username, password);
    }
}
