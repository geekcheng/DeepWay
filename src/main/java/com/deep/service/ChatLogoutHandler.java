package com.deep.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;

/**
 * provide security service
 * 
 * @author laolu
 *
 */
public class ChatLogoutHandler extends SimpleUrlLogoutSuccessHandler implements LogoutSuccessHandler {


	@Autowired  
	private SessionRegistry sessionRegistry;
	
	
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	@Override
	public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws NullPointerException,IOException, ServletException {
		if(authentication == null ){
			 redirectStrategy.sendRedirect(request, response, "/login");
			 return ;
		}
		setDefaultTargetUrl("/login");
		HttpSession httpsession = request.getSession();
		httpsession.invalidate();//清空session
		super.onLogoutSuccess(request, response, authentication);
	}

}
