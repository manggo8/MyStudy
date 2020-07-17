package com.jarod.Controller;

import com.jarod.factory.Connection;
import com.jarod.mapper.FileInfoMapper;
import com.jarod.mapper.UserInfoMapper;
import com.jarod.newpojo.SelectUsernamePassword;
import com.jarod.pojo.FileInfo;
import com.jarod.pojo.UserInfo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Date;
import java.util.UUID;

@Controller
public class UploadFileController {

        @RequestMapping("/fileUpload")
        public String FileUpload(HttpServletRequest request, MultipartFile uploadFile,HttpServletResponse response) throws Exception {


                //使用fileupload组件完成文件上传
                // 上传的位置
                String path = request.getSession().getServletContext().getRealPath("./file/");
        //        //判断，该路径是否存在
        //        FileInfo file = new FileInfo(path);
        //        if(!file.exists()){
        //        //创建该文件夹
        //        file.mkdirs();
        //        }
                //说明上传文件项
                //获取上传文件的名称
                String filename = uploadFile.getOriginalFilename();

                System.out.println("filename:"  + filename);
                //判断文件是否为空
                if(filename == "" || "".equals(filename) ){
                        //如果文件为空则弹出提示框提醒用户没有选择文件
                        response.setContentType("text/html;charset=utf-8");
                        response.getWriter().write("<script>alert('请选择文件后再上传！');</script>");
//                        response.getWriter().write("<script>window.location='index.jsp';window.close();</script>");
                        response.getWriter().flush();
                        System.out.println("没有文件");

                }else{
                        //获取session会话中的当前用户信息
                        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("user");
                        //获取文件名的原始名
                        String oldFilename = filename;
                        //获取文件的原始地址
                        String dirFilename = "/file/" + oldFilename;
                        System.out.println("dir:" + dirFilename);

                        //把文件的名称设置唯一值
                        String uuid = UUID.randomUUID().toString().replace("-","");
                        filename = uuid + "_" + filename;
                        System.out.println(path);
                        System.out.println(filename);
                        //完成文件上传
                        uploadFile.transferTo(new File(path,filename));
                        System.out.println(oldFilename);
                        //创建用户会话
                        SqlSession session = Connection.init().openSession();
                        FileInfoMapper fileInfoMapper = session.getMapper(FileInfoMapper.class);
                        //新建文件信息对象
                        FileInfo fileInfo = new FileInfo();
                        //关联当前用户id信息
                        fileInfo.setFile_user_id(userInfo.getUser_id());
                        //添加当前文件名信息
                        fileInfo.setFile_name(oldFilename);

                        fileInfo.setFile_pass(uuid);
                        //传入文件路径
                        fileInfo.setFile_dir_path(dirFilename);
                        //设置文件上传时间
                        fileInfo.setFile_date(new Date());
                        //将用户信息插入数据库
                     
                        fileInfoMapper.insertFile(fileInfo);
                        session.commit();
                        session.close();
                        response.setContentType("text/html;charset=utf-8");
                        //提示用户文件上传成功
                        response.getWriter().write("<script>alert('文件上传成功！');</script>");
//                        response.getWriter().write("<script>window.location='index.jsp';window.close();</script>");
                        response.getWriter().flush();
//                        return "myFile";
                }
                return "myFile";
        }
}