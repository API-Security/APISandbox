package com.starcross.rocketmq.producer.demo.config;

import com.starcross.rocketmq.producer.demo.properties.MqProducerProperties;
import org.apache.rocketmq.client.exception.MQClientException;
import org.apache.rocketmq.client.producer.DefaultMQProducer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;


@Configuration
public class DefaultProducerConfig {

    private static final Logger log = LoggerFactory.getLogger(DefaultProducerConfig.class);

    @Autowired
    private MqProducerProperties propertiesProperties;

    /**
     * 创建普通消息发送者实例
     *
     * @return
     * @throws MQClientException
     */
    @Bean
    @Primary
    public DefaultMQProducer defaultProducer() throws MQClientException {
        DefaultMQProducer producer = new DefaultMQProducer(propertiesProperties.getGroup());
        producer.setNamesrvAddr(propertiesProperties.getNamesrvAddr());
        producer.setVipChannelEnabled(false);
        producer.setRetryTimesWhenSendAsyncFailed(10);
        producer.start();
        log.info("default producer 创建成功, {}, {}", propertiesProperties.getNamesrvAddr(), propertiesProperties.getGroup());
        return producer;
    }
}
