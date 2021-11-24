package com.example.infosystem_spring.util.pk.local.impl;

import com.example.infosystem_spring.util.pk.local.LocalIdGenerator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.concurrent.ConcurrentHashMap;

@Component
public class LocalIdGeneratorImpl implements LocalIdGenerator {
    private static final Logger logger = LoggerFactory.getLogger(LocalIdGeneratorImpl.class);

    private static final String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss:SSS";
    private static final long DEFAULT_START_TIMESTAMP = 1483200000000L; // 2017-01-01 00:00:00:000
    private static SimpleDateFormat dateFormat;

    private volatile ConcurrentHashMap<String, SnowflakeIdGenerator> idGeneratorMap = new ConcurrentHashMap<String, SnowflakeIdGenerator>();

    @Value("${frequentLogPrint:false}")
    private Boolean frequentLogPrint;

    static {
        // format
        dateFormat = new SimpleDateFormat(DATE_FORMAT);
    }

    public static String convert(String[] arrays) {
//        if (ArrayUtils.isEmpty(arrays)) {
//            return null;
//        }

        StringBuilder builder = new StringBuilder();
        for (String array : arrays) {
            builder.append(array).append(",");
        }

        String result = builder.toString();
        result = result.substring(0, result.length() - 1);

        return result;
    }

    @Override
    public String nextUniqueId(long dataCenterId, long machineId) {
        return nextUniqueId(DEFAULT_START_TIMESTAMP, dataCenterId, machineId);
    }

    @Override
    public String nextUniqueId(String startTimestamp, long dataCenterId, long machineId) throws Exception {
        return nextUniqueId(dateFormat.parse(startTimestamp).getTime(), dataCenterId, machineId);
    }

    @Override
    public String nextUniqueId(long startTimestamp, long dataCenterId, long machineId) {
        String nextUniqueId = getIdGenerator(startTimestamp, dataCenterId, machineId).nextId();
        if (frequentLogPrint) {
            logger.info("Next unique id is {} for startTimestamp={}, dataCenterId={}, machineId={}", nextUniqueId, startTimestamp, dataCenterId, machineId);
        }
        return nextUniqueId;
    }

    @Override
    public String[] nextUniqueIds(long dataCenterId, long machineId, int count) {
        return nextUniqueIds(DEFAULT_START_TIMESTAMP, dataCenterId, machineId, count);
    }

    @Override
    public String[] nextUniqueIds(String startTimestamp, long dataCenterId, long machineId, int count) throws Exception {
        return nextUniqueIds(dateFormat.parse(startTimestamp).getTime(), dataCenterId, machineId, count);
    }

    @Override
    public String[] nextUniqueIds(long startTimestamp, long dataCenterId, long machineId, int count) {
        String[] nextUniqueIds = getIdGenerator(startTimestamp, dataCenterId, machineId).nextIds(count);
        if (frequentLogPrint) {
            logger.info("Next unique ids is {} for startTimestamp={}, dataCenterId={}, machineId={}, count={}", convert(nextUniqueIds), startTimestamp, dataCenterId, machineId, count);
        }
        return nextUniqueIds;
    }

    private SnowflakeIdGenerator getIdGenerator(long startTimestamp, long dataCenterId, long machineId) {
        String key = dataCenterId + "-" + machineId;
        SnowflakeIdGenerator idGenerator = idGeneratorMap.get(key);
        if (idGenerator == null) {
            SnowflakeIdGenerator newIdGnerator = new SnowflakeIdGenerator(startTimestamp, dataCenterId, machineId);
            idGenerator = idGeneratorMap.putIfAbsent(key, newIdGnerator);
            if (idGenerator == null) {
                idGenerator = newIdGnerator;
            }
        }
        return idGenerator;
    }
}