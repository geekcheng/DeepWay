package com.deep.model;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.stereotype.Component;


//过程记录
@Component
public class ProcessRecord implements java.io.Serializable {
	private static final long serialVersionUID = -3685113654347867809L;
	
	@Id
	private String processrecordid;
	private String filename;// 状态
	private String filenameonly;
	private Date processtime;

	private String msg;
	
	private DeepRoute deepRoute;

	private String downloadpath;
	
	
	public ProcessRecord() {
		super();
	}


	public String getProcessrecordid() {
		return processrecordid;
	}


	public void setProcessrecordid(String processrecordid) {
		this.processrecordid = processrecordid;
	}


	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}


	public String getFilenameonly() {
		return filenameonly;
	}


	public void setFilenameonly(String filenameonly) {
		this.filenameonly = filenameonly;
	}


	public Date getProcesstime() {
		return processtime;
	}


	public void setProcesstime(Date processtime) {
		this.processtime = processtime;
	}


	public String getMsg() {
		return msg;
	}


	public void setMsg(String msg) {
		this.msg = msg;
	}


	public DeepRoute getDeepRoute() {
		return deepRoute;
	}


	public void setDeepRoute(DeepRoute deepRoute) {
		this.deepRoute = deepRoute;
	}


	public String getDownloadpath() {
		return downloadpath;
	}


	public void setDownloadpath(String downloadpath) {
		this.downloadpath = downloadpath;
	}

}