package com.deep.service;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

import com.deep.model.User;


/**
 * 用户保存器
 * @author laolu
 *
 */
public class SecurityUserHolder {
	
	public static User getCurrentUser() {
		//得到当前用户
		SecurityContext context = SecurityContextHolder.getContext();//当前用户
		if(context.getAuthentication() != null){
			Object o = context.getAuthentication().getPrincipal();
			if(o instanceof User){
				return (User) o;
			}else{
				return null;
			}
		}else
		{
			return null;
		}
	}
	

	/**
	 * 一般用在测试中其他的情况不用
	 * @param user
	 */
	public static void setCurrentUser(User user){
		SecurityContext context = SecurityContextHolder.getContext();//当前用户
		UsernamePasswordAuthenticationToken token=new UsernamePasswordAuthenticationToken(user.getUsername(),user.getPassword(),user.getAuthorities());
		token.setDetails(user);
		context.setAuthentication(token);
	}
	
}
