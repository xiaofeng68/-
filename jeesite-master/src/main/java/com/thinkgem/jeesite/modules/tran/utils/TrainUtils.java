package com.thinkgem.jeesite.modules.tran.utils;

import java.util.List;

import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.tran.dao.TrainDao;
import com.thinkgem.jeesite.modules.tran.entity.Train;

/**
 * 培训获取工具类
 * @author ThinkGem
 * @version 2013-5-29
 */
public class TrainUtils {
	
	private static TrainDao trainDao = SpringContextHolder.getBean(TrainDao.class);

	public static final String CACHE_TRAIN_MAP = "trainMap";
	
	@SuppressWarnings("unchecked")
    public static List<Train> getTrains(String type){
	    List<Train> list = (List<Train>) CacheUtils.get(CACHE_TRAIN_MAP+":"+type);
	    if(list==null){
    	    Train train = new Train();
    	    train.setType(type);
    		list = trainDao.findList(train);
    		CacheUtils.put(CACHE_TRAIN_MAP+":"+type, list);
	    }
	    return list;
	}
	
}
