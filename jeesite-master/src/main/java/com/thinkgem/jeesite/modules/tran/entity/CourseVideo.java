package com.thinkgem.jeesite.modules.tran.entity;

import org.hibernate.validator.constraints.Length;
import com.thinkgem.jeesite.modules.tran.entity.Course;
import com.thinkgem.jeesite.modules.tran.entity.Teacher;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 视频管理Entity
 * @author 小风
 * @version 2017-02-25
 */
public class CourseVideo extends DataEntity<CourseVideo> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 视频名称
	private String length;		// 课程时长
	private String discontent;		// 简介
	private String url;		// 视频路径
	private Course course;		// 课程
	private Teacher teacher;		// 主讲
	private String type;		// 视频分类
	private Integer sorts;
	
	public CourseVideo() {
		super();
	}

	public CourseVideo(String id){
		super(id);
	}

	@Length(min=0, max=200, message="视频名称长度必须介于 0 和 200 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=10, message="课程时长长度必须介于 0 和 10 之间")
	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}
	
	public String getDiscontent() {
		return discontent;
	}

	public void setDiscontent(String discontent) {
		this.discontent = discontent;
	}
	
	@Length(min=0, max=200, message="视频路径长度必须介于 0 和 200 之间")
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}
	
	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	
	@Length(min=0, max=20, message="视频分类长度必须介于 0 和 20 之间")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

    public Integer getSorts() {
        return sorts;
    }

    public void setSorts(Integer sorts) {
        this.sorts = sorts;
    }
	
}