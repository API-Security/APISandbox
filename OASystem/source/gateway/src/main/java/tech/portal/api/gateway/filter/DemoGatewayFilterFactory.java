package tech.portal.api.gateway.filter;

import lombok.extern.slf4j.Slf4j;
import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;

@Slf4j
@Component
public class DemoGatewayFilterFactory extends AbstractGatewayFilterFactory<DemoGatewayFilterFactory.Config> {

    private static final String CACHE_REQUEST_BODY_OBJECT_KEY = "cachedRequestBodyObject";

    public DemoGatewayFilterFactory() {
        super(Config.class);
        log.info("Loaded GatewayFilterFactory [DemoFilter]");
    }

    @Override
    public List<String> shortcutFieldOrder() {
        return Collections.singletonList("enabled");
    }

    @Override
    public GatewayFilter apply(DemoGatewayFilterFactory.Config config) {
        return (exchange, chain) -> {
            if (!config.isEnabled()) {
                return chain.filter(exchange);
            }
            log.info("-----DemoGatewayFilterFactory start-----");
            ServerHttpRequest request = exchange.getRequest();
            log.info("RemoteAddress: [{}]", request.getRemoteAddress());
            log.info("Path: [{}]", request.getURI().getPath());
            log.info("Method: [{}]", request.getMethod());
            log.info("Body: [{}]", (String) exchange.getAttribute(CACHE_REQUEST_BODY_OBJECT_KEY));
            log.info("-----DemoGatewayFilterFactory end-----");
            return chain.filter(exchange);
        };
    }

    public static class Config {

        private boolean enabled;

        public Config() {}

        public boolean isEnabled() {
            return enabled;
        }

        public void setEnabled(boolean enabled) {
            this.enabled = enabled;
        }
    }
}