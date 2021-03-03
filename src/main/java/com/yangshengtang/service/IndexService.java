package com.yangshengtang.service;


import com.yangshengtang.bean.Users;
import com.yangshengtang.mapper.IndexMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class IndexService {

    @Autowired
    IndexMapper indexMapper;

    public List<Users> selectList() {
        return indexMapper.selectList();
    }

    public int addInfo(Users users) {
        return indexMapper.addInfo(users);
    }



}
