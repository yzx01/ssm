package com.web.controller;

import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/9/24.
 */
@Controller
public class Hello {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/hello")
    public String delete(){
        userService.drop(2);
        return "success";
    }
}
