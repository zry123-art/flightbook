package com.zry.pojo;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Setter
@Getter
public class User {

    //用户id自增
    private Integer u_id;

    //用户密码
    private String u_pwd;

    //用户姓名
    private String u_name;

    //用户电话
    private String u_tel;

    //用户性别(0:男;1:女)
    private Integer u_sex;

    //用户年龄
    private Integer u_age;

    //家庭地址
    private String u_addr;

    //个人邮箱
    private String u_email;

    //身份证号
    private String u_idCard;

    //权限(0:乘客;1:管理员)
    private Integer u_role;

    //账号状态(0:正常;1:注销)
    private Integer u_state;

}
