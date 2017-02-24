/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.entity;

import org.hibernate.validator.constraints.Length;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 讲师管理Entity
 * @author 小风
 * @version 2017-02-24
 */
public class Teacher extends DataEntity<Teacher> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 老师姓名
	private String code;		// 老师账号
	private String content;		// 简历
	private String img;		// 头像
	private String state;		// 状态
	private Integer sort;		// 排序
	
	public Teacher() {
		super();
	}

	public Teacher(String id){
		super(id);
	}

	@Length(min=1, max=20, message="老师姓名长度必须介于 1 和 20 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=1, max=20, message="老师账号长度必须介于 1 和 20 之间")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	@Length(min=0, max=100, message="头像长度必须介于 0 和 100 之间")
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	@Length(min=0, max=11, message="状态长度必须介于 0 和 11 之间")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	@NotNull(message="排序不能为空")
	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
}