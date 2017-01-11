package com.deep.service;

import java.net.URI;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.URIEditor;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.deep.model.ProcessRecord;

/**
 * 默认处理器
 * @author laolu
 *
 */
@Repository
@Service("processRecordService")
//@Scope("prototype")
public class ProcessRecordService  {
	@Autowired
	private MongoTemplate mongoTemplate;
	
//	@Autowired
//	private FreeMarkerConfigurer freeMarkerConfigurer;
	public void save(ProcessRecord processRecord) {
		if(org.apache.commons.lang.StringUtils.isBlank( processRecord.getProcessrecordid() )  ){
			processRecord.setProcessrecordid(null);
		}
		Date processtime = processRecord.getProcesstime();
		String yearstr = DateFormatUtils.format(processtime, "yyyy");
		String monthdaystr = DateFormatUtils.format(processtime, "yyyyMMdd");
		URIEditor ed = new URIEditor();
		ed.setAsText(processRecord.getDeepRoute().getBackpath());
		URI uri = (URI)ed.getValue();
		String s = uri.getHost()+":"+uri.getPath()+yearstr+"/"+monthdaystr+"/"+processRecord.getFilenameonly();
		processRecord.setDownloadpath(s);
		
		mongoTemplate.save(processRecord,"processRecord");//保存
	}

	public List<ProcessRecord> findAll() {
		List<ProcessRecord> routes = mongoTemplate.findAll(ProcessRecord.class);
		return routes;
	}

}
