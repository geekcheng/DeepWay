package com.deep.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.deep.model.User;
import com.deep.service.SecurityUserHolder;
import com.deep.service.UserService;

@Controller
@RequestMapping("/user")
public class UserForm {
	private static final Logger logger = Logger.getLogger(UserForm.class);
	

	
	@Autowired  
	private SessionRegistry sessionRegistry;

	
	@Autowired  
	private UserService userService;
	
	
	@RequestMapping(value={ "/profile" })
	public String profile(Model model){
		logger.debug("Begin");
		User user = SecurityUserHolder.getCurrentUser();
////		model.addAttribute("user",user);//登录成功
//		model.addAttribute("onlineUserList", sessionRegistry.getAllPrincipals());
//		
//		List<ChatMessage> messages = chatMessageService.findChatMesage("java",ChatMessageService.MESSAGE_LIMIT);
//		model.addAttribute("messages",messages);//登录成功
		return "/user/profile";
	}
//	@RequestMapping({ "/budgetalert/{id}" })
//	public String budgetalert(@PathVariable("id") Integer id, Model model) throws Exception {
	@RequestMapping("/headimg/{userid}")
	@ResponseBody
	public byte[]  headimg(@PathVariable("userid") String userid, Model model,HttpServletRequest request,HttpServletResponse response) throws IOException{
		String path = request.getSession().getServletContext().getRealPath("/upload/user")+"/";
		String filepath = path + String.format("%s_snap.JPG", userid);
		File file = new File(filepath);
		byte[] bytes = FileCopyUtils.copyToByteArray(file);

	    response.setHeader("Content-Disposition", "attachment; filename=\"img.jpg\"");
	    response.setContentLength(bytes.length);
	    response.setContentType("text/html;charset=GBK");

	    return bytes;
	}
	

	@RequestMapping("/active/{userid}/{activecode}")
	public String active(@PathVariable("userid") String userid,@PathVariable("activecode") String activecode,Model model){
		logger.debug("active");
		User user = userService.findUserByName(userid, activecode);
		String msg = "";
		if(user != null){
			//激活成功
			user.setActived("1");
			userService.saveUser(user);
			model.addAttribute("msg","激活成功！请登录");//登录成功
			model.addAttribute("user",user);//登录成功
			return "/user/activesuc";
		}else{//激活不成功过
//			model.addAttribute("msg","激活不成功！");//登录成功
//			model.addAttribute("user",user);//登录成功
			return "/user/activefail";
		}
	}
	
	
//	@RequestMapping("/{page}")
//	public String page(@PathVariable("page") String page ){
//		return "/user/"+page;
//	}
	
	
	
	@RequestMapping(value = { "/list","/"}  )
	public String list(Model model) {
		List<User> users = userService.findAll();
		model.addAttribute("users",users);
		return "/user/list";
	}
	
	
	@RequestMapping(value = { "/validate/username" }, method = RequestMethod.POST)
	@ResponseBody
	public Boolean validateusername( @RequestParam("username") String username,  Model model) {
		User user = userService.findUserByName(username);
		if(user == null)
			return true;
		return false;
	}
	
	
	@RequestMapping(value = { "/validate/email" }, method = RequestMethod.POST)
	@ResponseBody
	public Boolean validateEmail( @RequestParam("email") String email,  Model model) {
		User user = userService.findUserByName(email);
		if(user == null)
			return true;
		return false;
	}

}
