/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 课程管理Entity
 * @author 小风
 * @version 2017-02-24
 */
public class Course extends DataEntity<Course> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 课程名称
	private String discontent;		// 课程简介
	private String level;		// 课程类型：初级：1，中级：2，高级：3
	private String type;		// 免费：0，vip：1，认证：2
	private String contype;		// 内容类型：精讲：1，项目实战，2
	private String hots;		// 热点
	private String content;		// 核心内容
	private String bg;		// 课程背景
	private String envriment;		// 软件环境
	private String ziliao;		// 是否提供资料：1：是
	private String shrq;		// 适合人群
	
	public Course() {
		super();
	}

	public Course(String id){
		super(id);
	}

	@Length(min=1, max=200, message="课程名称长度必须介于 1 和 200 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=200, message="课程简介长度必须介于 0 和 200 之间")
	public String getDiscontent() {
		return discontent;
	}

	public void setDiscontent(String discontent) {
		this.discontent = discontent;
	}
	
	@Length(min=0, max=11, message="课程类型：初级：1，中级：2，高级：3长度必须介于 0 和 11 之间")
	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}
	
	@Length(min=0, max=11, message="免费：0，vip：1，认证：2长度必须介于 0 和 11 之间")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	@Length(min=0, max=100, message="内容类型：精讲：1，项目实战，2长度必须介于 0 和 100 之间")
	public String getContype() {
		return contype;
	}

	public void setContype(String contype) {
		this.contype = contype;
	}
	
	@Length(min=0, max=100, message="热点长度必须介于 0 和 100 之间")
	public String getHots() {
		return hots;
	}

	public void setHots(String hots) {
		this.hots = hots;
	}
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	@Length(min=0, max=200, message="课程背景长度必须介于 0 和 200 之间")
	public String getBg() {
		return bg;
	}

	public void setBg(String bg) {
		this.bg = bg;
	}
	
	@Length(min=0, max=100, message="软件环境长度必须介于 0 和 100 之间")
	public String getEnvriment() {
		return envriment;
	}

	public void setEnvriment(String envriment) {
		this.envriment = envriment;
	}
	
	@Length(min=0, max=11, message="是否提供资料：1：是长度必须介于 0 和 11 之间")
	public String getZiliao() {
		return ziliao;
	}

	public void setZiliao(String ziliao) {
		this.ziliao = ziliao;
	}
	
	@Length(min=0, max=100, message="适合人群长度必须介于 0 和 100 之间")
	public String getShrq() {
		return shrq;
	}

	public void setShrq(String shrq) {
		this.shrq = shrq;
	}
	
}