package com.starcross.rocketmq.producer.demo.service.impl;

import com.alibaba.fastjson.JSON;
import com.starcross.rocketmq.producer.demo.dto.MqMessageDTO;
import com.starcross.rocketmq.producer.demo.dto.UserDTO;
import com.starcross.rocketmq.producer.demo.mq.service.MqProducerService;
import com.starcross.rocketmq.producer.demo.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {


    private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);


    @Autowired
    private MqProducerService mqProducerService;


    @Override
    public void addUser(UserDTO user) {
        // 1.模拟业务操作
        // ....

        // 2.向关联系统发送消息
        MqMessageDTO mqMessageDTO = new MqMessageDTO();
        mqMessageDTO.setTopic("T_DEMO_PROJECT");
        mqMessageDTO.setTag("ADD_USER");
        mqMessageDTO.setContent(JSON.toJSONString(user).getBytes());
        boolean success = mqProducerService.sendMessage(mqMessageDTO);
        if (success) {
            log.info("消息发送成功, UserServiceImpl.addUser");
        } else {
            log.info("消息发送失败");
            // TODO 记录错误记录
        }
    }
}
