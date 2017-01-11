package com.deep.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.filter.DelegatingFilterProxy;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.deep.listener.ServletContextLoaderListener;

//web初始化。类似于web.xml
public class WebAppInit extends AbstractAnnotationConfigDispatcherServletInitializer {

	// 使用logback.xml没有配置文件
	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		super.onStartup(servletContext);
		servletContext.addFilter("springSessionRepositoryFilter", new DelegatingFilterProxy()).addMappingForUrlPatterns(null, false, "/*");
		servletContext.addListener(new ChatHttpSessionEventPublisher());
		servletContext.addListener(new ServletContextLoaderListener());
	}

	/**
	 * 应用配置文件
	 */
	@Override
	protected Class<?>[] getRootConfigClasses() {
		// 加载配置文件类，这里与上面的xml配置是对应的，需要使用@Configuration注解进行标注，稍后介绍
		return new Class[] { RootConfig.class };
		// return null;
	}

	// 类似于spring-mvc.xml文件
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return null;
		// return new Class[] { MvcConfig.class };
	}

	/*
	 * DispatcherServlet的映射路径
	 */
	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };// map全部的路径
	}

	@Override
    protected void customizeRegistration(ServletRegistration.Dynamic registration) {
        boolean done = registration.setInitParameter("throwExceptionIfNoHandlerFound", "true"); // -> true
        if(!done) throw new RuntimeException();
    }
	
	@Override
	protected boolean isAsyncSupported() {
		return true;
	}
	
	
}
