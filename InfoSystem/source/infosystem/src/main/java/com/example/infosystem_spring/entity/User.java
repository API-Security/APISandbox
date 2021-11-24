package com.example.infosystem_spring.entity;

public class User {
    private String username;
    private String pwdHash;

    public User() {
    }

    public User(String username, String pwdHash) {
        this.username = username;
        this.pwdHash = pwdHash;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwdHash() {
        return pwdHash;
    }

    public void setPwdHash(String pwdHash) {
        this.pwdHash = pwdHash;
    }
}
