package com.deep.test;

import java.util.List;

import org.apache.camel.CamelContext;
import org.apache.camel.RoutesBuilder;
import org.apache.camel.ServiceStatus;
import org.apache.camel.builder.RouteBuilder;
import org.apache.camel.model.RouteDefinition;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.deep.config.RootConfig;
import com.deep.model.DeepRoute;
import com.deep.service.DeepRouteService;

@RunWith(SpringJUnit4ClassRunner.class)  
//@SpringApplicationConfiguration(classes = Application.class) // 使用spring 应用环境
@WebAppConfiguration(value = "src/main/WebRoot")
@ContextConfiguration(classes=RootConfig.class)//代码配置环境
public class DeepTest{
//extends AbstractJUnit4SpringContextTests {
	Logger logger = LoggerFactory.getLogger(DeepTest.class);
//	
	
	@Autowired
	private DeepRouteService deepRouteService;
	
//	@Autowired
//	private ExcelHelper excelHelper;
	
	
	@Autowired
	private CamelContext camelContext;
//	
//	@Test
//	public void mongodbTest() {
//		mongoService.findMongodbSpecs();
//	}
	
	@Test
	public void routeTest() throws Exception {
		DeepRoute myRoute = new DeepRoute();
		myRoute.setRouteid("TestRoute");//id不能为空
////		myRoute.setFrom("ftp://lwh:1234@172.20.32.26/test?stepwise=true&ignoreFileNotFoundOrPermissionError=true&delete=true&consumer.delay=10s");
		myRoute.setCfrom("file:D:/test1/?delete=true");
		myRoute.setCto("file:E:/temp/outbox/");
		myRoute.setBackpath("file:E:/temp/outbox1/");//做个也是需要的
		myRoute.setProcessRef("myProcess");
////		myRoute.setRouteid("abcdddd");
		logger.info("++++++++++++++++++++++++++");
		RouteDefinition routeDefinition = new RouteDefinition();
		routeDefinition.from(myRoute.getCfrom());
		routeDefinition.process(myRoute.getProcessRef());
		routeDefinition.to(myRoute.getCto());
		camelContext.addRouteDefinition(routeDefinition);
		camelContext.start();//
		logger.info("============================");
		
		
//		RouteDefinition routeDefinition = new RouteDefinition();
//		routeDefinition.from(myRoute.getCfrom());
//		routeDefinition.to(myRoute.getCto());
//		camelContext.addRoutes(routeDefinition);
	}
	
	@Test
	public void saveRoute() throws Exception {
		DeepRoute myRoute = new DeepRoute();
		myRoute.setRouteid("TestRoute");//id不能为空
		myRoute.setCfrom("file:D:/test1/?delete=true");
		myRoute.setCto("file:E:/temp/outbox/");
		String backpath = "file://E:/temp/outbox1/?fileName=${date:now:yyyy}/${date:now:yyyyMMdd}/${file:name}";
		myRoute.setBackpath(backpath);//做个也是需要的
		
		deepRouteService.save(myRoute);
		logger.info("++++++++++++++++++++++++++");
		logger.info("============================");
	}
	
	@Test
	public void startRout() throws Exception {
		deepRouteService.startRoute();//启动全部路由
		logger.info("============================");
		
		List<DeepRoute>  routes = deepRouteService.findAll();
		for (DeepRoute deepRoute : routes) {
			String routeId = deepRoute.getRouteid();
			ServiceStatus serviceStatus = camelContext.getRouteStatus( routeId );
			logger.info(String.format("Route ID:%s|Status:%s",routeId, serviceStatus));
			if (ServiceStatus.Suspended.equals(serviceStatus)) {// 暂停
				camelContext.resumeRoute(routeId);
			} else if (ServiceStatus.Started.equals(serviceStatus)) {// 启动
				camelContext.suspendRoute(routeId);//暂停路由
			}
			logger.info(String.format("Route ID:%s|Status:%s",routeId,  camelContext.getRouteStatus( routeId )));
		}
		
	}
}
