package com.deep.config;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.security.web.session.HttpSessionEventPublisher;
import org.springframework.session.data.redis.config.ConfigureRedisAction;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.session.data.redis.config.annotation.web.http.RedisHttpSessionConfiguration;

import redis.clients.jedis.JedisPoolConfig;

/**
 * HttpSessionConfig
 * 
 * @author lwh
 *
 */
@Configuration
@EnableRedisHttpSession
public class HttpSessionConfig {
	private static final Logger logger = Logger.getLogger(HttpSessionConfig.class);

	@Value("${redis.host}")
	private String redisHost;
	@Value("${redis.port}")
	private Integer redisPort;

	
	@Bean  
    public RedisHttpSessionConfiguration redisHttpSessionConfiguration() {
		RedisHttpSessionConfiguration redisHttpSessionConfiguration = new RedisHttpSessionConfiguration();
		redisHttpSessionConfiguration.setMaxInactiveIntervalInSeconds(600);
		redisHttpSessionConfiguration.sessionRedisTemplate(jedisConnectionFactory());
		return redisHttpSessionConfiguration;
	}
	
	@Bean  
    public JedisConnectionFactory jedisConnectionFactory() {  
		logger.debug("JedisConnectionFactory");
        JedisConnectionFactory connectionFactory = new JedisConnectionFactory();  
        connectionFactory.setHostName(redisHost);  
        connectionFactory.setPoolConfig(jedisPoolConfig());
        logger.debug(connectionFactory);
        return connectionFactory;  
    }  
	
	@Bean  
    public JedisPoolConfig jedisPoolConfig() {
		JedisPoolConfig pool = new JedisPoolConfig();  
	    pool.setMaxIdle(8);//最大空闲数
	    pool.setMaxTotal(8);//
	    return pool;
	}
    @Bean  
    public HttpSessionEventPublisher httpSessionEventPublisher() {  
        return new HttpSessionEventPublisher();  
    }  
    
    
    @Bean
    public static ConfigureRedisAction configureRedisAction() {
        return ConfigureRedisAction.NO_OP;
    }
    
}
