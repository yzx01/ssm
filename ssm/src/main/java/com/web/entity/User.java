package com.web.entity;

import java.util.Date;

/**
 * Created by Administrator on 2016/9/23.
 */
public class User {

    private Integer id;
    private String userName;
    private String password;
    private String sex;
    private String deptCode;
    private Integer role;

    public User() {
    }

    public User(String userName, Integer id) {
        this.userName = userName;
        this.id = id;
    }

    public User(Integer id, String password) {
        this.id = id;
        this.password = password;
    }

    public User(String userName) {
        this.userName = userName;
    }

    public User(String userName, String password, String sex, String deptCode, Integer role) {
        this.userName = userName;
        this.password = password;
        this.sex = sex;
        this.deptCode = deptCode;
        this.role = role;
    }

    public User(Integer id, String userName, String password, String sex, String deptCode, Integer role) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.sex = sex;
        this.deptCode = deptCode;
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDeptCode() {
        return deptCode;
    }

    public void setDeptCode(String deptCode) {
        this.deptCode = deptCode;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", deptCode='" + deptCode + '\'' +
                ", role=" + role +
                '}';
    }
}
