package com.deep.util;

import javax.servlet.ServletContext;

import org.apache.catalina.core.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;


/**
 * 
 * @author lwh
 * @version 1.0
 */
public class WebAppUtils {
	/**
	 * @param beanName
	 * @param servletContext
	 * @return
	 */
	public static Object getBean(String name,ServletContext servletContext){
		WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext);
		Object object = wac.getBean(name);
		return object;
	}
	
	
}
