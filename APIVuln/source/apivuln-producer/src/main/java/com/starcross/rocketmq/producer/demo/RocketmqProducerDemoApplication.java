package com.starcross.rocketmq.producer.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.starcross")
public class RocketmqProducerDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(RocketmqProducerDemoApplication.class, args);
    }

}
