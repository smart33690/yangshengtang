package com.yangshengtang.mapper;

import com.yangshengtang.bean.Users;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface IndexMapper {

    List<Users> selectList();

    int addInfo(Users users);
}
