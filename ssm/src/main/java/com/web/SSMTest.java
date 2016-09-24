package com.web;

import com.web.dao.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by Administrator on 2016/9/24.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring-mybatis.xml")
public class SSMTest {
    @Autowired
    private UserMapper userMapper;

    @Test
    public void delete(){
        userMapper.delete(2);
    }


}
