package com.deep.config;

import java.util.Properties;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.ui.freemarker.FreeMarkerConfigurationFactoryBean;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

/**
 * MVC配置
 * 
 * @author lwh
 *
 */
@Configuration
public class FreeMarkerConfig {
	private static final Logger logger = Logger.getLogger(FreeMarkerConfig.class);


	@Value("${freemarker.templateLoaderPath}")
	private String templateLoaderPath;

	@Bean
	public FreeMarkerConfigurer freeMarkerConfigurer() {
		FreeMarkerConfigurer freeMarkerConfigurer = new FreeMarkerConfigurer();
		freeMarkerConfigurer.setTemplateLoaderPath(templateLoaderPath);
		
		Properties properties = new Properties();
		properties.setProperty("template_update_delay", "0");
		properties.setProperty("default_encoding", "UTF-8");
		freeMarkerConfigurer.setFreemarkerSettings(properties);
		
//		Map<String, Object> variables = new HashMap<String, Object>();
//		variables.put("xml_escape", value)
//		freeMarkerConfigurer.setFreemarkerVariables(variables);
//		simpleMappingExceptionResolver.setExceptionMappings(mappings);
		logger.debug("FreeMarkerConfigurer");
		return freeMarkerConfigurer;
	}
	
//	public XmlEscape fmXmlEscape() {
//		XmlEscape xmlEscape = new XmlEscape();
//		
//	}
	
	
	@Bean
	public FreeMarkerConfigurationFactoryBean freemarkerEngine() {
		FreeMarkerConfigurationFactoryBean bean = new FreeMarkerConfigurationFactoryBean();
		bean.setDefaultEncoding("UTF-8");
		return bean;
	}

}
