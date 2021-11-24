package tech.portal.api.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.function.Predicate;

@SpringBootApplication
public class SpringcloudGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringcloudGatewayApplication.class, args);
    }

    /**
     * 读取body断言需要注册bodyPredicate
     * @return
     */
    @Bean
    public Predicate bodyPredicate(){
        return o -> true;
    }

}
