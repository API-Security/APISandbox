package com.starcross.rocketmq.consumer.demo.mq.service.impl;

import com.starcross.rocketmq.consumer.demo.mq.service.MqConsumerService;
import org.apache.rocketmq.client.consumer.listener.ConsumeConcurrentlyStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.Date;


@Service("mqConsumerService")
public class AbstractMqConsumerServiceImpl implements MqConsumerService {

    private static final Logger log = LoggerFactory.getLogger(AbstractMqConsumerServiceImpl.class);


    @Override
    public ConsumeConcurrentlyStatus beforeHandler(String message) {
        log.info("mq消息前置处理: message={}", message);
        return null;
    }

    @Override
    public ConsumeConcurrentlyStatus handle(String message) {
        log.info("mq消息处理业务逻辑");
        return null;
    }

    @Override
    public void afterHandler(String message, Date startHandlerTime, ConsumeConcurrentlyStatus status) {
        log.info("mq消息后置处理, status", status);

    }
}
