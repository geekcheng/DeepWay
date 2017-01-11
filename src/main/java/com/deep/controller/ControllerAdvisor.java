package com.deep.controller;

import java.io.IOException;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class ControllerAdvisor {
	private static final Logger logger = Logger.getLogger(ControllerAdvisor.class);

	@ExceptionHandler(value = { IOException.class , RuntimeException.class })  
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)  
    public ModelAndView exception(Exception exception, WebRequest request) {  
        logger.info("Catch an exception", exception);  
        return   new ModelAndView("/login"); 
    }  
      
    @ExceptionHandler(value = { NoHandlerFoundException.class })  
    @ResponseStatus(HttpStatus.NOT_FOUND)  
    public ModelAndView noMapping(Exception exception, WebRequest request) {  
        logger.info("No mapping exception", exception);  
        return  new ModelAndView("/login");  
    }
    
    
}
