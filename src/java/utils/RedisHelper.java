/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.text.DecimalFormat;
import java.util.Random;
import redis.clients.jedis.Connection;
import redis.clients.jedis.Jedis;

/**
 *
 * @author duong
 */
public class RedisHelper {

    Jedis jedis;
    Connection connection;

    public RedisHelper() {
        jedis = new Jedis(Constants.REDIS_CONNECTION);
        connection = jedis.getConnection();
    }

    public String generateOTP(String username, long ex) {

        String otp = new DecimalFormat("000000").format(new Random().nextInt(999999));
        jedis.setex(username, ex, otp);
        return otp;
    }

    public String getOTP(String username) {
        String res = jedis.get(username);
        return res;
    }
}
