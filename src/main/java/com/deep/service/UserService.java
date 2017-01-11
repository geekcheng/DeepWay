package com.deep.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import com.deep.model.User;

import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

@Service("userService")
public class UserService {
	@SuppressWarnings("unused")
	private static final long serialVersionUID = -3685114416344865209L;
	
	private static String USER_COLLECTION = "user";
	
	@Autowired
	private MongoTemplate mongoTemplate;
	

	@Autowired
	private FreeMarkerConfigurer freeMarkerConfigurer;
	/** 
     *  
     * @param user 
     */  
    public void saveUser(User user){  
        mongoTemplate.save(user, USER_COLLECTION);  
    }  

    public List<User> findAll() {
		List<User> ls = mongoTemplate.findAll(User.class);
		return ls;
	}
    /** 
     *  
     * @param name 
     * @return  
     */  
    public User findUserByName(String username){  
        return mongoTemplate.findOne(new Query(Criteria.where("username").is(username)), User.class, USER_COLLECTION);  
    }  
    
    public User findUserByEmail(String email){  
    	return mongoTemplate.findOne(new Query(Criteria.where("username").is(email)), User.class, USER_COLLECTION);  
    }  
    /**
     * 找到需要激活的用户
     * @param userid
     * @param activecode
     * @return
     */
    public User findUserByName(String userid,String activecode){  
    	Query query = new Query(Criteria.where("userid").is(userid)
    									.and("activecode").is(activecode)
    									.and("actived").is("0"));
    	return mongoTemplate.findOne( query, User.class, USER_COLLECTION);  
    } 
    /**
     * 注册用户
     * @param user
     */
    public void register(User user){
    	user.setActived("0");//0没有激活,1表示激活
    	
    	Md5PasswordEncoder encoder = new Md5PasswordEncoder();
    	String activecode = encoder.encodePassword(RandomStringUtils.random(10), RandomStringUtils.random(5));
    	user.setActivecode(activecode);
    	
        mongoTemplate.save(user, USER_COLLECTION);
    }  
    
    
    
}