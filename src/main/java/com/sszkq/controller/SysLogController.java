package com.sszkq.controller;

import com.github.pagehelper.PageInfo;
import com.sszkq.pojo.SysLog;
import com.sszkq.service.ISysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/sysLog")
@Secured("ROLE_ADMIN")
public class SysLogController {

    @Autowired
    private ISysLogService sysLogService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",defaultValue = "1",required = true) Integer page, @RequestParam(name = "size",defaultValue = "10",required = true) Integer size) throws Exception {
        ModelAndView mv=new ModelAndView();
        List<SysLog> sysLogList= sysLogService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(sysLogList,10);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("syslog-list");
        return mv;
    }
}
