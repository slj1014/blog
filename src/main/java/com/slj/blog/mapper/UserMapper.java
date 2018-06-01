package com.slj.blog.mapper;

import java.util.List;

import com.slj.blog.entity.User;

public interface UserMapper {
	boolean createUser(User user);

	List<User> findUser(User user);
	
	boolean updateOneUser(User user);
}