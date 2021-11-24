package com.starcross.rocketmq.producer.demo.service;

import com.starcross.rocketmq.producer.demo.dto.OrderDTO;

/**
 * 订单服务
 */

public interface OrderService {

    /**
     * 创建订单
     *
     * @param order
     */
    void addOrder(OrderDTO order);
}
