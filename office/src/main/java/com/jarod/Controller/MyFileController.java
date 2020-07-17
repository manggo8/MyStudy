package com.jarod.Controller;

import com.jarod.factory.Connection;
import com.jarod.mapper.FileInfoMapper;
import com.jarod.mapper.UserInfoMapper;
import com.jarod.pojo.FileInfo;
import com.jarod.pojo.UserInfo;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * 我的文件模块控制器
 */
@Controller
public class MyFileController {

    /**
     * 我的文件模块
     * @return
     */
    @RequestMapping("/myFile")
    public ModelAndView MyFile(HttpServletRequest request) throws IOException {
        //创建springMVC视图模型
        ModelAndView mv = new ModelAndView();
        //添加视图模型数据
        mv.setViewName("myFile");
        SqlSessionFactory factory = Connection.init();
        SqlSession sqlSession=factory.openSession();
        UserInfoMapper dao=sqlSession.getMapper(UserInfoMapper.class);
        int rows=dao.findrows();
        List<UserInfo> userInfo=dao.findall();
        //获取数据总条数，存入session
        request.getSession().setAttribute("rows",rows);
        request.getSession().setAttribute("userinfo",userInfo);
//
//        //重新获取工厂对象，获取文件名
//        FileInfoMapper dao1=sqlSession.getMapper(FileInfoMapper.class);
//        List<FileInfo> fileInfo=dao1.findpublicfile();
//        //将公共文件条数存入session
//        request.getSession().setAttribute("fileinfo",fileInfo);
        //返回视图模型
        return mv;
    }

}
