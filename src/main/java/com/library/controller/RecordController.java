package com.library.controller;


import com.github.pagehelper.PageInfo;
import com.library.domain.Record;
import com.library.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/record")
public class RecordController {

    @Autowired
    private RecordService recordService;

    @RequestMapping("/findAllRecord")
    public ModelAndView findAllRecord(int pageNum, int pageSize){
        List<Record> recordList = recordService.findRecord(pageNum, pageSize);
        for (Record record : recordList) {
            Date back_date = record.getBack_date();
            Date lend_date = record.getLend_date();
            if (back_date ==null) {
                back_date = new Date();
            }
            Long due =  (back_date.getTime() - lend_date.getTime())/(1000*3600*24)-90;
            record.setDue(due);
        }
        PageInfo recordInfo = new PageInfo(recordList);
        ModelAndView mv = new ModelAndView();
        mv.addObject("recordList", recordInfo);
        mv.setViewName("record-list");
        return mv;

    }

    @RequestMapping("/deleteRecord")
    public String deleteRecord(Long id){
        recordService.deleteRecord(id);
        return "redirect:/record/findAllRecord?pageNum=1&pageSize=5";
    }


}
