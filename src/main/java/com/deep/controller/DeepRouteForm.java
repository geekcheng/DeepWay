package com.deep.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.deep.model.DeepRoute;
import com.deep.service.DeepRouteService;
import com.deep.service.UserService;

@Controller
@RequestMapping("/deeproute")
public class DeepRouteForm {
	private static final Logger logger = Logger.getLogger(DeepRouteForm.class);
	
	@Autowired  
	private UserService userService;
	
	@Autowired  
	private DeepRouteService deepRouteService;
	
	@RequestMapping(value = { "/list","/"}  )
	public String list(Model model) {
		List<DeepRoute> routes = deepRouteService.findAll();
		model.addAttribute("routes", routes);
		return "/deeproute/list";
	}
	
//	
//	@RequestMapping(value = { "/validate/username" }, method = RequestMethod.POST)
//	@ResponseBody
//	public Boolean validateusername( @RequestParam("username") String username,  Model model) {
//		User user = userService.findUserByName(username);
//		if(user == null)
//			return true;
//		return false;
//	}
//	
//	
//	@RequestMapping(value = { "/validate/email" }, method = RequestMethod.POST)
//	@ResponseBody
//	public Boolean validateEmail( @RequestParam("email") String email,  Model model) {
//		User user = userService.findUserByName(email);
//		if(user == null)
//			return true;
//		return false;
//	}

}
