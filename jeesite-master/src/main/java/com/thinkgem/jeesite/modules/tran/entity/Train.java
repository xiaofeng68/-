/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 培训类型Entity
 * @author 小风
 * @version 2017-02-23
 */
public class Train extends DataEntity<Train> {
	
	private static final long serialVersionUID = 1L;
	private String code;		// 培训编号
	private String name;		// 培训名称
	private String img;		// 图片
	private String type;//状态
	private Integer sort;//顺序
	
	public Train() {
		super();
	}

	public Train(String id){
		super(id);
	}

	@Length(min=1, max=20, message="培训编号长度必须介于 1 和 20 之间")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	@Length(min=1, max=50, message="培训名称长度必须介于 1 和 50 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=100, message="图片长度必须介于 0 和 100 之间")
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }
	
}