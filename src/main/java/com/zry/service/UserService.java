package com.zry.service;

import com.zry.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface UserService {
    //查询所有用户
    List<User> queryUserList();

    //根据id查询用户
    User queryUserById(@Param("u_id") Integer u_id);

    //管理员登录校验
    User adminLogin(@Param("u_tel") String u_tel);

    //注册乘客账户
    boolean addUser(User user);

    //修改个人资料
    boolean updateUserInfo(User user);

    //删除用户
    boolean deleteUser(@Param("u_id") Integer u_id);
}
