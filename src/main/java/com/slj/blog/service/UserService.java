package com.slj.blog.service;

import com.slj.blog.entity.User;

public interface UserService {
    /**
     * 用户注册
     *
     * @param user
     */
    void register(User user);

    /**
     * 用户登录
     *
     * @param token
     * @return
     */
    User findUserByUsername(String token);

    void updateOneUser(User user);
}
