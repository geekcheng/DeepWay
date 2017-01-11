package com.deep.config;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;


/**
 * 线程池配置
 * @author lwh
 *
 */
@Configuration
public class ThreadPoolConfig {
	private static final Logger logger = Logger.getLogger(ThreadPoolConfig.class);

	@Value("${threadPoolConfig.corePoolSize}")
	private Integer corePoolSize;
	@Value("${threadPoolConfig.keepAliveSeconds}")
	private Integer keepAliveSeconds;
	@Value("${threadPoolConfig.maxPoolSize}")
	private Integer maxPoolSize;
	@Value("${threadPoolConfig.queueCapacity}")
	private Integer queueCapacity;
	

	public @Bean ThreadPoolTaskExecutor taskExecutor(){
		logger.debug("ThreadPoolConfig Service ");
		ThreadPoolTaskExecutor threadPoolTaskExecutor = new ThreadPoolTaskExecutor();
		threadPoolTaskExecutor.setCorePoolSize(corePoolSize);
		threadPoolTaskExecutor.setKeepAliveSeconds(keepAliveSeconds);
		threadPoolTaskExecutor.setMaxPoolSize(maxPoolSize);
		threadPoolTaskExecutor.setQueueCapacity(queueCapacity);
		return threadPoolTaskExecutor;

	}
}
