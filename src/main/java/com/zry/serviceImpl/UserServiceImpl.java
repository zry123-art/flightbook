package com.zry.serviceImpl;

import com.zry.mapper.UserMapper;
import com.zry.pojo.User;
import com.zry.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @ClassName UserServiceImpl
 * @Description
 * @Author Rongyu Zhang
 * @Date 2020/3/25 23:47
 * @Version 1.0
 **/

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> queryUserList() {
        return queryUserList();
    }

    @Override
    public User queryUserById(Integer u_id) {
        User user = userMapper.queryUserById(u_id);
        return user;
    }

    @Override
    public User adminLogin(String u_tel) {
        return userMapper.adminLogin(u_tel);
    }

    @Override
    public boolean addUser(User user) {
        return false;
    }

    @Override
    public boolean updateUserInfo(User user) {
        int rowNumber = userMapper.updateUserInfo(user);
        return rowNumber>0;
    }

    @Override
    public boolean  deleteUser(Integer u_id) {
        return false;
    }
}
