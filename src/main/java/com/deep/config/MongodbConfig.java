package com.deep.config;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.authentication.UserCredentials;
import org.springframework.data.mongodb.MongoDbFactory;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.SimpleMongoDbFactory;

import com.mongodb.MongoClient;

/**
 * MVC配置
 * 使用代码配置spring更需要理清代码的架构
 * @author lwh
 *
 */
@Configuration
public class MongodbConfig {
	private static final Logger logger = Logger.getLogger(MongodbConfig.class);

	@Value("${mongodb.host}")
	private String host;
	@Value("${mongodb.host.port}")
	private Integer port;
	@Value("${mongodb.host.dbname}")
	private String dbname;
	@Value("${mongodb.host.mongoDbLogin}")
	private String mongoDbLogin;
	@Value("${mongodb.host.mongoDbPassword}")
	private String mongoDbPassword;

	public  MongoDbFactory mongoDbFactory() throws Exception {
//		return new SimpleMongoDbFactory(new MongoClient(host, port), dbname,new UserCredentials(mongoDbLogin, mongoDbPassword));
		return new SimpleMongoDbFactory(new MongoClient(host, port), dbname );
	}

	public @Bean MongoTemplate mongoTemplate() throws Exception {
		logger.debug("Creat MongoTemplate");
		MongoTemplate mongoTemplate = new MongoTemplate(mongoDbFactory());
		return mongoTemplate;

	}
	
	
}
