package com.deep.config;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationListener;
import org.springframework.session.events.SessionDestroyedEvent;
import org.springframework.stereotype.Component;

/**
 * 
 * @author lwh
 *
 */
@Component
public class LogoutListener  implements ApplicationListener<SessionDestroyedEvent>{
	private static final Logger logger = Logger.getLogger(LogoutListener.class);

	@Override
	public void onApplicationEvent(SessionDestroyedEvent event) {
		logger.debug("SessionDestroyedEvent");
		
	}
}
