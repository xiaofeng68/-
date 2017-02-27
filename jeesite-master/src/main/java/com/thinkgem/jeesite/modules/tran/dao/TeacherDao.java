/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.dao;

import java.util.List;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.tran.entity.Teacher;

/**
 * 讲师管理DAO接口
 * @author 小风
 * @version 2017-02-24
 */
@MyBatisDao
public interface TeacherDao extends CrudDao<Teacher> {
	/**   
	 * @Title: findTeacherByCourse   
	 * @Description: 获取课程关联的讲师
	 * @param courseId
	 * @return
	 * @author  author
	 */
	 
	List<Teacher> findTeacherByCourse(String courseId);
}