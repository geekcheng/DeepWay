package com.deep.listener;

import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.camel.CamelContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deep.service.DeepRouteService;
import com.deep.util.WebAppUtils;


public class ServletContextLoaderListener implements ServletContextListener{
	private Logger log = LoggerFactory.getLogger(this.getClass());
	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	public void contextInitialized(ServletContextEvent servletContextEvent) {
		log.info("初始化Servlet环境。开始");
		ServletContext servletContext = servletContextEvent.getServletContext();
		
//		CamelContext camelContext = (CamelContext)WebAppUtils.getBean("camelContext", servletContext);
//		DataSource dataSource = (DataSource)WebAppUtils.getBean("dataSource", servletContext);
		DeepRouteService routeService = (DeepRouteService)WebAppUtils.getBean("deepRouteService", servletContext);
		try {
//			String catalog = dataSource.getConnection().getCatalog();
//			System.setProperty(WebAppUtils.DB_CATALOG, catalog);
			
//			List<Route>  routes = routeService.findRoutes();
//			for (Route route : routes) {
//				try {
//					camelContext.addRoutes(route);
//				} catch (Exception e) {
//					e.printStackTrace();
//					log.info("Camel增加route错误!!!");
//				}
//			}
			routeService.startRoute();
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		log.info("初始化Servlet环境。结束");
	}

}
