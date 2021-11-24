package com.starcross.rocketmq.consumer.demo.mq.listener;

import com.starcross.rocketmq.consumer.demo.enums.MqConsumerBeanEnum;
import com.starcross.rocketmq.consumer.demo.mq.service.MqConsumerService;
import org.apache.rocketmq.client.consumer.listener.ConsumeConcurrentlyStatus;
import org.apache.rocketmq.client.exception.MQClientException;
import org.apache.rocketmq.common.message.MessageExt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.ApplicationListener;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.ContextRefreshedEvent;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;


@Configuration
public class DefaultConsumerListener extends AbstractConsumerListener implements ApplicationContextAware, ApplicationListener<ContextRefreshedEvent> {

    private static final Logger log = LoggerFactory.getLogger(DefaultConsumerListener.class);

    /**
     * 上下文
     */
    private ApplicationContext applicationContext;

    @Override
    public ConsumeConcurrentlyStatus onMessage(List<MessageExt> msgs) {
        for (MessageExt msg : msgs) {
            String topicTag = msg.getTopic() + ":" + msg.getTags();
            MqConsumerBeanEnum mqConsumerBeanEnum = MqConsumerBeanEnum.getBeanByTopicTag(topicTag);
            if (mqConsumerBeanEnum == null) {
                break;
            }
            ConsumeConcurrentlyStatus consumerStatus = null;
            try {
                Object serviceBean = applicationContext.getBean(mqConsumerBeanEnum.getBeanName());
                if (serviceBean == null) {
                    break;
                }
                if (serviceBean instanceof MqConsumerService) {
                    String message = new String(msg.getBody(), "utf-8");
                    MqConsumerService consumerService = (MqConsumerService) serviceBean;
                    // 预处理
                    consumerService.beforeHandler(message);
                    // 处理
                    consumerStatus = consumerService.handle(message);
                    // 处理之后
                    consumerService.afterHandler(message, new Date(), consumerStatus);
                }
            } catch (UnsupportedEncodingException e) {
                log.error("body转字符串解析失败");
            }
        }
        return ConsumeConcurrentlyStatus.CONSUME_SUCCESS;
    }

    @Override
    public void onApplicationEvent(ContextRefreshedEvent contextRefreshedEvent) {
        try {
            // 订阅同一个topic下的多个tag
            super.listener("T_DEMO_PROJECT", "ADD_USER || ADD_ORDER");
        } catch (MQClientException e) {
            log.error("consumer error");
        }
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }
}
