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
	private Teacher teacher;		// 主讲老师
	private String des;		// 详情
	private String price;		// 价格
	private String nprice;		// 优惠价格
	private String vipprice;		// VIP价格
	private String timelength;		// 时长
	private String days;		// 有效期
	private String students;		// 学习人数
	private CourseType courseType;// 课程类型
	private Integer sort;//排序
	private String img;//封面
	
	public Course() {
		super();
	}

	public Course(String id){
		super(id);
	}

	@Length(min=0, max=200, message="课程名称长度必须介于 0 和 200 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}
	
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	public String getNprice() {
		return nprice;
	}

	public void setNprice(String nprice) {
		this.nprice = nprice;
	}
	
	public String getVipprice() {
		return vipprice;
	}

	public void setVipprice(String vipprice) {
		this.vipprice = vipprice;
	}
	
	@Length(min=0, max=11, message="时长长度必须介于 0 和 11 之间")
	public String getTimelength() {
		return timelength;
	}

	public void setTimelength(String timelength) {
		this.timelength = timelength;
	}
	
	@Length(min=0, max=11, message="有效期长度必须介于 0 和 11 之间")
	public String getDays() {
		return days;
	}

	public void setDays(String days) {
		this.days = days;
	}
	
	@Length(min=0, max=11, message="学习人数长度必须介于 0 和 11 之间")
	public String getStudents() {
		return students;
	}

	public void setStudents(String students) {
		this.students = students;
	}
	
    public CourseType getCourseType() {
        return courseType;
    }

    public void setCourseType(CourseType courseType) {
        this.courseType = courseType;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }
	
}