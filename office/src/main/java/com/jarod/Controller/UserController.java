package com.jarod.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    /**
     * 后台首页模块
     * @return
     */
    @RequestMapping("/user")
    public ModelAndView User(){
        //创建springMVC视图模型
        ModelAndView mv = new ModelAndView();
        //添加视图模型数据
        mv.setViewName("user");
        //返回视图模型
        return mv;
    }

}
