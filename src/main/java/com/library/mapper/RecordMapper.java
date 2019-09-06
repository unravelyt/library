package com.library.mapper;

import com.library.domain.Record;

import java.util.List;

public interface RecordMapper {
    //查询所有记录
    List<Record> findAll();

    //根据用户id查询
    List<Record> findByUserId(Long reader_id);

    //添加记录
    void addRecord(Record record);

    //删除记录
    void deleteRecord(Long id);

    //修改记录
    void updateRecord(Record record);

    List<Record> lazyfindByid(Long id);
}
