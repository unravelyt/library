package com.library.controller;

import com.library.domain.Admin;
import com.library.domain.Reader;
import com.library.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@RequestMapping("/login")
@SessionAttributes(value = {"user","role"})
public class LoginController {
    @Autowired
    private LoginService loginService;

    @PostMapping("/userlogin")
    public String login(Model model, String username, String password, String adminflag) {
        if (adminflag == null) {
            //用户登录
            Reader reader = loginService.findReader(username, password);
            if (reader != null) {
                model.addAttribute("user",reader);
                model.addAttribute("role", "用户");
                return "main";
            }else {
                model.addAttribute("user", "未登录");
                return "loginFail";
            }
        } else {
            //管理员登录
            Admin admin = loginService.findAdmin(username, password);
            if (admin != null) {
                model.addAttribute("user", admin);
                model.addAttribute("role", "管理员");
                return "main";
            }else {
                model.addAttribute("user", "未登录");
                return "loginFail";
            }
        }
    }

    @RequestMapping("/logout")
    public String logout(SessionStatus status) {
        status.setComplete();
        return "redirect:/login.jsp";
    }


}
