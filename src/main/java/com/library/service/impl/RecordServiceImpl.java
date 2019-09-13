package com.library.service.impl;

import com.github.pagehelper.PageHelper;
import com.library.domain.Record;
import com.library.mapper.RecordMapper;
import com.library.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecordServiceImpl implements RecordService {

    @Autowired
    private RecordMapper recordMapper;

    @Override
    public List<Record> findRecord(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return recordMapper.findAll();
    }

    @Override
    public void saveRecord(Record record) {
        recordMapper.addRecord(record);
    }

    @Override
    public void deleteRecord(Long id) {
        recordMapper.deleteRecord(id);
    }

    @Override
    public List<Record> findByUserId(Long reader_id,int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return recordMapper.findByUserId(reader_id);
    }

    @Override
    public void backBook(Record record) {
        recordMapper.updateRecord(record);
    }

    @Override
    public void renew(Record record) {
        recordMapper.updateRecord(record);
    }
}
