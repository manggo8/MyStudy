package com.jarod.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 退出时验证信息的控制器
 */
@Controller

public class ExitController {

    @RequestMapping("/exit")
    public void Exit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().invalidate();
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
