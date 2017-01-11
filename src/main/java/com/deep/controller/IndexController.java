package com.deep.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Controller
public class IndexController {
	private static final Logger logger = Logger.getLogger(IndexController.class);


	@Value("${jasper.prefix}")
	private String jasperPrefix;

	@RequestMapping({ "/", "/list" })
	public String index() {
		logger.info("hello");
		return "/index";// 路径需要注意
	}
}
