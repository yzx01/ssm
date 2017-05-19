package com.web.dao;

import com.web.entity.User;

import java.util.List;

/**
 * Created by Administrator on 2016/9/24.
 */
public interface UserMapper {

    User selectByUserId(Integer id);

    User userLogin(User user);

    List<User> getAllManager();

}
