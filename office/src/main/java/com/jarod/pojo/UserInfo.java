package com.jarod.pojo;

import java.io.File;
import java.util.List;

public class UserInfo {
    private int user_id;
    private String username;
    private String password;
    private int user_type;

    private List<FileInfo> fileInfoList;


    @Override
    public String toString() {
        return "UserInfo{" +
                "user_id=" + user_id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", user_type=" + user_type +
                ", fileInfoList=" + fileInfoList +
                '}';
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getUser_type() {
        return user_type;
    }

    public void setUser_type(int user_type) {
        this.user_type = user_type;
    }

    public List<FileInfo> getFileInfoList() {
        return fileInfoList;
    }

    public void setFileInfoList(List<FileInfo> fileInfoList) {
        this.fileInfoList = fileInfoList;
    }
}
