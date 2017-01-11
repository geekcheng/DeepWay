package com.deep.config;

import java.util.Properties;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


/**
 * MVC配置
 * 使用代码配置spring更需要理清代码的架构
 * @author lwh
 *
 */
@Configuration
public class ContantConfig {
	private static final Logger logger = Logger.getLogger(ContantConfig.class);

	@Value("${project.title}")
	private String title;

	public @Bean Properties contant(){
		Properties content = new Properties();
		content.setProperty("title", title);
		return content;
	}
}
