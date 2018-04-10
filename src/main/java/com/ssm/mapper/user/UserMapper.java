package com.ssm.mapper.user;

import org.apache.ibatis.annotations.Param;

import com.ssm.entity.user.User;

public interface UserMapper {

	User selectUser(Integer id);

	User selectUserByUserName(@Param("username") String userName);

	Integer insertUser(User u);

	Integer updateUser(User u);
}
