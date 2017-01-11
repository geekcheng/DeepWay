package com.deep.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.stereotype.Component;

/**
 * 专家
 * @author lwh
 *
 */
@Component
@Document(collection = "suggest")
public class Suggest implements java.io.Serializable {
	private static final long serialVersionUID = -3685898416732325209L;

	// Fields
	@Id
	private String suggestid;//项目id
//	落实全面从严治党责任方面
//	政治纪律和政治规矩方面
//	作风方面
//	担当作为方面
//	组织生活方面
//	理想信念方面
//	其他方面的意见建议

	private String name;//评议的谁;钱总，朱书记，纪总，李总，领导班子
	private String suggest1;//落实全面从严治党责任方面
	private String suggest2;//政治纪律和政治规矩方面
	private String suggest3;//作风方面
	private String suggest4;//担当作为方面
	private String suggest5;//组织生活方面
	private String suggest6;//理想信念方面
	private String suggest7;//其他方面的意见建议
	public Suggest() {
		super();
	}
	public String getSuggestid() {
		return suggestid;
	}
	public void setSuggestid(String suggestid) {
		this.suggestid = suggestid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSuggest1() {
		return suggest1;
	}
	public void setSuggest1(String suggest1) {
		this.suggest1 = suggest1;
	}
	public String getSuggest2() {
		return suggest2;
	}
	public void setSuggest2(String suggest2) {
		this.suggest2 = suggest2;
	}
	public String getSuggest3() {
		return suggest3;
	}
	public void setSuggest3(String suggest3) {
		this.suggest3 = suggest3;
	}
	public String getSuggest4() {
		return suggest4;
	}
	public void setSuggest4(String suggest4) {
		this.suggest4 = suggest4;
	}
	public String getSuggest5() {
		return suggest5;
	}
	public void setSuggest5(String suggest5) {
		this.suggest5 = suggest5;
	}
	public String getSuggest6() {
		return suggest6;
	}
	public void setSuggest6(String suggest6) {
		this.suggest6 = suggest6;
	}
	public String getSuggest7() {
		return suggest7;
	}
	public void setSuggest7(String suggest7) {
		this.suggest7 = suggest7;
	}

}