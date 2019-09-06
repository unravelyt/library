package com.library.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reader implements Serializable {
    private Long id;
    private String username;
    private String password;
    private String name;
    private String gender;
    private String phone;
    private String address;
    private Date birthday;
    private Integer borrow;

    private List<Record> record;
}
