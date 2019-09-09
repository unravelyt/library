package com.library.controller;

import com.library.domain.Admin;
import com.library.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
@SessionAttributes(value = "user")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/updateAdmin")
    public ModelAndView updateAdmin(Integer id) {
        ModelAndView mv = new ModelAndView();
        Admin admin = adminService.findById(id);
        mv.addObject("admin", admin);
        mv.setViewName("admin-edit");

        return mv;
    }


}
