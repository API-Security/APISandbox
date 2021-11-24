package com.starcross.rocketmq.producer.demo.service;

import com.starcross.rocketmq.producer.demo.dto.UserDTO;



public interface UserService {

    /**
     * 添加用户
     *
     * @param user
     */
    void addUser(UserDTO user);
}
