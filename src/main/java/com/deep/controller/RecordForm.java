package com.deep.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.deep.model.DeepRoute;
import com.deep.model.ProcessRecord;
import com.deep.service.DeepRouteService;
import com.deep.service.ProcessRecordService;
import com.deep.service.UserService;

@Controller
@RequestMapping("/record")
public class RecordForm {
	private static final Logger logger = Logger.getLogger(RecordForm.class);
	
	@Autowired  
	private UserService userService;
	
	@Autowired  
	private DeepRouteService deepRouteService;
	@Autowired  
	private ProcessRecordService processRecordService;
	
	@RequestMapping(value = { "/list","/"}  )
	public String list(Model model) {
		List<ProcessRecord> records = processRecordService.findAll();
		model.addAttribute("records", records);
		return "/record/list";
	}
	

}
