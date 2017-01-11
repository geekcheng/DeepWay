package com.deep.config;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.switchuser.SwitchUserFilter;
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;
import org.springframework.web.filter.CharacterEncodingFilter;

public class SecurityWebApplicationInitializer extends AbstractSecurityWebApplicationInitializer {
	
	@Autowired
	@Qualifier("securityService")
	UserDetailsService userDetailsService;
	
	@Value("${project.title}")
	private String title;
	
	
	@Override  
    protected boolean enableHttpSessionEventPublisher() {  
        return true;  
    }
	
	@Override
    protected void beforeSpringSecurityFilterChain(ServletContext servletContext)
    {
        FilterRegistration.Dynamic characterEncodingFilter = servletContext.addFilter("encodingFilter", new CharacterEncodingFilter());
        characterEncodingFilter.setInitParameter("encoding", "UTF-8");
        characterEncodingFilter.setInitParameter("forceEncoding", "true");
        characterEncodingFilter.addMappingForUrlPatterns(null, false, "/*");
        
        
//        <beans:bean id="switchUserFilter" class="org.springframework.security.web.authentication.switchuser.SwitchUserFilter">
//        <beans:property name="userDetailsService" ref="securityService" />
//	    <beans:property name="switchUserUrl" value="/j_spring_security_switch_user" />
//	    <beans:property name="exitUserUrl" value="/j_spring_security_exit_user" />
//<!-- 	    <beans:property name="targetUrl" value="/user/myspace" /> -->
//	    <beans:property name="targetUrl" value="/user/list" />
//    </beans:bean>        
        SwitchUserFilter switchUserFilter = new SwitchUserFilter();
    }
	
	
}
