package com.deep.config;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.authentication.event.LoggerListener;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.deep.filter.CaptchaAuthenticationFilter;
import com.deep.service.ChatLoginHandler;
import com.deep.service.ChatLogoutHandler;

/**
 * 安全配置
 * 
 * @author lwh
 *
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	private static final Logger logger = Logger.getLogger(SecurityConfig.class);
	private static final String SECURE_ADMIN_PASSWORD = "rockandroll";
//	@Autowired
////	@Qualifier("customUserDetailsService")
//	SecurityService securityService;
	
	@Autowired
	@Qualifier("securityService")
	UserDetailsService userDetailsService;
	
	//静态资源
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/static/**");
//		web.ignoring().antMatchers("/ws/**");
	}

	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		logger.info(http);
	
		http.authorizeRequests()//委托请求
			.antMatchers("/**").permitAll()// 任何人(包括没有经过验证的)都可以访问"/chat"
//			.antMatchers("/websocket").permitAll()// 任何人(包括没有经过验证的)都可以访问"/chat"
			.antMatchers("/user/**").hasRole("ADMIN")
			.antMatchers("/chat.message/**").hasRole("CHAT");//message之前需要
//			.anyRequest().authenticated();
		

//		http.addFilterAt(new CaptchaAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class);
		http.formLogin()
        	.loginProcessingUrl("/login")//登录
            .loginPage("/login")//登录页面
            .usernameParameter("username")
            .passwordParameter("password")
            .defaultSuccessUrl("/chat")
            .successHandler(customLoginHandler())
            .permitAll();//运行全部
		
		
        http.logout().logoutUrl("/j_spring_security_logout")
	        .logoutSuccessUrl("/login")
	        .invalidateHttpSession(true)
	        .logoutSuccessHandler(customLogoutHandler()) ;
        
        http.csrf().disable();
        
        
		http.sessionManagement()
			.maximumSessions(1)
			.expiredUrl("/login?expired")
			.sessionRegistry(sessionRegistry()); 
		
		
		http.exceptionHandling().accessDeniedPage("/login");
		
	}

	// enable in memory based authentication with a user named "user" and "admin"
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
////		auth.userDetailsService(userDetailsService);
////		auth.inMemoryAuthentication().withUser("user").password("password").roles("USER").and().withUser("admin").password("password").roles("USER", "ADMIN");
//	}
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService);
		auth.authenticationProvider(authenticationProvider());
	}
	@Bean
	public DaoAuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
		authenticationProvider.setUserDetailsService(userDetailsService);
		authenticationProvider.setPasswordEncoder(passwordEncoder());
		return authenticationProvider;
	}
	@Bean
	public PasswordEncoder passwordEncoder() {
//		Md5PasswordEncoder
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public SessionRegistry sessionRegistry() {
		return new SessionRegistryImpl();
	}
	@Bean
	public ChatLogoutHandler customLogoutHandler() {
	    return new ChatLogoutHandler();
	}
	@Bean
	public ChatLoginHandler customLoginHandler() {
		return new ChatLoginHandler();
	}
	
	
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication();
//		auth.inMemoryAuthentication().withUser("user").password("password").roles("USER");
	}
	
	
	public LoggerListener loggerListener(){
		return new  org.springframework.security.authentication.event.LoggerListener();
	}
	
}
