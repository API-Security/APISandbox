package com.starcross.rocketmq.producer.demo.mq.service;

import com.starcross.rocketmq.producer.demo.dto.MqMessageDTO;

/**
 * MQ生产者发送消息服务
 */
public interface MqProducerService {

    /**
     * 发送消息
     *
     * @param mqMessageDTO
     * @return
     */
    boolean sendMessage(MqMessageDTO mqMessageDTO);
}
