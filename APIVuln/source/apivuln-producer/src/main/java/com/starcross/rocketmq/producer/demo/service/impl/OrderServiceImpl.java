package com.starcross.rocketmq.producer.demo.service.impl;

import com.alibaba.fastjson.JSON;
import com.starcross.rocketmq.producer.demo.dto.MqMessageDTO;
import com.starcross.rocketmq.producer.demo.dto.OrderDTO;
import com.starcross.rocketmq.producer.demo.mq.service.MqProducerService;
import com.starcross.rocketmq.producer.demo.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrderServiceImpl implements OrderService {


    private static final Logger log = LoggerFactory.getLogger(OrderServiceImpl.class);


    @Autowired
    private MqProducerService mqProducerService;


    @Override
    public void addOrder(OrderDTO order) {
        // 1.模拟业务操作
        // ....

        // 2.向关联系统发送消息
        MqMessageDTO mqMessageDTO = new MqMessageDTO();
        mqMessageDTO.setTopic("T_DEMO_PROJECT");
        mqMessageDTO.setTag("ADD_ORDER");
        mqMessageDTO.setKey(order.getId());
        mqMessageDTO.setContent(JSON.toJSONString(order).getBytes());
        boolean success = mqProducerService.sendMessage(mqMessageDTO);
        if (success) {
            log.info("消息发送成功, OrderServiceImpl.addOrder");
        } else {
            log.info("消息发送失败");
            // TODO 记录错误记录
        }
    }
}
