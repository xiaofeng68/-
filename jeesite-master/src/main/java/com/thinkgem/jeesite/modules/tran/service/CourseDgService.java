/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.service.TreeService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.tran.entity.CourseDg;
import com.thinkgem.jeesite.modules.tran.dao.CourseDgDao;

/**
 * 课程大纲Service
 * @author 小风
 * @version 2017-02-25
 */
@Service
@Transactional(readOnly = true)
public class CourseDgService extends TreeService<CourseDgDao, CourseDg> {

	public CourseDg get(String id) {
		return super.get(id);
	}
	
	public List<CourseDg> findList(CourseDg courseDg) {
		if (StringUtils.isNotBlank(courseDg.getParentIds())){
			courseDg.setParentIds(","+courseDg.getParentIds()+",");
		}
		return super.findList(courseDg);
	}
	
	@Transactional(readOnly = false)
	public void save(CourseDg courseDg) {
		super.save(courseDg);
	}
	
	@Transactional(readOnly = false)
	public void delete(CourseDg courseDg) {
		super.delete(courseDg);
	}
	
}