package com.jarod.Controller;

import com.jarod.factory.Connection;
import com.jarod.mapper.FileInfoMapper;
import com.jarod.pojo.FileInfo;
import com.mysql.cj.Session;
import com.mysql.cj.xdevapi.SessionFactory;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * 公共文件模块控制器
 */
@Controller
//@RequestMapping("/user")
public class PublicFileController {

    /**
     * 公共文件模块
     * @return
     */
    @RequestMapping("/publicFile")
    public ModelAndView PublicFile(HttpServletRequest request) throws Exception {
        //创建springMVC视图模型
        ModelAndView mv = new ModelAndView();
        //添加视图模型数据
        mv.setViewName("publicFile");
        //获取公共文件
        SqlSessionFactory factory = Connection.init();
        SqlSession sqlSession=factory.openSession();
        FileInfoMapper dao=sqlSession.getMapper(FileInfoMapper.class);
        int rows=dao.getrows();
        List<FileInfo> fileInfo=dao.findpublicfile();
        //将公共文件条数存入session
        request.getSession().setAttribute("rows",rows);
        request.getSession().setAttribute("fileinfo",fileInfo);
        //返回视图模型
        return mv;
    }
}
