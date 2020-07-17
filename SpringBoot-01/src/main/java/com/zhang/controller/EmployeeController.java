package com.zhang.controller;

import com.zhang.dao.DepartmentDao;
import com.zhang.dao.EmployeeDao;
import com.zhang.pojo.Department;
import com.zhang.pojo.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collection;

@Controller
public class EmployeeController {
    @Autowired
    EmployeeDao employeeDao;
    @Autowired
    DepartmentDao departmentDao;

    @RequestMapping("/emps")
    public String list(Model model){
        Collection<Employee> all = employeeDao.getAll();
        model.addAttribute("emps",all);
        return "emp/list";
    }
    @GetMapping("/emp")
    public String toAddpage(Model model){
        //查询业务信息
        Collection<Department> departments = departmentDao.getDepartments();
        model.addAttribute("departments",departments);
        return "emp/add";
    }
    @PostMapping("/emp")
    public String toAddemp(Employee employee,Model model){
        System.out.println("========="+employee);
        employeeDao.save(employee);
        return "redirect:/emps";
    }
}
