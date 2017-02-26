package com.thinkgem.jeesite.modules.tran.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.tran.entity.CourseVideo;

/**
 * 视频管理DAO接口
 * @author 小风
 * @version 2017-02-25
 */
@MyBatisDao
public interface CourseVideoDao extends CrudDao<CourseVideo> {
	
}