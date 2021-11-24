package com.starcross.rocketmq.producer.demo.mq.service.impl;

import com.alibaba.fastjson.JSON;
import com.starcross.rocketmq.producer.demo.dto.MqMessageDTO;
import com.starcross.rocketmq.producer.demo.mq.service.MqProducerService;
import org.apache.rocketmq.client.producer.DefaultMQProducer;
import org.apache.rocketmq.client.producer.SendResult;
import org.apache.rocketmq.client.producer.SendStatus;
import org.apache.rocketmq.common.message.Message;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MqProducerServiceImpl implements MqProducerService {

    private static final Logger log = LoggerFactory.getLogger(MqProducerServiceImpl.class);

    @Autowired
    private DefaultMQProducer defaultMQProducer;

    @Override
    public boolean sendMessage(MqMessageDTO mqMessageDTO) {
        log.info("开始发送消息, mqMessageDTO:{}", JSON.toJSONString(mqMessageDTO));
        SendResult sendResult;
        try {
            Message message = new Message(mqMessageDTO.getTopic(), mqMessageDTO.getTag(), mqMessageDTO.getKey(), mqMessageDTO.getContent());
            sendResult = defaultMQProducer.send(message);
        } catch (Exception e) {
            log.error("消息发送失败, mqMessageDTO={}, cause:{}", JSON.toJSONString(mqMessageDTO), e);
            return false;
        }
        if (SendStatus.SEND_OK.equals(sendResult.getSendStatus())) {
            log.info("发送成功, sendResult:{}", JSON.toJSONString(sendResult));
            mqMessageDTO.setMsgId(sendResult.getMsgId());
            return true;
        }

        return false;
    }
}
