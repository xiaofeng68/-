/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.service;

import java.util.List;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.tran.entity.Teacher;
import com.thinkgem.jeesite.modules.tran.utils.TeacherUtils;
import com.thinkgem.jeesite.modules.tran.dao.TeacherDao;

/**
 * 讲师管理Service
 * @author 小风
 * @version 2017-02-24
 */
@Service
@Transactional(readOnly = true)
public class TeacherService extends CrudService<TeacherDao, Teacher> {

	public Teacher get(String id) {
		return super.get(id);
	}
	
	public List<Teacher> findList(Teacher teacher) {
		return super.findList(teacher);
	}
	
	public Page<Teacher> findPage(Page<Teacher> page, Teacher teacher) {
		return super.findPage(page, teacher);
	}
	
	@Transactional(readOnly = false)
	public void save(Teacher teacher) {
	    if (teacher.getContent()!=null){
	        teacher.setContent(StringEscapeUtils.unescapeHtml4(
                    teacher.getContent()));
        }
		super.save(teacher);
		TeacherUtils.clearCache(teacher);
	}
	
	@Transactional(readOnly = false)
	public void delete(Teacher teacher) {
		super.delete(teacher);
	}
	
}