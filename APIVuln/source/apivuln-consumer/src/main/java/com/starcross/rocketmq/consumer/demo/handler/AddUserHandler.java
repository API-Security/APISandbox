package com.starcross.rocketmq.consumer.demo.handler;

import com.alibaba.fastjson.JSON;
import com.starcross.rocketmq.consumer.demo.dto.UserDTO;
import com.starcross.rocketmq.consumer.demo.mq.service.impl.AbstractMqConsumerServiceImpl;
import org.apache.rocketmq.client.consumer.listener.ConsumeConcurrentlyStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;


/**
 * 处理MQ消息-添加用户
 */
@Service("addUserHandler")
public class AddUserHandler extends AbstractMqConsumerServiceImpl {

    private static final Logger log = LoggerFactory.getLogger(AddUserHandler.class);

    @Override
    public ConsumeConcurrentlyStatus handle(String message) {
        log.info("mq消息处理开始【添加用户】，message={}", message);
        try {
            UserDTO user = JSON.parseObject(message, UserDTO.class);
            // 模拟做业务操作
            // ....
            System.out.println(user.toString());
        } catch (Exception e) {
            log.error("handler error:{}", e);
            return ConsumeConcurrentlyStatus.RECONSUME_LATER;
        }
        return ConsumeConcurrentlyStatus.CONSUME_SUCCESS;
    }


}
