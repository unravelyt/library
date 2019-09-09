package com.library.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admin implements Serializable {
    private Integer id;
    private String username;
    private String password;
    private String name;
    private String gender;
    private String phone;
    private String flag;

}
