/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.service;

import java.util.List;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.tran.dao.CourseDao;
import com.thinkgem.jeesite.modules.tran.dao.CourseTypeDao;
import com.thinkgem.jeesite.modules.tran.entity.Course;
import com.thinkgem.jeesite.modules.tran.entity.CourseType;
import com.thinkgem.jeesite.modules.tran.utils.CourseUtils;

/**
 * 课程管理Service
 * @author 小风
 * @version 2017-02-24
 */
@Service
@Transactional(readOnly = true)
public class CourseService extends CrudService<CourseDao, Course> {

	@Autowired
	private CourseTypeDao courseTypeDao;
	public Course get(String id) {
		Course course = super.get(id);
		return course;
	}
	
	public List<Course> findList(Course course) {
		return super.findList(course);
	}
	
	public Page<Course> findPage(Page<Course> page, Course course) {
		if(course!=null && course.getCourseType()!=null){
			CourseType type = courseTypeDao.get(course.getCourseType().getId());
			if(type!=null){
				StringBuffer sb = new StringBuffer(type.getId());
				type.setParentIds(type.getParentIds()+type.getId());
				List<CourseType> list = courseTypeDao.findByParentIdsLike(type);
				for(CourseType ctype : list){
					sb.append(","+ctype.getId());
				}
				course.getCourseType().setParentIds(sb.toString());
			}
		}
		return super.findPage(page, course);
	}
	
	@Transactional(readOnly = false)
	public void save(Course course) {
	    if (course.getDes()!=null){
	        course.setDes(StringEscapeUtils.unescapeHtml4(
	                course.getDes()));
        }
		super.save(course);
		CourseUtils.clearCache(course);
	}
	
	@Transactional(readOnly = false)
	public void delete(Course course) {
		super.delete(course);
	}
	
}