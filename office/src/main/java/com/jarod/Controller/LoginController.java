package com.jarod.Controller;

import com.jarod.factory.Connection;
import com.jarod.mapper.UserInfoMapper;
import com.jarod.newpojo.SelectUsernamePassword;
import com.jarod.pojo.UserInfo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 * 登录时验证信息的控制器
 */
@Controller
public class LoginController {


    /**
     * 用户登录判断方法
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/login")
    public void Login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //创建用户会话
        SqlSession session = Connection.init().openSession();
        //获取用户名
        String username = request.getParameter("username");
        //获取用户密码
        String password = request.getParameter("password");
        //分装用户名和密码到查询类
        SelectUsernamePassword usernamePassword = new SelectUsernamePassword(username,password);
        //创建用户接口的Dao
        UserInfoMapper userInfoMapper = session.getMapper(UserInfoMapper.class);
        //查询用户信息并且存入用户对象中
        UserInfo userInfo = userInfoMapper.findByUsernameAndPassword(usernamePassword);
        if(userInfo != null){
            request.getSession().setAttribute("user",userInfo);
            request.getRequestDispatcher("/user/user.jsp").forward(request,response);
        }else {
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().write("<script>alert('用户名或密码错误');</script>");
            response.getWriter().write("<script>window.location='index.jsp';window.close();</script>");
            response.getWriter().flush();
        }

    }

}
