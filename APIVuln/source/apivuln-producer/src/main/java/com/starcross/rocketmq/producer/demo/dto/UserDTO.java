package com.starcross.rocketmq.producer.demo.dto;

import java.io.Serializable;


public class UserDTO implements Serializable {
    private String id;
    private String username;
    private String password;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public UserDTO() {
    }

    public UserDTO(String id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }
}
