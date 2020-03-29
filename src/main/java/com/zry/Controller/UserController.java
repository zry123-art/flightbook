package com.zry.Controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.zry.mapper.UserMapper;
import com.zry.pojo.Resp;
import com.zry.pojo.User;
import com.zry.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class UserController {

    @Autowired
    private UserService userService;
    //访问管理员登录界面
    @RequestMapping("/admin/login")
    public String adminLogin(){
        return "admin/login";
    }

    //管理员登录校验
    @ResponseBody
    @RequestMapping("login.do")
    public ModelAndView doAdminLogin(String uName,String
                               pwd,ModelAndView mv,HttpServletRequest request){
        User user = userService.adminLogin(uName);
        Resp resp = null;
        if(user!=null&&user.getU_pwd().equals(pwd)) {
            mv.setViewName("admin/index");
            request.getSession().setAttribute("user", user);
            System.out.println(user);
            return mv;
        }
//        resp = new Resp(2,"用户名或密码错误");
//        mv.addObject("res",resp);
        mv.addObject("errorMsg","用户名或密码错误");
        mv.setViewName("error/error");
        return mv;
    }



    //跳转到修改个人资料界面
    @ResponseBody
    @RequestMapping("toUpdateInfo.do")
    public ModelAndView toUpdateView(ModelAndView mv){
        mv.setViewName("common/updateInfo");
        return mv;
    }


    //修改个人资料
    @ResponseBody
    @RequestMapping("updateInfo.do")
    public Map<String,Object> updateUserInfo(HttpServletRequest request,User user ){
        User user1 = (User) request.getSession().getAttribute("user");
        user.setU_id(user1.getU_id());
        ModelAndView mv = new ModelAndView();
        boolean result = userService.updateUserInfo(user);
        Map<String,Object> resultMap = new HashMap<String, Object>();
        if(!result){
            resultMap.put("result", "参数不合法！");
            return resultMap;
        }
        //xxx逻辑处理
        resultMap.put("result", "操作成功");
        return resultMap;
    }

    //注销登录
    @RequestMapping("quit.do")
    public ModelAndView goQuit(ModelAndView mv){
        mv.setViewName("common/quit");
        return mv;
    }

    //ajax实现校验交互
    @ResponseBody
    @RequestMapping("checkLogin")
    public String checkUser(String uName,String pwd){
        //根据用户名查用户
        User user = userService.adminLogin("uName");
        if(user!=null&&user.getU_pwd().equals("pwd")){
            //登录成功
            return "0";
        }else{
            return "1";
        }
    }

    //获取所有用户
    @RequestMapping("queryUserList.do")
    public ModelAndView queryUserList(ModelAndView mv){
        List userList = new ArrayList();
        userList = userService.queryUserList();
        mv.setViewName("admin/queryUserList");
        mv.addObject("userList",userList );
        return mv;
    }
}
