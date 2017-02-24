/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.service;

import java.util.List;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.service.TreeService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.tran.dao.CourseTypeDao;
import com.thinkgem.jeesite.modules.tran.entity.CourseType;
import com.thinkgem.jeesite.modules.tran.utils.CourseTypeUtils;

/**
 * 课程类型管理Service
 * @author 小风
 * @version 2017-02-24
 */
@Service
@Transactional(readOnly = true)
public class CourseTypeService extends TreeService<CourseTypeDao, CourseType> {

	public CourseType get(String id) {
		return super.get(id);
	}
	
	public List<CourseType> findList(CourseType courseType) {
		if (StringUtils.isNotBlank(courseType.getParentIds())){
			courseType.setParentIds(","+courseType.getParentIds()+",");
		}
		return super.findList(courseType);
	}
	
	@Transactional(readOnly = false)
	public void save(CourseType courseType) {
	    if (courseType.getQuestions()!=null){
	        courseType.setQuestions(StringEscapeUtils.unescapeHtml4(
	                courseType.getQuestions()));
        }
		super.save(courseType);
		CourseTypeUtils.clearCache(courseType);
	}
	
	@Transactional(readOnly = false)
	public void delete(CourseType courseType) {
		super.delete(courseType);
		CourseTypeUtils.clearCache(courseType);
	}
	
}