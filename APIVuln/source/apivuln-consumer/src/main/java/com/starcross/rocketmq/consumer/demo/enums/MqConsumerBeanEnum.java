package com.starcross.rocketmq.consumer.demo.enums;

/**
 * 维护topicTag和处理类的关系

 */

public enum MqConsumerBeanEnum {


    ADD_USER("T_DEMO_PROJECT:ADD_USER", "addUserHandler"),
    ADD_ORDER("T_DEMO_PROJECT:ADD_ORDER", "addOrderHandler"),


    ;

    /**
     * TOPIC:TAG 名称
     */
    private String topicTag;

    /**
     * Handler bean名称
     */
    private String beanName;

    public String getTopicTag() {
        return topicTag;
    }

    public void setTopicTag(String topicTag) {
        this.topicTag = topicTag;
    }

    public String getBeanName() {
        return beanName;
    }

    public void setBeanName(String beanName) {
        this.beanName = beanName;
    }

    MqConsumerBeanEnum(String topicTag, String beanName) {
        this.topicTag = topicTag;
        this.beanName = beanName;
    }

    public static MqConsumerBeanEnum getBeanByTopicTag(String topicTag) {
        for (MqConsumerBeanEnum beanEnum : MqConsumerBeanEnum.values()) {
            if (beanEnum.getTopicTag().equals(topicTag)) {
                return beanEnum;
            }
        }
        return null;
    }
}
