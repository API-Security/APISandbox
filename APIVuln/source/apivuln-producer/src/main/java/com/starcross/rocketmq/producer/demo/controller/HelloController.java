package com.starcross.rocketmq.producer.demo.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.starcross.rocketmq.producer.demo.dto.OrderDTO;
import com.starcross.rocketmq.producer.demo.dto.UserDTO;
import com.starcross.rocketmq.producer.demo.service.OrderService;
import com.starcross.rocketmq.producer.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.UUID;

/**
 * 测试发生消息控制器
 */
@RestController
public class HelloController {


    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @GetMapping("/testAddUser")
    public String testAddUser() {
        // 模拟发送数据
        UserDTO user = new UserDTO(UUID.randomUUID().toString().replace("-", ""), "张三", "123456");
        userService.addUser(user);
        return "success";
    }
    @RequestMapping(value="/AddUser", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public String AddUser(@RequestBody String jsonPram) {
        UserDTO user = JSONObject.parseObject(jsonPram, UserDTO.class);;
        userService.addUser(user);
        return "success";
    }

    @GetMapping("/testAddOrder")
    public String testAddOrder() {
        // 模拟发送数据
        OrderDTO orderDTO = new OrderDTO(UUID.randomUUID().toString().replace("-", ""), "1", "1", new Date());
        orderService.addOrder(orderDTO);
        return "success";
    }


}


