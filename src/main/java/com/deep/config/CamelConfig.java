package com.deep.config;

import org.apache.camel.CamelContext;
import org.apache.camel.Processor;
import org.apache.camel.impl.DefaultCamelContext;
import org.apache.log4j.Logger;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.oxm.jaxb.Jaxb2Marshaller;
import org.springframework.test.annotation.ProfileValueSourceConfiguration;

import com.deep.process.DefaultProcess;

/**
 * Camel配置
 * @author lwh
 *
 */
@Configuration
//@ComponentScan(basePackages = "com.deep.process")
public class CamelConfig {
	private static final Logger logger = Logger.getLogger(CamelConfig.class);

	@Bean
	public CamelContext camelContext() throws Exception {
		logger.info("CamelConfig");
		CamelContext camelContext = new DefaultCamelContext();
//		camelContext.setAutoStartup(false);
//		camelContext.addRoutes(null);//先不增加
		// Map<String, DataFormatDefinition> dataFormats = new HashMap<String,
		// DataFormatDefinition>();
		// camelContext.setDataFormats(dataFormats);
		// camelContext.stop();//先停止
		// logger.info(camelContext);
		camelContext.getRegistry();
		return camelContext;

	}
	
//	@Bean
//	public Jaxb2Marshaller jaxb2Marshaller() {
//		Jaxb2Marshaller jaxb2Marshaller = new Jaxb2Marshaller();
////		jaxb2Marshaller.setClassesToBeBound(classesToBeBound);
//		return jaxb2Marshaller;
//	}
	
//	@Bean(name="defaultProcess")
//	public Processor defaultProcess() {
//		Processor processor = new DefaultProcess();
//		return processor;
//	}
		
}
