package com.yangshengtang.bean;

import lombok.Data;

import javax.persistence.Table;
import java.util.Date;

@Table(name = "count")
@Data
public class Users {

    private Integer id;

    // 用户名
    private String name;

    // 测试结果
    private String result;

    // 创建时间
    private Date time;

    // 创建时间
    private String timeStr;

}
