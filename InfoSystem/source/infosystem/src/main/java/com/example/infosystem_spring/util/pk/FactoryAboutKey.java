package com.example.infosystem_spring.util.pk;

import com.example.infosystem_spring.util.pk.local.LocalIdGenerator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class FactoryAboutKey {

    private static final Logger log = LoggerFactory.getLogger(FactoryAboutKey.class);

    private static FactoryAboutKey factoryAboutKey;

    @Autowired
    private LocalIdGenerator localIdGenerator;

    @PostConstruct
    public void init() throws Exception {
        factoryAboutKey = this;
        factoryAboutKey.localIdGenerator = this.localIdGenerator;
    }

    /**
     * 
     * 根据表名从本地内存读取所对应的id
     * @param pk 表枚举配置项
     * @return 表新产生的ID
     */
    public static String getPK(TableEnum pk) {
        String finalId = factoryAboutKey.localIdGenerator.nextUniqueId(2, 3);
        log.info("# PK: [{}]=[{}]", pk.name(), finalId);
        return finalId;
    }
}