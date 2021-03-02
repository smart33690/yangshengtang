package com.yangshengtang.controller;

import com.yangshengtang.bean.Users;
import com.yangshengtang.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {

    @Autowired
    IndexService indexService;
    /**
     * 处理请求， 产生数据
     */
    @RequestMapping("/")
    public String showUser(Model model){

        List<Users> list = indexService.selectList();
        //需要一个 Model 对象
        model.addAttribute("list",list);
        for(Users map:list){
            System.out.println(map);
        }
        //跳转视图
        return "index";
    }
}
