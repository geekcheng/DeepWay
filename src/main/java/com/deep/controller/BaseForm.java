package com.deep.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
/**
 * 
 * @author lwh
 *
 */
public class BaseForm {
	protected Logger log = Logger.getLogger(this.getClass());
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
		
	}
	
	/**
	 * 异常处理
	 * @param request
	 * @param ex
	 * @return
	 */
	@ExceptionHandler 
    public String exp(HttpServletRequest request, Exception ex) {  
        request.setAttribute("ex", ex); 
        // 根据不同错误转向不同页面  
        return "/error";
    }
	
}
