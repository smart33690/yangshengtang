package com.yangshengtang.bean;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Table;

@Table(name = "test")
@Data
public class Users {

    @Column(name = "id")
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "age")
    private Integer age;

}
