package com.deep.service;

import java.util.List;

import org.apache.camel.CamelContext;
import org.apache.camel.LoggingLevel;
import org.apache.camel.Processor;
import org.apache.camel.model.RouteDefinition;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.deep.model.DeepRoute;

/**
 * 
 * @author laolu
 *
 */
@Repository
@Service("deepRouteService")
//@Scope("prototype")
public class DeepRouteService  {
	@Autowired
	private MongoTemplate mongoTemplate;
	
	@Autowired
	private CamelContext camelContext;
	
	@Autowired
	private ApplicationContext appContext;
//	@Autowired
//	private FreeMarkerConfigurer freeMarkerConfigurer;
	public void save(DeepRoute deepRoute) {
		if(org.apache.commons.lang.StringUtils.isBlank(deepRoute.getRouteid())  ){
			deepRoute.setRouteid(null);
		}
		mongoTemplate.save(deepRoute,"deepRoute");
	}

	public List<DeepRoute> findAll() {
		List<DeepRoute> routes = mongoTemplate.findAll(DeepRoute.class);
		return routes;
	}
	public DeepRoute findById(String routeid) {
		Query query = new Query(Criteria.where("routeid").is(routeid));
		DeepRoute deepRoute = mongoTemplate.findOne(query, DeepRoute.class);
		return deepRoute;
	}
	
	public void startRoute() throws Exception{
		 List<DeepRoute> routes = findAll();
		 for (DeepRoute deepRoute : routes) {
			 assRouteDefinition(deepRoute);
		}
		camelContext.start();
	}
	
	private void assRouteDefinition(DeepRoute route) throws Exception{
		String cfrom = route.getCfrom();
		String cto = route.getCto();
		String routeid = route.getRouteid();
		String processRef = route.getProcessRef();
		String backpath = route.getBackpath();
		String errorpath = route.getErrorpath();
		
		RouteDefinition routeDefinition = new RouteDefinition();
		routeDefinition.routeId(routeid);
		routeDefinition.from(cfrom).log(LoggingLevel.INFO, "开始====从路由:" + routeid + ":" + cfrom);
//		// if( StringUtils.isNotEmpty(errorpath)){//如果有错误路径就发到错误路径上
//		// routeDefinition.errorHandler(deadLetterChannel(errorpath)).log(LoggingLevel.ERROR,
//		// "路由:"+routeid+"发送失败时备份到出错路径:"+errorpath);
//		// }else{
//		// routeDefinition.errorHandler(deadLetterChannel(cto));
//		// }
		
//		
//		// routeDefinition.process("fileNameProcess");//增加几个process
//		// routeDefinition.to(backpath).log("路由:"+routeid+"备份传输成功:"+backpath);
////		routeDefinition.to(cto).log(LoggingLevel.INFO, "到路由:" + routeid + ":" + cto);
//		
//		
		String ctos[] = cto.split(";");
		for(int i = 0 ; i < ctos.length ; i++){
			routeDefinition.to(ctos[i]).log(LoggingLevel.INFO, "到路由:" + routeid + ":" + ctos[i]);
		}
//		
		Processor processor = null;
		if (StringUtils.isNotEmpty(processRef)) {//发送成功后在记录数据
//			routeDefinition.process(processRef);//如果把config这段放在bean中，直接可以这样使用，如果放在service中，不能这样能够直接使用
			processor = (Processor)appContext.getBean(processRef);
		}else{//默认的记录器
//			routeDefinition.process(new DefaultProcess());//默认的处理器
			processor = (Processor)appContext.getBean("defaultProcess");
//			routeDefinition.process(processor);//默认的处理器
		}
		
		routeDefinition.process(processor);
		
		if (StringUtils.isNotEmpty(backpath)) {//发送成功后在记录数据
			routeDefinition.to(backpath).log(LoggingLevel.INFO, "备份路由:" + routeid + ":" + backpath);
		}
		
//		// routeDefin0ition.choice();
//		if (StringUtils.isNotEmpty(errorpath)) {// 如果有错误路径就发到错误路径上
//			routeDefinition.errorHandler(deadLetterChannel(errorpath)).log(LoggingLevel.ERROR, "路由:" + routeid + "发送失败时备份到出错路径:" + errorpath);
//		}
		routeDefinition.log(LoggingLevel.INFO,  "路由:" + routeid + "文件传输完成");
//		// routeDefinition.unmarshal("snshCdf").bean(new RecSnshCdf(),
//		// "logCdf",false);//出错如何处理
//
//		// routeDefinition.end();//结束
		camelContext.addRouteDefinition(routeDefinition);
		
	}


}
