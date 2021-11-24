package com.starcross.rocketmq.producer.demo.dto;


import java.io.Serializable;


public class MqMessageDTO implements Serializable {

    /**
     * 消息ID
     */
    private String msgId;

    /**
     * 主题
     */
    private String topic;

    /**
     * 消息标签体
     */
    private String tag;

    /**
     * 消息业务主键
     */
    private String key;

    /**
     * 消息体
     */
    private byte[] content;

    public String getMsgId() {
        return msgId;
    }

    public void setMsgId(String msgId) {
        this.msgId = msgId;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public byte[] getContent() {
        return content;
    }

    public void setContent(byte[] content) {
        this.content = content;
    }


    public MqMessageDTO() {
    }

    public MqMessageDTO(String msgId, String topic, String tag, String key, byte[] content) {
        this.msgId = msgId;
        this.topic = topic;
        this.tag = tag;
        this.key = key;
        this.content = content;
    }
}
