package com.zry.mapper;

import com.zry.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository("userMapper")
public interface UserMapper {

    //查询所有用户
    List<User> queryUserList();

    //根据id查询用户
    User queryUserById(@Param("u_id") Integer u_id);

    //管理员登录校验
    User adminLogin(@Param("u_tel") String u_tel);

    //注册乘客账户
    int addUser(User user);

    //修改个人资料
    int updateUserInfo(User user);

    //根据id查询密码
    String queryPwdById(Integer u_id);

    //修改密码
    int updatePwd(Map map);

    //删除用户
    int deleteUser(@Param("u_id") Integer u_id);
}
