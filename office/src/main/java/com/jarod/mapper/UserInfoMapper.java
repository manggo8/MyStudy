package com.jarod.mapper;

import com.jarod.newpojo.SelectUsernamePassword;
import com.jarod.pojo.FileInfo;
import com.jarod.pojo.UserInfo;

import java.util.List;

public interface UserInfoMapper {
    //根据用户名和密码查询用户信息接口
    public UserInfo findByUsernameAndPassword(SelectUsernamePassword selectUsernamePassword) throws Exception;
    //根据id查询用户
    public UserInfo findbyid(int id);
    //查询记录所有条数，用做遍历循环打印表格
    public int findrows();
    //查询用户所有信息
    public List<UserInfo> findall();
    //查询文件信息，文件名，日期等
    public FileInfo finddate(int id);
}
