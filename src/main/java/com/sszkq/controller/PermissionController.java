package com.sszkq.controller;

import com.github.pagehelper.PageInfo;
import com.sszkq.pojo.Permission;
import com.sszkq.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/permission")
@Secured("ROLE_ADMIN")
public class PermissionController {

    @Autowired
    private IPermissionService permissionService;
    @RequestMapping("/deletePermission")
    public String deletePermission(String id) throws Exception {
        permissionService.deleteById(id);
        return "redirect:findAll.do";
    }

    @RequestMapping("/findById")
    public ModelAndView findById(String id) throws Exception {
      Permission permission=  permissionService.findById(id);
      ModelAndView mv=new ModelAndView();
      mv.setViewName("permission-show");
      mv.addObject("permission",permission);
      return mv;
    }

    @RequestMapping("/save.do")
    public String save(Permission permission) throws Exception {
        permissionService.save(permission);
        return "redirect:findAll.do";
    }
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",defaultValue = "1",required = true) Integer page,@RequestParam(name = "size",defaultValue = "5",required = true) Integer size) throws Exception {
        ModelAndView mv=new ModelAndView();
        List<Permission> permissionList = permissionService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(permissionList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("permission-list");
        return mv;
    }
}
