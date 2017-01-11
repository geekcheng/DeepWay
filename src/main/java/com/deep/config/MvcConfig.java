package com.deep.config;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.http.MediaType;
import org.springframework.http.converter.ByteArrayHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.http.converter.xml.MarshallingHttpMessageConverter;
import org.springframework.oxm.xstream.XStreamMarshaller;
import org.springframework.web.accept.ContentNegotiationManager;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter;
import org.springframework.web.servlet.view.ContentNegotiatingViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;
import org.springframework.web.servlet.view.jasperreports.JasperReportsMultiFormatView;
import org.springframework.web.servlet.view.jasperreports.JasperReportsViewResolver;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;
import org.springframework.web.servlet.view.xml.MarshallingView;

import com.deep.interceptor.DeepInterceptor;
import com.deep.view.GenericFileView;
import com.deep.view.GenericFileViewResolver;
import com.deep.view.MultipleViewResolver;

/**
 * MVC配置
 * 
 * @author lwh
 *
 */
@Configuration
@EnableWebMvc
//@ComponentScan({"com.deep"})
//@ComponentScan(basePackages = "com.deep")
//@Import({ WebSocketConfig.class }) // 导入的
//@Import({ WebSocketConfig.class}) // 导入的
public class MvcConfig extends WebMvcConfigurerAdapter {
	private static final Logger logger = Logger.getLogger(MvcConfig.class);

	@Value("${jasper.prefix}")
	private String jasperPrefix;

	
	@Value("${project.title}")
	private String title;
	/**
	 * 增加拦截器
	 * */
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		super.addInterceptors(registry);
		registry.addInterceptor(deepInterceptor()).addPathPatterns("/**");
	}
	
	private DeepInterceptor deepInterceptor(){
		DeepInterceptor deepInterceptor = new DeepInterceptor();
		deepInterceptor.setTitle(title);
		return deepInterceptor;
	}

	/**
	 * 内容配置
	 * 配置ContentNegotiationConfigurer
	 */
	@Override
	public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
		super.configureContentNegotiation(configurer);
		logger.debug("configureContentNegotiation");
		configurer.ignoreAcceptHeader(true).defaultContentType(MediaType.TEXT_HTML);
//		configurer.ignoreAcceptHeader(true).defaultContentType(MediaType.APPLICATION_JSON);
		configurer.mediaType("xml", MediaType.APPLICATION_XML).mediaType("json", MediaType.APPLICATION_JSON).mediaType("html", MediaType.TEXT_HTML);
	}

	@Bean
	public ViewResolver contentNegotiatingViewResolver(ContentNegotiationManager manager) {
		ContentNegotiatingViewResolver resolver = new ContentNegotiatingViewResolver();
		resolver.setOrder(1);
		resolver.setContentNegotiationManager(manager);

		List<View> defaultViews = new ArrayList<View>();
		defaultViews.add(marshallingView());
		defaultViews.add(mappingJacksonJsonView());
		resolver.setDefaultViews(defaultViews);
		return resolver;
	}

	@Bean
	public MappingJackson2JsonView mappingJacksonJsonView() {
		MappingJackson2JsonView mappingJacksonJsonView = new MappingJackson2JsonView();
		return mappingJacksonJsonView;
	}

	@Bean
	public MarshallingView marshallingView() {
		MarshallingView view = new MarshallingView();
		view.setMarshaller(xStreamMarshaller());
		view.setContentType("application/xml");
		return view;
	}

	@Bean
	public XStreamMarshaller xStreamMarshaller() {
		XStreamMarshaller xStreamMarshaller = new XStreamMarshaller();
		xStreamMarshaller.setAutodetectAnnotations(true);
		return xStreamMarshaller;
	}

	// 自定义的bean
	@Bean
	public MultipleViewResolver multipleViewResolver() {
		MultipleViewResolver viewResolver = new MultipleViewResolver();
		viewResolver.setOrder(0);

		Map<String, ViewResolver> resolvers = new HashMap<String, ViewResolver>();
		resolvers.put("config,txt", genericFileViewResolver());
		resolvers.put("swf", genericSWFViewResolver());
		resolvers.put("ftl", freeMarkerViewResolver());
		resolvers.put("jasper", jasperReportsViewResolver());//Jasper report
		resolvers.put("jsp", jspViewResolver());//Jasper report
		viewResolver.setResolvers(resolvers);

		return viewResolver;
	}

	public GenericFileViewResolver genericFileViewResolver() {
		GenericFileViewResolver viewResolver = new GenericFileViewResolver();
		viewResolver.setOrder(11);
		viewResolver.setLocation("/WEB-INF/config/");
		viewResolver.setCache(false);
		viewResolver.setViewName("configFileView");
		return viewResolver;
	}

	@Bean
	@Scope("prototype")
	public GenericFileView configFileView() {
		GenericFileView view = new GenericFileView();
		view.setContentType("text/plain");
		view.setUrl("");
		return view;
	}

	public GenericFileViewResolver genericSWFViewResolver() {
		GenericFileViewResolver viewResolver = new GenericFileViewResolver();
		viewResolver.setOrder(12);
		viewResolver.setLocation("/WEB-INF/swf/");
		viewResolver.setCache(false);
		viewResolver.setViewName("swfFileView");
		return viewResolver;
	}

	@Bean
	@Scope("prototype")
	public GenericFileView swfFileView() {
		GenericFileView view = new GenericFileView();
		view.setContentType("application/x-shockwave-flash");
		view.setUrl("");
		return view;
	}

	public FreeMarkerViewResolver freeMarkerViewResolver() {
		FreeMarkerViewResolver viewResolver = new FreeMarkerViewResolver();
		viewResolver.setOrder(13);
		viewResolver.setViewClass(org.springframework.web.servlet.view.freemarker.FreeMarkerView.class);
		viewResolver.setContentType("text/html;charset=UTF-8");
		viewResolver.setExposeRequestAttributes(true);
		viewResolver.setExposeSessionAttributes(true);
		viewResolver.setExposeSpringMacroHelpers(true);
		return viewResolver;
	}

	public JasperReportsViewResolver jasperReportsViewResolver() {
		JasperReportsViewResolver jasperReportsViewResolver = new JasperReportsViewResolver();
		jasperReportsViewResolver.setOrder(14);
		jasperReportsViewResolver.setViewClass(JasperReportsMultiFormatView.class);
		jasperReportsViewResolver.setPrefix(jasperPrefix);
		jasperReportsViewResolver.setCache(false);
		return jasperReportsViewResolver;
	}

	public InternalResourceViewResolver jspViewResolver() {
		InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
		internalResourceViewResolver.setCache(false);
		internalResourceViewResolver.setViewClass(JstlView.class);
		internalResourceViewResolver.setContentType("text/html");
		internalResourceViewResolver.setSuffix(".jsp");
		return internalResourceViewResolver;
	}

	@Bean
	public CommonsMultipartResolver commonsMultipartResolver() {
		CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver();
		commonsMultipartResolver.setMaxUploadSize(5242880L);// 5M
		return commonsMultipartResolver;
	}

	//这个是bean
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
		internalResourceViewResolver.setOrder(5);
		internalResourceViewResolver.setViewClass(JstlView.class);
//		internalResourceViewResolver.setContentType("text/html");
		internalResourceViewResolver.setSuffix(".jsp");
		return internalResourceViewResolver;
	}

	@Bean
	public RequestMappingHandlerAdapter requestMappingHandlerAdapter() {
		RequestMappingHandlerAdapter requestMappingHandlerAdapter = new RequestMappingHandlerAdapter();
		List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();
		messageConverters.add(mappingJackson2HttpMessageConverter());
		messageConverters.add(marshallingHttpMessageConverter());
		messageConverters.add(byteArrayHttpMessageConverter());
		messageConverters.add(stringHttpMessageConverter());
		requestMappingHandlerAdapter.setMessageConverters(messageConverters);
		return requestMappingHandlerAdapter;
	}

	@Bean
	public ByteArrayHttpMessageConverter byteArrayHttpMessageConverter() {
		ByteArrayHttpMessageConverter byteArrayHttpMessageConverter = new ByteArrayHttpMessageConverter();
		return byteArrayHttpMessageConverter;
	}

	@Bean
	public StringHttpMessageConverter stringHttpMessageConverter() {
		StringHttpMessageConverter stringHttpMessageConverter = new StringHttpMessageConverter();
		return stringHttpMessageConverter;
	}

	@Bean
	public MappingJackson2HttpMessageConverter mappingJackson2HttpMessageConverter() {
		MappingJackson2HttpMessageConverter mappingJackson2HttpMessageConverter = new MappingJackson2HttpMessageConverter();
		return mappingJackson2HttpMessageConverter;
	}

	@Bean
	public MarshallingHttpMessageConverter marshallingHttpMessageConverter() {
		MarshallingHttpMessageConverter marshallingHttpMessageConverter = new MarshallingHttpMessageConverter();

		List<MediaType> supportedMediaTypes = new ArrayList<MediaType>();
		supportedMediaTypes.add(MediaType.APPLICATION_XML);// 增加xml支持

		marshallingHttpMessageConverter.setSupportedMediaTypes(supportedMediaTypes);
		return marshallingHttpMessageConverter;
	}
	
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations("/static/");//这里增加资源控制
	}
	
	@Override
	public void configureHandlerExceptionResolvers(List<HandlerExceptionResolver> exceptionResolvers) {
		super.configureHandlerExceptionResolvers(exceptionResolvers);
	}

	
	//	<bean id="exceptionResolver"
//			class="org.springframework.web.servlet.handler.SimpleMappingExceptionResolver">
//			<property name="defaultErrorView" value="/error" />
//			<property name="exceptionMappings">
//				<props>
//					<prop key="java.lang.ArrayIndexOutOfBoundsException">/error</prop>
//					<prop key="java.lang.NullPointerException">/error</prop>
//					<prop key="org.springframework.web.HttpSessionRequiredException">/error</prop>
//					<prop key="java.lang.IllegalArgumentException">/error</prop>
//					<prop key="org.hibernate.ObjectNotFoundException">/error</prop>
//					<prop key="javax.servlet.jsp.JspTagException">/error</prop>
//					<prop key="org.springframework.security.access.AccessDeniedException">/denied</prop>
//				</props>
//			</property>
//		</bean>
	
	@Bean(name="exceptionResolver")
	public SimpleMappingExceptionResolver simpleMappingExceptionResolver() {
		SimpleMappingExceptionResolver simpleMappingExceptionResolver = new SimpleMappingExceptionResolver();
		simpleMappingExceptionResolver.setDefaultErrorView("/login");
		Properties mappings = new Properties();
		mappings.put("java.lang.Throwable", "/login");//
		
		simpleMappingExceptionResolver.setExceptionMappings(mappings);
		return simpleMappingExceptionResolver;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handleException(Exception ex, WebRequest request) {
		ModelAndView mav = new ModelAndView("/login");
		logger.error("服务器异常",ex);
		mav.addObject("ex", ex);
		return mav;
	}

}
