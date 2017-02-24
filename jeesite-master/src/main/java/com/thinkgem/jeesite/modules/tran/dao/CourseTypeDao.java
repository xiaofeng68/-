/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.dao;

import com.thinkgem.jeesite.common.persistence.TreeDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.tran.entity.CourseType;

/**
 * 课程类型管理DAO接口
 * @author 小风
 * @version 2017-02-24
 */
@MyBatisDao
public interface CourseTypeDao extends TreeDao<CourseType> {
	
}