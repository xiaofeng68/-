/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.tran.entity.Train;

/**
 * 培训类型DAO接口
 * @author 小风
 * @version 2017-02-23
 */
@MyBatisDao
public interface TrainDao extends CrudDao<Train> {
	
}