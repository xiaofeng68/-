package com.thinkgem.jeesite.modules.tran.entity;

import org.hibernate.validator.constraints.Length;
import com.thinkgem.jeesite.modules.tran.entity.Teacher;
import com.thinkgem.jeesite.modules.tran.entity.CourseVideo;
import com.fasterxml.jackson.annotation.JsonBackReference;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.TreeEntity;

/**
 * 课程大纲Entity
 * @author 小风
 * @version 2017-02-25
 */
public class CourseDg extends TreeEntity<CourseDg> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 大纲名称
	private String des;		// 大纲详情
	private String contype;		// 大纲类别
	private Integer sort;		// 排序
	private Teacher teacher;		// 主讲
	private CourseVideo video;		// 视频
	private String timelength;		// 时长
	private CourseDg parent;		// 父级编号
	private String parentIds;		// 所有父级编号
	private String code;		// 编号
	private String level;//大纲分类：
	public CourseDg() {
		super();
	}

	public CourseDg(String id){
		super(id);
	}

	@Length(min=0, max=100, message="大纲名称长度必须介于 0 和 100 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=255, message="大纲详情长度必须介于 0 和 255 之间")
	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}
	
	@Length(min=0, max=11, message="大纲类别长度必须介于 0 和 11 之间")
	public String getContype() {
		return contype;
	}

	public void setContype(String contype) {
		this.contype = contype;
	}
	
	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	
	public CourseVideo getVideo() {
		return video;
	}

	public void setVideo(CourseVideo video) {
		this.video = video;
	}
	
	@Length(min=0, max=11, message="时长长度必须介于 0 和 11 之间")
	public String getTimelength() {
		return timelength;
	}

	public void setTimelength(String timelength) {
		this.timelength = timelength;
	}
	
	@JsonBackReference
	@NotNull(message="父级编号不能为空")
	public CourseDg getParent() {
		return parent;
	}

	public void setParent(CourseDg parent) {
		this.parent = parent;
	}
	
	@Length(min=1, max=2000, message="所有父级编号长度必须介于 1 和 2000 之间")
	public String getParentIds() {
		return parentIds;
	}

	public void setParentIds(String parentIds) {
		this.parentIds = parentIds;
	}
	
	@Length(min=0, max=20, message="编号长度必须介于 0 和 20 之间")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	public String getParentId() {
		return parent != null && parent.getId() != null ? parent.getId() : "0";
	}

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }
}