package com.jarod.pojo;

import java.util.Date;

public class FileInfo {
    private int file_id;
    private int file_user_id;
    private String file_name;
    private int file_type;
    private String file_dir_path;
    private String file_pass;
    private Date file_date;

    private UserInfo userInfo;



    @Override
    public String toString() {
        return "FileInfo{" +
                "file_id=" + file_id +
                ", file_user_id=" + file_user_id +
                ", file_name='" + file_name + '\'' +
                ", file_type=" + file_type +
                ", file_dir_path='" + file_dir_path + '\'' +
                ", file_pass='" + file_pass + '\'' +
                ", file_date=" + file_date +
                ", userInfo=" + userInfo +
                '}';
    }

    public int getFile_id() {
        return file_id;
    }

    public void setFile_id(int file_id) {
        this.file_id = file_id;
    }

    public int getFile_user_id() {
        return file_user_id;
    }

    public void setFile_user_id(int file_user_id) {
        this.file_user_id = file_user_id;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public int getFile_type() {
        return file_type;
    }

    public void setFile_type(int file_type) {
        this.file_type = file_type;
    }

    public String getFile_dir_path() {
        return file_dir_path;
    }

    public void setFile_dir_path(String file_dir_path) {
        this.file_dir_path = file_dir_path;
    }

    public String getFile_pass() {
        return file_pass;
    }

    public void setFile_pass(String file_pass) {
        this.file_pass = file_pass;
    }

    public Date getFile_date() {
        return file_date;
    }

    public void setFile_date(Date file_date) {
        this.file_date = file_date;
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }
}
