package com.thinkgem.jeesite.modules.tran.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.tran.entity.Student;

/**
 * 学员信息DAO接口
 * @author 小风
 * @version 2017-03-04
 */
@MyBatisDao
public interface StudentDao extends CrudDao<Student> {
	int hasPhone(String phone);
	Student getByPhone(String phone);
}