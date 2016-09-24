package com.web.service.impl;

import com.web.dao.UserMapper;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2016/9/24.
 */
@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserMapper userMapper;

    public void drop(int id) {
        userMapper.delete(id);
    }
}

