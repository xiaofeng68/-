package com.thinkgem.jeesite.modules.tran.dao;

import com.thinkgem.jeesite.common.persistence.TreeDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.tran.entity.CourseDg;

/**
 * 课程大纲DAO接口
 * @author 小风
 * @version 2017-02-25
 */
@MyBatisDao
public interface CourseDgDao extends TreeDao<CourseDg> {
	
}