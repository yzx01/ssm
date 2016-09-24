package com.web.dao;

import com.web.entity.User;

import java.util.List;

/**
 * Created by Administrator on 2016/9/24.
 */
public interface UserMapper {

    public void save(User user);
    public void update(User user);
    public void delete(int id);
    public User findById(int id);
    public List<User> findAll();
}
