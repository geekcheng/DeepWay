package com.deep.config;

import javax.servlet.http.HttpSessionEvent;

import org.apache.log4j.Logger;
import org.springframework.security.web.session.HttpSessionEventPublisher;

/**
 * HttpSessionConfig
 * 
 * @author lwh
 *
 */
public class ChatHttpSessionEventPublisher extends  HttpSessionEventPublisher{
	private static final Logger logger = Logger.getLogger(ChatHttpSessionEventPublisher.class);
	
    public ChatHttpSessionEventPublisher() {
	}
    @Override
    public void sessionCreated(HttpSessionEvent event) {
    	super.sessionCreated(event);
    	logger.debug("Created");
    }
    
    @Override
    public void sessionDestroyed(HttpSessionEvent event) {
    	super.sessionDestroyed(event);
    	logger.debug("Destroyed");
    }
}
