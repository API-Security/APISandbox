package com.starcross.rocketmq.consumer.demo.mq.listener;

import com.starcross.rocketmq.consumer.demo.properties.MqConsumerProperties;
import org.apache.rocketmq.client.consumer.DefaultMQPushConsumer;
import org.apache.rocketmq.client.consumer.listener.ConsumeConcurrentlyContext;
import org.apache.rocketmq.client.consumer.listener.ConsumeConcurrentlyStatus;
import org.apache.rocketmq.client.consumer.listener.MessageListenerConcurrently;
import org.apache.rocketmq.client.exception.MQClientException;
import org.apache.rocketmq.common.message.MessageExt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import java.util.List;

@Configuration
public abstract class AbstractConsumerListener {

    private static final Logger log = LoggerFactory.getLogger(AbstractConsumerListener.class);

    @Autowired
    private MqConsumerProperties consumerProperties;

    /**
     * 开启消费注册
     *
     * @param topic
     * @param tags  支持多个tag, 如 tag1 || tag2 || tag3
     * @throws MQClientException
     */
    public void listener(String topic, String tags) throws MQClientException {
        log.info("开启" + topic + ":" + tags + "消费者");

        DefaultMQPushConsumer consumer = new DefaultMQPushConsumer(consumerProperties.getGroup());
        consumer.setNamesrvAddr(consumerProperties.getNamesrvAddr());
        consumer.subscribe(topic, tags);

        // 开启内部类实现监听
        consumer.registerMessageListener(new MessageListenerConcurrently() {
            @Override
            public ConsumeConcurrentlyStatus consumeMessage(List<MessageExt> msgs, ConsumeConcurrentlyContext context) {
                return AbstractConsumerListener.this.onMessage(msgs);
            }
        });

        consumer.start();

    }

    /**
     * 处理body的业务
     *
     * @param msgs
     * @return
     */
    public abstract ConsumeConcurrentlyStatus onMessage(List<MessageExt> msgs);

}
