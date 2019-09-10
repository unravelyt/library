package com.library.controller;

import com.library.domain.Admin;
import com.library.domain.Reader;
import com.library.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/admin")
@SessionAttributes(value = "user")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/findAdmin")
    public ModelAndView findAdmin(Integer id) {
        ModelAndView mv = new ModelAndView();
        Admin admin = adminService.findById(id);
        mv.addObject("sqlAdmin", admin);
        mv.setViewName("admin-edit");
        return mv;
    }

    @RequestMapping("/updateAdmin")
    public String updateAdmin(Admin admin) {
        adminService.updateAdmin(admin);
        return "success";
    }

    @RequestMapping("/findAllAdmin")
    public ModelAndView findAllAdmin() {
        ModelAndView mv = new ModelAndView();
        List<Admin> allAdmin = adminService.findAllAdmin();
        mv.addObject("Adminlist", allAdmin);
        mv.setViewName("admin-list");
        return mv;
    }

    @RequestMapping("/deleteAdmin")
    public String deleteAdmin(Integer id) {
        adminService.deleteAdmin(id);
        return "redirect:/admin/findAllAdmin";
    }

    @RequestMapping("/saveAdmin")
    public String saveAdmin(Admin admin) {
        adminService.saveAdmin(admin);
        return "redirect:/admin/findAllAdmin";
    }

    @RequestMapping("/findAllReader")
    public ModelAndView findAllReader() {
        ModelAndView mv = new ModelAndView();
        List<Reader> allReader = adminService.findAllReader();
        mv.addObject("readerList", allReader);
        mv.setViewName("reader-list");
        return mv;
    }

    @RequestMapping("/findReader")
    public ModelAndView findReader(Long id) {
        ModelAndView mv = new ModelAndView();
        Reader reader = adminService.findByRid(id);
        mv.addObject("sqlReader", reader);
        mv.setViewName("reader-edit");
        return mv;
    }

    @RequestMapping("/deleteReader")
    public String deleteReader(Long id) {
        adminService.deleteReader(id);
        return "redirect:/admin/findAllReader";
    }

    @RequestMapping("/updateReader")
    public String updateReader(Reader reader) {
        adminService.updateReader(reader);
        return "success";
    }
    @RequestMapping("/saveReader")
    public String saveAdmin(Reader reader) {
        adminService.saveReader(reader);
        return "redirect:/admin/findAllReader";
    }


}
