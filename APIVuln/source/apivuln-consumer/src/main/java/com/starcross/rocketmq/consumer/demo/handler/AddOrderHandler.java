package com.starcross.rocketmq.consumer.demo.handler;

import com.alibaba.fastjson.JSON;
import com.starcross.rocketmq.consumer.demo.dto.OrderDTO;
import com.starcross.rocketmq.consumer.demo.mq.service.impl.AbstractMqConsumerServiceImpl;
import org.apache.rocketmq.client.consumer.listener.ConsumeConcurrentlyStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 * 处理MQ消息-创建订单
 */
@Service("addOrderHandler")
public class AddOrderHandler extends AbstractMqConsumerServiceImpl {
    private static final Logger log = LoggerFactory.getLogger(AddOrderHandler.class);


    @Override
    public ConsumeConcurrentlyStatus handle(String message) {
        log.info("mq消息处理开始【创建订单】，message={}", message);
        try {
            OrderDTO orderDTO = JSON.parseObject(message, OrderDTO.class);
            // 模拟做业务操作
            // ....
            System.out.println(orderDTO.toString());
        } catch (Exception e) {
            log.error("handler error:{}", e);
            return ConsumeConcurrentlyStatus.RECONSUME_LATER;
        }
        return ConsumeConcurrentlyStatus.CONSUME_SUCCESS;
    }
}
