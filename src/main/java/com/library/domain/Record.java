package com.library.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Record implements Serializable {
    private Long id;
    private Date lend_date;
    private Date back_date;
    private Long reader_id;
    private Long book_id;
    private Long due;

    //一对一查询
    private Reader reader;
    private Books book;


}
