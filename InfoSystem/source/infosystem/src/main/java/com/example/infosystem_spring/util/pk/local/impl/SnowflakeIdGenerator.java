package com.example.infosystem_spring.util.pk.local.impl;

/**
 * The class Snowflake id generator. Created by paascloud.net@gmail.com
 * Twitter雪花ID算法
 * 概述
 * - SnowFlake算法是Twitter设计的一个可以在分布式系统中生成唯一的ID的算法，它可以满足Twitter每秒上万条消息ID分配的请求，这些消息ID是唯一的且有大致的递增顺序
 * 
 * 原理
 * - SnowFlake算法产生的ID是一个64位的整型，结构如下（每一部分用“-”符号分隔）：
 *    0 - 0000000000 0000000000 0000000000 0000000000 0 - 00000 - 00000 - 000000000000
 * - 1位标识部分，在java中由于long的最高位是符号位，正数是0，负数是1，一般生成的ID为正数，所以为0
 * - 41位时间戳部分，这个是毫秒级的时间，一般实现上不会存储当前的时间戳，而是时间戳的差值（当前时间-固定的开始时间），这样可以使产生的ID从更小值开始；41位的时间戳可以使用69年，(1L << 41) / (1000L * 60 * 60 * 24 * 365) = 69年
 * - 10位节点部分，Twitter实现中使用前5位作为数据中心标识，后5位作为机器标识，可以部署1024个节点
 * - 12位序列号部分，12位的计数顺序号支持每个节点每毫秒(同一机器，同一时间戳)产生4096个ID序号，加起来刚好64位，为一个Long型
 *  
 * 优点
 * - SnowFlake的优点是，整体上按照时间自增排序，并且整个分布式系统内不会产生ID碰撞(由数据中心ID和机器ID作区分)，并且效率较高，经测试，SnowFlake每秒能够产生26万ID左右
 * 
 * 使用
 * - SnowFlake算法生成的ID大致上是按照时间递增的，用在分布式系统中时，需要注意数据中心标识和机器标识必须唯一，这样就能保证每个节点生成的ID都是唯一的。
 *   或许我们不一定都需要像上面那样使用5位作为数据中心标识，5位作为机器标识，可以根据我们业务的需要，灵活分配节点部分，如：若不需要数据中心，完全可以使用全部10位作为机器标识；若数据中心不多，也可以只使用3位作为数据中心，7位作为机器标识
 */
public class SnowflakeIdGenerator {
    /**
     * 每一部分占用的位数
     */
    private final static long DATA_CENTER_ID_BITS = 5L; // 数据中心标识在ID中占用的位数
    private final static long MACHINE_ID_BITS = 5L; // 机器标识在ID中占用的位数
    private final static long SEQUENCE_BITS = 12L; // 序列号在ID中占用的位数

    /**
     * 每一部分的最大值
     */
    private final static long MAX_DATA_CENTER_ID = -1L ^ (-1L << DATA_CENTER_ID_BITS); // 支持的最大数据中心标识ID为31
    private final static long MAX_MACHINE_ID = -1L ^ (-1L << MACHINE_ID_BITS); // 支持的最大机器标识ID为31(这个移位算法可以很快的计算出几位二进制数所能表示的最大十进制数)
    private final static long MAX_SEQUENCE = -1L ^ (-1L << SEQUENCE_BITS); // 支持的最大序列(掩码), 这里为4095 (0b111111111111=0xfff=4095)

    /**
     * 每一部分向左的位移
     */
    private final static long DATA_CENTER_ID_SHIFT = SEQUENCE_BITS + MACHINE_ID_BITS; // 数据中心标识ID向左移17位(12+5)
    private final static long MACHINE_ID_SHIFT = SEQUENCE_BITS; // 机器标识ID向左移12位
    private final static long TIMESTAMP_SHIFT = SEQUENCE_BITS + MACHINE_ID_BITS + DATA_CENTER_ID_BITS; // 时间戳向左移22位(5+5+12)

    /**
     * 批量获取的最大数目(10万)
     */
    private final static int MAX_BATCH_COUNT = 100_000;

    /**
     * 变量部分
     */
    private long dataCenterId; // 数据中心标识ID(0~31)
    private long machineId; // 机器标识ID(0~31)
    private long sequence = 0L; // 毫秒内序列(0~4095)
    private long startTimestamp = -1L; // 开始时间戳
    private long lastTimestamp = -1L; // 上次生成ID的时间戳

    /**
     * 构造方法
     * @param startTimestamp 开始时间戳，不可大于当前时间
     * @param dataCenterId 数据中心标识ID(0~31)
     * @param machineId 机器标识ID(0~31)
     */
    public SnowflakeIdGenerator(long startTimestamp, long dataCenterId, long machineId) {
        long currentTimestamp = getCurrentTimestamp();
        if (startTimestamp > currentTimestamp) {
            throw new RuntimeException(String.format("Start timestamp can't be greater than %d", currentTimestamp));
        }

        if (dataCenterId > MAX_DATA_CENTER_ID || dataCenterId < 0) {
            throw new RuntimeException(String.format("Data center id can't be greater than %d or less than 0", MAX_DATA_CENTER_ID));
        }

        if (machineId > MAX_MACHINE_ID || machineId < 0) {
            throw new RuntimeException(String.format("Machine id can't be greater than %d or less than 0", MAX_MACHINE_ID));
        }

        // 当初始时间跟当前时间相等，减1毫秒，否则会导致溢出
        this.startTimestamp = (startTimestamp == currentTimestamp ? startTimestamp - 1 : startTimestamp);
        this.dataCenterId = dataCenterId;
        this.machineId = machineId;
    }

    /**
     * 批量获取下一组ID
     * @param count 批量条数
     * @return
     */
    public String[] nextIds(int count) {
        if (count <= 0 || count > MAX_BATCH_COUNT) {
            throw new RuntimeException(String.format("Count can't be greater than %d or less than 0", MAX_BATCH_COUNT));
        }

        String[] ids = new String[count];
        for (int i = 0; i < count; i++) {
            ids[i] = nextId();
        }

        return ids;
    }

    /**
     * 获得下一个ID (该方法是线程安全的)
     * @return
     */
    public synchronized String nextId() {
        long currentTimestamp = getCurrentTimestamp();

        // 如果当前时间小于上一次ID生成的时间戳, 说明系统时钟回退过这个时候应当抛出异常
        if (currentTimestamp < lastTimestamp) {
            throw new RuntimeException(String.format("Clock moved backwards. Refusing to generate id for %d milliseconds", lastTimestamp - currentTimestamp));
        }

        // 如果是同一时间生成的, 则进行毫秒内序列自增
        if (lastTimestamp == currentTimestamp) {
            // 相同毫秒内，序列号自增
            sequence = (sequence + 1) & MAX_SEQUENCE;
            // 同一毫秒的序列数已经达到最大，则毫秒内序列溢出
            if (sequence == 0) {
                // 阻塞到下一个毫秒，获得新的时间戳
                currentTimestamp = getNextTimestamp(lastTimestamp);
            }
        } else {
            // 不同毫秒内，序列号置为0
            sequence = 0L;
        }

        // 上次生成ID的时间戳
        lastTimestamp = currentTimestamp;

        // 移位并通过或运算拼到一起组成64位的ID
        long id = ((currentTimestamp - startTimestamp) << TIMESTAMP_SHIFT) // 时间戳部分
            | (dataCenterId << DATA_CENTER_ID_SHIFT) // 数据中心标识ID部分
            | (machineId << MACHINE_ID_SHIFT) // 机器标识ID部分
            | sequence; // 序列号部分

        return String.valueOf(id);
    }

    /**
     * 阻塞到下一个毫秒, 直到获得新的时间戳
     * @param lastTimestamp 上次生成ID的时间戳
     * @return 当前时间戳
     */
    private long getNextTimestamp(long lastTimestamp) {
        long currentTimestamp = getCurrentTimestamp();
        while (currentTimestamp <= lastTimestamp) {
            currentTimestamp = getCurrentTimestamp();
        }

        return currentTimestamp;
    }

    /**
     * 返回以毫秒为单位的当前时间
     * @return 当前时间(毫秒)
     */
    private long getCurrentTimestamp() {
        return System.currentTimeMillis();
    }

    public static void main(String[] args) {
        SnowflakeIdGenerator generator = new SnowflakeIdGenerator(1483200000000L, 2, 3);

        for (int i = 0; i < 1000; i++) {
            System.out.println(generator.nextId());
        }
    }
}