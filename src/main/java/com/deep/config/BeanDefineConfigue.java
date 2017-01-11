package com.deep.config;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;

/**
 * 
 * @author lwh
 *
 */
//@Component("BeanDefineConfigue")
public class BeanDefineConfigue implements ApplicationListener<ContextRefreshedEvent> {// ContextRefreshedEvent为初始化完毕事件，spring还有很多事件可以利用

	/**
	 * 当一个ApplicationContext被初始化或刷新触发
	 */
	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		System.out.println(event);
		ApplicationContext applicationContext = event.getApplicationContext();
		if (applicationContext instanceof AnnotationConfigWebApplicationContext) {
			AnnotationConfigWebApplicationContext context = (AnnotationConfigWebApplicationContext) applicationContext;
		}
		System.out.println("spring容易初始化完毕================================================");
	}

}