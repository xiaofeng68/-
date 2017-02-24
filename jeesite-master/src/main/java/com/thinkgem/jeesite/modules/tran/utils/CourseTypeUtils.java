package com.thinkgem.jeesite.modules.tran.utils;

import java.util.List;

import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.tran.dao.CourseTypeDao;
import com.thinkgem.jeesite.modules.tran.entity.CourseType;

/**
 * 课程类型获取工具类
 * @author ThinkGem
 * @version 2013-5-29
 */
public class CourseTypeUtils {
	
	private static CourseTypeDao courseTypeDao = SpringContextHolder.getBean(CourseTypeDao.class);

	public static final String CACHE_TRAIN_MAP = "courseTypeMap";
	
	@SuppressWarnings("unchecked")
    public static List<CourseType> getCourseTypes(String id){
	    List<CourseType> list = (List<CourseType>) CacheUtils.get(CACHE_TRAIN_MAP+":p:"+id);
	    if(list==null){
    	    CourseType courseType = new CourseType();
    	    CourseType parent = new CourseType();
    	    parent.setId(id);
    	    courseType.setParent(parent);
    		list = courseTypeDao.findList(courseType);
    		CacheUtils.put(CACHE_TRAIN_MAP+":p:"+id, list);
	    }
	    return list;
	}
    public static CourseType getCourseTypeById(String id){
        CourseType courseType = (CourseType) CacheUtils.get(CACHE_TRAIN_MAP+":"+id);
        if(courseType==null){
            courseType = courseTypeDao.get(id);
            CacheUtils.put(CACHE_TRAIN_MAP+":"+id, courseType);
        }
        return courseType;
    }
	public static void clearCache(CourseType courseType){
	    CacheUtils.remove(CACHE_TRAIN_MAP+":"+courseType.getId());
	    CacheUtils.remove(CACHE_TRAIN_MAP+":p:"+courseType.getParentId());
	}
}
