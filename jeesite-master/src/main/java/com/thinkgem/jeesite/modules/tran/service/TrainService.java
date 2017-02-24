/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.tran.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.modules.tran.entity.Train;
import com.thinkgem.jeesite.modules.tran.utils.TrainUtils;
import com.thinkgem.jeesite.modules.tran.dao.TrainDao;

/**
 * 培训类型Service
 * @author 小风
 * @version 2017-02-23
 */
@Service
@Transactional(readOnly = true)
public class TrainService extends CrudService<TrainDao, Train> {

	public Train get(String id) {
		return super.get(id);
	}
	
	public List<Train> findList(Train train) {
		return super.findList(train);
	}
	
	public Page<Train> findPage(Page<Train> page, Train train) {
		return super.findPage(page, train);
	}
	
	@Transactional(readOnly = false)
	public void save(Train train) {
		super.save(train);
		CacheUtils.remove(TrainUtils.CACHE_TRAIN_MAP+":"+train.getType());
	}
	
	@Transactional(readOnly = false)
	public void delete(Train train) {
		super.delete(train);
		CacheUtils.remove(TrainUtils.CACHE_TRAIN_MAP+":"+train.getType());
	}
	
}