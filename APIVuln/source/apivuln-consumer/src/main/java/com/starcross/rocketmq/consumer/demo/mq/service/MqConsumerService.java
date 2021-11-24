package com.starcross.rocketmq.consumer.demo.mq.service;

import org.apache.rocketmq.client.consumer.listener.ConsumeConcurrentlyStatus;

import java.util.Date;


public interface MqConsumerService {

    /**
     * 前置
     *
     * @param message
     * @return
     */
    ConsumeConcurrentlyStatus beforeHandler(String message);

    /**
     * 消息处理
     *
     * @param message
     * @return
     */
    ConsumeConcurrentlyStatus handle(String message);

    /**
     * 后置
     *
     * @param message
     * @param startHandlerTime
     * @param status
     */
    void afterHandler(String message, Date startHandlerTime, ConsumeConcurrentlyStatus status);
}
