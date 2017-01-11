package com.deep.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deep.model.User;
/**
 * provide security service
 * @author laolu
 *
 */
@Repository
@Transactional
@Service("securityService")
public class SecurityService implements UserDetailsService{
//	@Autowired
//	private SessionFactory sessionFactory;
	
	@Autowired
	private UserService  userService;
	

	/**
	 * 配置事务
	 */
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException, DataAccessException {
		User user = userService.findUserByName(username);
		//TEST
//		User user = new User();
//		user.setUsername(username);
//		Session session = sessionFactory.getCurrentSession();
//		Criteria criteria = session.createCriteria(User.class);
//		criteria.add(Restrictions.or( 
//				Restrictions.eq("mobile",username),
//					Restrictions.or(Restrictions.eq("username",username),
//									Restrictions.eq("empno",username))
//				));
//		criteria.add(Property.forName("disable").eq(false));
//		List<User> users = criteria.list();
		if (user == null ) {
			throw new UsernameNotFoundException("User " + username + " has no GrantedAuthority");
		}
//		else{
//			for (User user : users) {
//				Iterator<Role> roles = user.getRoles().iterator();
//				while(roles.hasNext())
//				{
//					Role role = roles.next();
//					role = roleService.findRole(role.getRoleid());
//					role.setResources(role.getResources());
//				}
//			}
//		}
//		return new org.springframework.security.core.userdetails.User(username, user.getPassword(), true, true, true, true, getGrantedAuthorities(user));
		List<GrantedAuthority> authorities = getGrantedAuthorities( user);
		user.setAuthorities(authorities);
		return user;
	}



	//拥有的权限
	private List<GrantedAuthority> getGrantedAuthorities(User user){
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
//		for(UserProfile userProfile : user.getUserProfiles()){
//			logger.info("UserProfile : {}", userProfile);
//			authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));//聊天的权限
			authorities.add(new SimpleGrantedAuthority("ROLE_CHAT"));//聊天的权限
			authorities.add(new SimpleGrantedAuthority("ROLE_ANONYMOUSLY"));//聊天的权限
//		}
//		logger.info("authorities : {}", authorities);
		return authorities;
	}

}
