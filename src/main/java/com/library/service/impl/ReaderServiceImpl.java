package com.library.service.impl;


import com.library.domain.Reader;
import com.library.mapper.ReaderMapper;
import com.library.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReaderServiceImpl implements ReaderService {

    @Autowired
    private ReaderMapper readerMapper;

    @Override
    public void updateReader(Reader reader) {
        readerMapper.updateReader(reader);
    }
}
