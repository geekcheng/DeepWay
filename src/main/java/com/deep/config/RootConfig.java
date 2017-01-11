package com.deep.config;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;

/**
 * 基础配置文件说明
 * 这里配置属性文件
 * 根配置文件
 * @author lwh
 */
@Configuration
@ComponentScan(basePackages = "com.deep")
@PropertySources({ @PropertySource("classpath:deepway.properties")})
public class RootConfig  {
	private static final Logger logger = Logger.getLogger(RootConfig.class);
	
	@Bean
	public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
		logger.debug("Properties Loaded");
		return new PropertySourcesPlaceholderConfigurer();
	}
}
