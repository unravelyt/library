package com.library.controller;

import com.library.domain.Admin;
import com.library.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @PostMapping("/login")
    public String login2(Model model, String username, String password) {
        Admin admin = adminService.findByAdmin(username, password);
        if (admin != null) {
            model.addAttribute("user", admin);
            return "main";

        }else {
            admin = new Admin();
            admin.setName("未登录");
            model.addAttribute("user", admin);
            return "loginFail";
        }
    }


}
