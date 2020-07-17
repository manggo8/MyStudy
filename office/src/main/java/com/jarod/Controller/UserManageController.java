package com.jarod.Controller;

import com.jarod.factory.Connection;
import com.jarod.mapper.UserInfoMapper;
import com.jarod.pojo.UserInfo;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 用户管理模块控制器
 */
@Controller
public class UserManageController {

    /**
     * 用户管理文件模块
     * @return
     */
    @RequestMapping("/userManage")
    public ModelAndView UserManage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //创建springMVC视图模型
        ModelAndView mv = new ModelAndView();
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("user");
        if(userInfo.getUser_type() == 1){
            mv.setViewName("userManage");
        }else{
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().write("<script>alert('当前用户无操作权限');</script>");
//            response.getWriter().write("<script>window.location='index.jsp';window.close();</script>");
            response.getWriter().flush();
            //添加视图模型数据
            mv.setViewName("user");
        }
        SqlSessionFactory factory = Connection.init();
        SqlSession sqlSession=factory.openSession();
        UserInfoMapper dao=sqlSession.getMapper(UserInfoMapper.class);
        int rows=dao.findrows();
        List<UserInfo> userInfo1=dao.findall();
        //获取用户信息，存入session中
        request.getSession().setAttribute("rows",rows);
        request.getSession().setAttribute("userinfo",userInfo1);
        //返回视图模型
        return mv;


    }
}
