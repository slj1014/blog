package com.slj.blog.service.impl;

import java.util.List;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.slj.blog.entity.User;
import com.slj.blog.mapper.UserMapper;
import com.slj.blog.service.UserService;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userDao;

    @Override
    public void register(User user) {
        user.setUserCreate(System.currentTimeMillis());
        user.setUserUpdate(System.currentTimeMillis());
        user.setUserStatus(0);
        user.setUserType(0);
        userDao.createUser(user);
    }

    @Override
    public User findUserByUsername(String token) {
        User user = new User();
        if (StringUtils.isEmpty(token)) {
            return null;
        }
        user.setUserMail(token);
        List<User> users = userDao.findUser(user);
        if (users != null && users.size() > 0) {
            return users.get(0);
        }
        return null;
    }

    @Override
    public void updateOneUser(User user) {
        userDao.updateOneUser(user);
    }
}
