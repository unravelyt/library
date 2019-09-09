package com.library.controller;

import com.library.domain.Admin;
import com.library.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @PostMapping("/updateAdmin")
    public String updateAdmin(Admin admin) {


        return "";
    }


}
