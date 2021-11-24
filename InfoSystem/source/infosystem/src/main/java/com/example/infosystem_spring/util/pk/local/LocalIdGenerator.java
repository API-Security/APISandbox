package com.example.infosystem_spring.util.pk.local;

/** 
 * @Description 获取全局唯一ID，根据Twitter雪花ID算法。为兼顾到前端失精问题，把返回值long改成String：</br>
 * SnowFlake算法用来生成64位的ID，刚好可以用long整型存储，能够用于分布式系统中生产唯一的ID， 并且生成的ID有大致的顺序。 在这次实现中，生成的64位ID可以分成5个部分：</br>
 * 0 - 41位时间戳 - 5位数据中心标识 - 5位机器标识 - 12位序列号</br>
 * @author 王鑫 
 * @date Dec 20, 2017 10:26:59 PM  
 */
public interface LocalIdGenerator {

    /**
     * 获取全局唯一ID
     * @param dataCenterId 数据中心标识ID
     * @param machineId 机器标识ID
     * @return 全局唯一ID
     */
    String nextUniqueId(long dataCenterId, long machineId);

    /**
     * 获取全局唯一ID
     * @param startTimestamp 起始计算时间戳(默认2017-01-01)
     * @param dataCenterId 数据中心标识ID
     * @param machineId 机器标识ID
     * @return 全局唯一ID
     */
    String nextUniqueId(String startTimestamp, long dataCenterId, long machineId) throws Exception;

    /**
     * 获取全局唯一ID
     * @param startTimestamp 起始计算时间戳(默认2017-01-01)
     * @param dataCenterId 数据中心标识ID
     * @param machineId 机器标识ID
     * @return 全局唯一ID
     */
    String nextUniqueId(long startTimestamp, long dataCenterId, long machineId);

    /**
     * 批量获取全局唯一ID
     * @param dataCenterId 数据中心标识ID
     * @param machineId 机器标识ID
     * @param count 批量获取数量
     * @return 全局唯一ID
     */
    String[] nextUniqueIds(long dataCenterId, long machineId, int count);

    /**
     * 批量获取全局唯一ID
     * @param startTimestamp 起始计算时间戳(默认2017-01-01)
     * @param dataCenterId 数据中心标识ID
     * @param machineId 机器标识ID
     * @param count 批量获取数量
     * @return 全局唯一ID
     * @throws Exception
     */
    String[] nextUniqueIds(String startTimestamp, long dataCenterId, long machineId, int count) throws Exception;

    /**
     * 批量获取全局唯一ID
     * @param startTimestamp 起始计算时间戳(默认2017-01-01)
     * @param dataCenterId 数据中心标识ID
     * @param machineId 机器标识ID
     * @param count 批量获取数量
     * @return 全局唯一ID
     */
    String[] nextUniqueIds(long startTimestamp, long dataCenterId, long machineId, int count);
}