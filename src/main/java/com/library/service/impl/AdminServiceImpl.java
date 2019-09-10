package com.library.service.impl;

import com.library.domain.Admin;
import com.library.domain.Reader;
import com.library.mapper.AdminMapper;
import com.library.mapper.ReaderMapper;
import com.library.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper mapper;

    @Autowired
    private ReaderMapper readerMapper;

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

    @Override
    public List<Admin> findAllAdmin() {
        return mapper.findAll();
    }

    @Override
    public void deleteAdmin(Integer id) {
        mapper.deleteAdmin(id);
    }

    @Override
    public void saveAdmin(Admin admin) {
        mapper.addAdmin(admin);
    }

    @Override
    public List<Reader> findAllReader() {
        return readerMapper.findAll();
    }

    @Override
    public Reader findByRid(Long id) {
        return readerMapper.fingById(id);
    }

    @Override
    public void deleteReader(Long id) {
        readerMapper.deleteReader(id);
    }

    @Override
    public void updateReader(Reader reader) {
        readerMapper.updateReader(reader);
    }

    @Override
    public void saveReader(Reader reader) {
        readerMapper.addReader(reader);
    }


}
