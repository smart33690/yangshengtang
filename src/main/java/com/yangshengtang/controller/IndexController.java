package com.yangshengtang.controller;

import com.github.pagehelper.PageHelper;
import com.yangshengtang.bean.Users;
import com.yangshengtang.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {

    @RequestMapping("{tencent3402030694212942369.txt}")
    @ResponseBody
    public String tencent3402030694212942369(){
        return "17256225430242635088";
    }
    @Autowired
    IndexService indexService;

    /**
     * 查询后台数据
     */
    @RequestMapping("/ystadmin")
    public String showUser(Model model,Integer pageNum, Integer pageSize){
        ModelMap modelMap = new ModelMap();
        if((pageNum==null) || (pageSize == null)) {
            pageNum = 1;
            pageSize = 10;
        }
        PageHelper.startPage(pageNum,pageSize);
        List<Users> list = indexService.selectList();
        //创建SimpleDateFormat对象，指定样式
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        for(Users user:list){
            user.setTimeStr(simpleDateFormat.format(user.getTime()));
            System.out.println(user);
        }
        //需要一个 Model 对象
        model.addAttribute("list",list);
        //跳转视图
        return "admin";
    }

    /**
     * 开始测试，新增数据
     */
    @PostMapping("/addInfo")
    public void addInfo(@RequestBody Users users){
        if(users != null) {
            indexService.addInfo(users);
        }
    }


}
