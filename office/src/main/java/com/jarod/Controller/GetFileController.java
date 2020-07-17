package com.jarod.Controller;

import com.jarod.factory.Connection;
import com.jarod.mapper.FileInfoMapper;
import com.jarod.mapper.UserInfoMapper;
import com.jarod.newpojo.SelectUsernamePassword;
import com.jarod.pojo.FileInfo;
import com.jarod.pojo.UserInfo;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class GetFileController {

    @RequestMapping("/getFile")
    public void GetFile(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //创建用户会话
        SqlSession session = Connection.init().openSession();
        //获取用户名
        String file_pass = request.getParameter("getFilePass");
        //获取用户密码
        System.out.println(file_pass);

        //创建用户接口的Dao
        FileInfoMapper fileInfoMapper = session.getMapper(FileInfoMapper.class);
        //查询用户信息并且存入用户对象中
        String path = fileInfoMapper.findByPath(file_pass);
        System.out.println(path);
//        //查询用户信息并且存入用户对象中
        if(path == "" || "".equals(path) || path == null){
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().write("<script>alert('请输入正确的提取码');</script>");
            response.getWriter().write("<script>window.location='./getFile.jsp';</script>");
            response.getWriter().flush();
            System.out.println("判断1");
        }else{

            response.setContentType("text/html;charset=utf-8");
            response.getWriter().write("<script>alert('文件开始下载');</script>");
            response.getWriter().write("<script>window.location='"+ path +"';</script>");
//            response.getWriter().write("<script>window.location='./getFile.jsp';</script>");
            response.getWriter().flush();
       }
//
    }
}

