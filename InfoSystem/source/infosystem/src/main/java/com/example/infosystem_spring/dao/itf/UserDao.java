package com.example.infosystem_spring.dao.itf;

import com.example.infosystem_spring.entity.User;

public interface UserDao {
    User login(String username, String password);

    String getPwdHash(String username);
}
