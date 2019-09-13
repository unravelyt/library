package com.library.service;

import com.library.domain.Record;

import java.util.List;

public interface RecordService {

    List<Record> findRecord(int pageNum, int pageSize);

    void saveRecord(Record record);

    void deleteRecord(Long id);

    List<Record> findByUserId(Long reader_id,int pageNum, int pageSize);

    void backBook(Record record);

    void renew(Record record);

}
