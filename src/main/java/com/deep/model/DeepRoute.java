package com.deep.model;



import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.stereotype.Component;

@Component()
@Document(collection = "deepRoute")
public class DeepRoute 
	implements java.io.Serializable {

	private static final long serialVersionUID = -3685114416347865209L;
	@Id
	private String routeid;
	private String name;
	private String status;// 状态
	private String cfrom;
	private String cto;//这里也需要修改
	private String backpath;
	private String errorpath;//错误处理路径

	private String processRef = "defaultProcess";//处理器
	private String email;

	private String unmarshalString;
	private String unmarshalBean;
	private String remark;
	private String ctoname;

	private Boolean disable = false;
	
	public DeepRoute() {
		super();
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCfrom() {
		return cfrom;
	}

	public void setCfrom(String cfrom) {
		this.cfrom = cfrom;
	}

	public String getCto() {
		return cto;
	}

	public void setCto(String cto) {
		this.cto = cto;
	}

	public String getBackpath() {
		return backpath;
	}

	public void setBackpath(String backpath) {
		this.backpath = backpath;
	}

	public String getProcessRef() {
		return processRef;
	}

	public void setProcessRef(String processRef) {
		this.processRef = processRef;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean getDisable() {
		return disable;
	}

	public void setDisable(Boolean disable) {
		this.disable = disable;
	}


	public String getRouteid() {
		return routeid;
	}

	public void setRouteid(String routeid) {
		this.routeid = routeid;
	}

	public String getUnmarshalString() {
		return unmarshalString;
	}

	public void setUnmarshalString(String unmarshalString) {
		this.unmarshalString = unmarshalString;
	}

	public String getErrorpath() {
		return errorpath;
	}

	public void setErrorpath(String errorpath) {
		this.errorpath = errorpath;
	}

	public String getUnmarshalBean() {
		return unmarshalBean;
	}

	public void setUnmarshalBean(String unmarshalBean) {
		this.unmarshalBean = unmarshalBean;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getCtoname() {
		return ctoname;
	}

	public void setCtoname(String ctoname) {
		this.ctoname = ctoname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

//
//	@Override
//	public void configure() throws Exception {
//		RouteDefinition routeDefinition = from(cfrom).log(LoggingLevel.INFO, "开始====从路由:" + routeid + ":" + cfrom);
//		// if( StringUtils.isNotEmpty(errorpath)){//如果有错误路径就发到错误路径上
//		// routeDefinition.errorHandler(deadLetterChannel(errorpath)).log(LoggingLevel.ERROR,
//		// "路由:"+routeid+"发送失败时备份到出错路径:"+errorpath);
//		// }else{
//		// routeDefinition.errorHandler(deadLetterChannel(cto));
//		// }
//		routeDefinition.routeId(routeid);
//		
//		// routeDefinition.process("fileNameProcess");//增加几个process
//		// routeDefinition.to(backpath).log("路由:"+routeid+"备份传输成功:"+backpath);
////		routeDefinition.to(cto).log(LoggingLevel.INFO, "到路由:" + routeid + ":" + cto);
//		
//		
//		String ctos[] = cto.split(";");
//		for(int i = 0 ; i < ctos.length ; i++){
//			routeDefinition.to(ctos[i]).log(LoggingLevel.INFO, "到路由:" + routeid + ":" + ctos[i]);
//		}
//		
//		
//		if (StringUtils.isNotEmpty(processRef)) {//发送成功后在记录数据
//			routeDefinition.process(processRef);
//		}
//		
//		routeDefinition.to(backpath).log(LoggingLevel.INFO, "备份路由:" + routeid + ":" + backpath);
//		// routeDefinition.choice();
//		if (StringUtils.isNotEmpty(errorpath)) {// 如果有错误路径就发到错误路径上
//			routeDefinition.errorHandler(deadLetterChannel(errorpath)).log(LoggingLevel.ERROR, "路由:" + routeid + "发送失败时备份到出错路径:" + errorpath);
//		}
//		routeDefinition.log(LoggingLevel.INFO,  "路由:" + routeid + "文件传输完成\n");
//		// routeDefinition.unmarshal("snshCdf").bean(new RecSnshCdf(),
//		// "logCdf",false);//出错如何处理
//
//		// routeDefinition.end();//结束
//	}
	
	//路由
//	public void setConfigure(String routeString){
////		RouteDefinition routeDefinition = from(cfrom).log(LoggingLevel.INFO, "开始====从路由:" + routeid + ":" + cfrom);
//		RouteDefinition routeDefinition = from(routeString);
//	}

	
	
//	@Override
//	public void includeRoutes(RoutesBuilder routes) throws Exception {
//		super.includeRoutes(routes);
//	}

}