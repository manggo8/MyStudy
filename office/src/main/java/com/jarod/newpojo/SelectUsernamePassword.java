package com.jarod.newpojo;

/**
 * 封装登录的用户名和密码
 */
public class SelectUsernamePassword {
    private String username;
    private String password;

    public SelectUsernamePassword(String username, String password) {
        this.username = username;
        this.password = password;
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
}
