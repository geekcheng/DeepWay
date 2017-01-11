package com.deep.process;

import java.util.Date;

import org.apache.camel.Exchange;
import org.apache.camel.Message;
import org.apache.camel.Processor;
import org.apache.camel.component.file.GenericFile;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.deep.model.DeepRoute;
import com.deep.model.ProcessRecord;
import com.deep.service.DeepRouteService;
import com.deep.service.ProcessRecordService;
/**
 * 默认的处理器
 * @author lwh
 *
 */
@Component("defaultProcess")
public class DefaultProcess implements Processor {
	protected Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	public ProcessRecordService processRecordService;
	@Autowired
	public DeepRouteService deepRouteService;

	public void process(Exchange exchange) throws Exception {
		String routeid = exchange.getFromRouteId();
		Message message = exchange.getIn();
//		InputStream fin = message.getBody(InputStream.class);
		GenericFile genericFile = message.getBody(GenericFile.class);
		log.info(String.format("RouteID %s ; FileName:%s ", routeid, genericFile.getAbsoluteFilePath()));
		ProcessRecord record = new ProcessRecord();
		record.setFilename(genericFile.getAbsoluteFilePath());
		record.setFilenameonly(genericFile.getFileNameOnly());
		record.setProcesstime(new Date());
		DeepRoute deeproute = deepRouteService.findById(routeid);
		record.setDeepRoute(deeproute);
//		try{
//			SnshCdf snshCdf = (SnshCdf) jaxb2Marshaller.unmarshal(new StreamSource(fin));//解析成功
//			sinoProcess.setMsg("success");
//		}
//		catch(Exception e){
//			sinoProcess.setMsg(e.getMessage());
//		}finally{
//			fin.close();
//		}
		processRecordService.save(record);
	}
}